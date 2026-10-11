package com.app.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration.Dynamic;

public class WebApplication implements WebApplicationInitializer{

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {


		AnnotationConfigWebApplicationContext ap = new AnnotationConfigWebApplicationContext();
		
		ap.register(SpringConfig.class);
		
		DispatcherServlet ds = new DispatcherServlet(ap);
		
		Dynamic servlet = servletContext.addServlet("ds", ds);
		
		servlet.addMapping("/");
		
		servlet.setLoadOnStartup(1);
		
	}

}
