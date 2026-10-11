package com.app.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.hibernate.HibernateTransactionManager;
import org.springframework.orm.jpa.hibernate.LocalSessionFactoryBean;


@Configuration
public class HibernateConfig {

	//1.DATABASE CONNECTION
	
	@Bean
	public DataSource datasource() {
		
		DriverManagerDataSource ds = new DriverManagerDataSource();
		
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		
		ds.setUrl("jdbc:mysql://localhost:3308/employee_db");
		
		ds.setUsername("root");
		
		ds.setPassword("root");
		
		return ds;
	}
	
	//2.SESSION FACTORY
	
	@Bean
	public LocalSessionFactoryBean sessionFactory(DataSource dataSource) {
		
		LocalSessionFactoryBean factory = new LocalSessionFactoryBean();
		
		factory.setDataSource(dataSource);
		
		factory.setPackagesToScan("com.app.model");
		
		Properties p = new Properties();
		
		p.put("hibernate.hbm2ddl.auto", "update");
		
		p.put("hibernate.show_sql", "true");
		
		p.put("hibernate.format_sql", "true");
		
		factory.setHibernateProperties(p);
		
		return factory;
		
	}
	
	
	//3.TRANSACTION MANAGER
	
	@Bean
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		
		
		return new HibernateTransactionManager(sessionFactory);
	}
}
