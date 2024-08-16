package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import javax.naming.ldap.spi.LdapDnsProvider;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		LoginDao dao = new LoginDao();
		
		if (dao.check(uname, pass))
	 //	if (uname.equals("manju") && pass.equals("manju@123"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("password",pass);
			response.sendRedirect("welcome.jsp");
		}else{
			out.print("username or password incorrect!!!");
			response.sendRedirect("login.jsp");
			
		}
	}



}
