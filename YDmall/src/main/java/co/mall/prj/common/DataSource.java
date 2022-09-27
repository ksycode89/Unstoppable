package co.mall.prj.common;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DataSource {
	private static SqlSessionFactory sqlSessionFactory;

	private DataSource() {
	};

	public static SqlSessionFactory getInstance() {
		System.out.println("Data1");
		String resources = "config/mybatis-config.xml";
		InputStream inputStream;
		try {
			System.out.println("Data2");
			inputStream = Resources.getResourceAsStream(resources);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("Data3");
		return sqlSessionFactory;
	}
}
