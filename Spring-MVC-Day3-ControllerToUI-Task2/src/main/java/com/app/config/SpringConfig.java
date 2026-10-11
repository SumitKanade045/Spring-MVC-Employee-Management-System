package com.app.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.app")
public class SpringConfig {
	
	
	@Bean
	public InternalResourceViewResolver irv() {
		
		InternalResourceViewResolver ir = new InternalResourceViewResolver();
		
		ir.setPrefix("/WEBPAGES/");
		ir.setSuffix(".jsp");
		
		return ir;
	}

}
