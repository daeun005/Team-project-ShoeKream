package com.itwill.shop.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class ProductDao {
	private DataSource dataSource;
	public ProductDao() throws Exception{
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("/jdbc.properties"));
		/*** Apache DataSource ***/
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("username"));
		basicDataSource.setPassword(properties.getProperty("password"));
		dataSource = basicDataSource;
	}
	/*
	 * selelctByPK : 상품번호로 검색
	 */
	public Product findByProductNo(int p_no) throws Exception{
		Product product=null;
		Connection con=dataSource.getConnection();
		PreparedStatement pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_BY_PRODUCT_NO);
		pstmt.setInt(1, p_no);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()) {
			product=
					new Product(
							rs.getInt("p_no"),
							rs.getString("p_name"), 
							rs.getInt("p_price"), 
							rs.getString("p_image"), 
							rs.getString("p_desc"), 
							rs.getInt("p_click_count"),
							rs.getInt("category_no"));
		}
		return product;
	}
	public List<Product> findAll() {
		return null;
	}
	
	public Product findByPrimaryKey(int p_no) {
		return null;
	}

}
