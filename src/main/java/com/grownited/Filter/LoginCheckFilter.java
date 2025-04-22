package com.grownited.Filter;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.grownited.entity.UserEntity;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter{

	ArrayList<String> publicURL = new ArrayList<>();
	
	public LoginCheckFilter() {
		publicURL.add("/login");
		publicURL.add("/forgetPassword");
		publicURL.add("/saveuser");
		publicURL.add("/authenticate");
		publicURL.add("/sendOTP");
		publicURL.add("/updatepassword");
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req=(HttpServletRequest) request;
		
		String url=req.getRequestURL().toString();
		String uri=req.getRequestURI();
		
		System.out.println("Filter Call...");
		System.out.println(uri);
		
		
		
		
		if(publicURL.contains(uri) || uri.contains("/assets") || uri.contains("/dist") || uri.contains(".css") || uri.contains(".js")) {
			chain.doFilter(request, response);//go ahead
		}else {
			HttpSession session= req.getSession();
			UserEntity user=(UserEntity) session.getAttribute("user");
			
			if(user==null) {
				req.getRequestDispatcher("login").forward(request, response);// login page par redirect
			}else {
				chain.doFilter(request, response);//login hoy t api devanu 
			}
		}
	}
}
