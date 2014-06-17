package com.chinaops.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.chinaops.DBUtil.DBTools;
import com.chinaops.entity.Arcticle;
import com.chinaops.entity.User;

public class ArticleDao {
	private Arcticle arcticle;
	private User user;
	public Arcticle getArcticle() {
		return arcticle;
	}
	public void setArcticle(Arcticle arcticle) {
		this.arcticle = arcticle;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public List<Arcticle> getArcticleList(int curentPage, int pageSize){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			List<Arcticle> arcList = new ArrayList<Arcticle>();
			conn = DBTools.getConnection();
			if(!conn.isClosed()){
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select id,is_free,arc_title,arc_content,publish_time from arcticle order by publish_time desc limit "+(curentPage-1)*pageSize+","+pageSize);
				if(rs != null){
					while(rs.next()){
						Arcticle arc = new Arcticle();
						arc.setId(rs.getInt("id"));
						arc.setIs_free(Integer.parseInt(rs.getString("is_free")));
						arc.setArc_title(rs.getString("arc_title"));
						String content = rs.getString("arc_content");
						String arc_content = content.substring(0,content.indexOf("</p>")+4);
						arc.setArc_content(arc_content);
						arc.setPublish_time(rs.getDate("publish_time").toString());
						arcList.add(arc);
					}
				}
			}
			if(arcList != null && arcList.size()>0){
				return arcList;
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
		return null;
	}
	
	public static int getTotalRecords(String tablename){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		int num = 0;
		try {
			conn = DBTools.getConnection();
			if(!conn.isClosed()){
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select count(*) as sum from "+tablename);
				if(rs != null && rs.next()){
					num = rs.getInt("sum");				
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
		return num;
	}
	
	public Arcticle getArticle(int id){
		Arcticle arcticle = new Arcticle();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBTools.getConnection();
			if(!conn.isClosed()){
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select id,is_free,arc_title,arc_content,publish_time from arcticle where id="+id);
				while (rs.next()) {
					arcticle.setId(rs.getInt("id"));
					arcticle.setArc_title(rs.getString("arc_title"));
					arcticle.setArc_content(rs.getString("arc_content"));					
					arcticle.setPublish_time(rs.getString("publish_time").toString().substring(0,rs.getString("publish_time").lastIndexOf(".")));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
		return arcticle;
	}
	
	public Arcticle getArcticleById(int id){
		Arcticle arcticle = new Arcticle();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBTools.getConnection();
			if(!conn.isClosed()){
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select id,is_free,arc_title,arc_content,publish_time from arcticle where id="+id);
				while (rs.next()) {
					arcticle.setId(rs.getInt("id"));
					arcticle.setIs_free(rs.getInt("is_free"));
					arcticle.setArc_title(rs.getString("arc_title"));
					arcticle.setArc_content(rs.getString("arc_content"));					
					arcticle.setPublish_time(rs.getString("publish_time").toString().substring(0,rs.getString("publish_time").lastIndexOf(".")));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
		return arcticle;
	}
	
	public static void main(String[] args){
		ArticleDao d = new ArticleDao();
		System.out.println(d.getTotalRecords("arcticle"));
		System.out.println(d.getArticle(2).getArc_content());
	}
}
