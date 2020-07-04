package com.alexpower.util;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {

	private static SqlSessionFactory sessionFactory;
	
	static {
		
		Reader reader;
		try {
			// to read the configuration file
			reader = Resources.getResourceAsReader("resources/mybatis-config.xml");
			sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	// return the session factory
	public static SqlSessionFactory getSqlSessionFactory() {
		return sessionFactory;
	}
}
