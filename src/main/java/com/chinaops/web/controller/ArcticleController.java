/*
 * $Id$
 * 
 * All Rights Reserved 2012 China OPS Information Technology Co.,Ltd.
 */
package com.chinaops.web.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinaops.DBUtil.DBTools;
import com.chinaops.dao.ArticleDao;
import com.chinaops.entity.Arcticle;
import com.chinaops.entity.User;

/**
 * 
 * @author Harley Ren
 */

@Controller
public class ArcticleController {

	public ArticleDao articleDao;
	
	
	@RequestMapping("/arcticle/list.htm")
	public String getArcticleList() {
		return "list";
	}
	
	@RequestMapping("/arcticle/arcticleList.json")
	public @ResponseBody List<Arcticle> getArcticleLists(@RequestParam int curentPage,@RequestParam int pageSize) {
		return articleDao.getArcticleList(curentPage, pageSize);
	}
	
	@RequestMapping("/arcticle/arc_login.htm")
	public String login() {
		return "arc_login";
	}
	
	@RequestMapping("/arcticle/arc_layout.htm")
	public String layout(HttpServletRequest request,HttpServletResponse response) {
		request.getSession().removeAttribute("user");
		return "list";
	}
	
	@RequestMapping("/arcticle/arc_checkCode.json")
	public @ResponseBody boolean checkCode(@RequestParam String j_captcha, HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		String validateCode = (String)session.getAttribute("validate_code");
		if(validateCode.equalsIgnoreCase(j_captcha)){
			return true;
		}else{
			return false;
		}
	}
	
	@RequestMapping("/arcticle/arc_login.json")
	public @ResponseBody User auth_login(@RequestParam String username,@RequestParam String password, HttpServletRequest request,HttpServletResponse response) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		User user = null;
		HttpSession session = request.getSession();
		try {
			conn = DBTools.getConnection();
			if(!conn.isClosed()){
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select * from user where username='"+username+"'and password='"+password+"'");
				if(rs != null && rs.next()){
					user = new User();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
				}
			}
		}catch(Exception e){
			e.getStackTrace();
		}finally{
			try {
				if(rs != null){
					rs.close();
					rs = null;
				}
				if(stmt != null){
					stmt.close();
					stmt = null;
				}
				if(conn != null){
					conn.close();
					conn = null;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(user != null && user.getId() != 0 ){
			session.setAttribute("user",user);
			return user;
		}
        return new User();
	}
	
	@RequestMapping("/arcticle/arcticle.htm")
	public String showArcticle(@RequestParam int id,HttpServletRequest request,HttpServletResponse response) {
		User user = (User)request.getSession().getAttribute("user");
		Arcticle arc = this.articleDao.getArcticleById(id);
		
		if(arc.getIs_free() !=1 || user != null){
			return "arcticle";
		}else{
			return "list";
		}
	}
	
	@RequestMapping("/arcticle/arcticle.json")
	public @ResponseBody Arcticle viewArcticle(@RequestParam int id) {
			return articleDao.getArticle(id);
		
	}
	
	@Autowired
	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}
}
