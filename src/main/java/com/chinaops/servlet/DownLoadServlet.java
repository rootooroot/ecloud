/**
 * 
 */
package com.chinaops.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * @author 张立强
 * @Email liqiang.zhang@china-ops.com 2014年11月6日 下午5:42:40
 */
public class DownLoadServlet extends HttpServlet {

	/**
	 * serialVersionUID long 2014年11月6日下午5:42:48
	 */
	private static final long serialVersionUID = -4122962553206262095L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		BufferedInputStream bis = null;
//		BufferedOutputStream bos = null;
//		try {
//			String filename = request.getParameter("filename");
//			filename = new String(filename.getBytes("ISO-8859-1"), "UTF-8");
//			response.setContentType("application/x-msdownload");
//			response.setHeader("Content-disposition", "attachment; filename=" + filename);//new String(filename.getBytes("utf8"), "iso8859-1"));
//			bis = new BufferedInputStream(new FileInputStream(request.getSession().getServletContext().getRealPath("/")+"docs/"+filename));
//			bos = new BufferedOutputStream(response.getOutputStream());
//			byte[] buff = new byte[2048];
//			int bytesRead;
//			while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
//				bos.write(buff, 0, bytesRead);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			if (bos != null) bos.close();
//			if (bis != null) bis.close();
//		}
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName = request.getParameter("filename");
		fileName = new String(fileName.getBytes("ISO-8859-1"),"UTF-8");
        File file = new File(request.getSession().getServletContext().getRealPath("/") + "docs/" + fileName);
//        response.reset();
        response.setContentType("application/octet-stream; charset=UTF-8");
        response.addHeader("Content-Disposition", "attachment; filename=" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1"));
        response.setContentLength((int) file.length());

        byte[] buffer = new byte[4096];
        BufferedOutputStream output = null;
        BufferedInputStream input = null;

        // 写缓冲区：
        try {
            output = new BufferedOutputStream(response.getOutputStream());
            input = new BufferedInputStream(new FileInputStream(file));

            int n = (-1);
            while ((n = input.read(buffer, 0, 4096)) > -1) {
                output.write(buffer, 0, n);
            }
            response.flushBuffer();
        }
        catch (Exception e) {
        	e.getStackTrace();
        } // maybe user cancelled download
        finally {
        	if (output != null) output.close();
            if (input != null) input.close();
        }
	}

}
