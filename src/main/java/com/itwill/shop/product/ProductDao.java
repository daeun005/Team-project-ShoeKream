package com.itwill.shop.product;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.itwill.shop.common.DataSourceFactory;



public class ProductDao {
	private DataSource dataSource;
	public ProductDao() throws Exception {
		dataSource=DataSourceFactory.getDataSource();
	}
	/*
	 * 카테고리별 상품 검색
	 */
	public List<Product> selectByCategory(int category_no) throws Exception {
		List<Product> productList=new ArrayList<Product>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_BY_CATEGORY);
			pstmt.setInt(1, category_no);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Product product = new Product(rs.getInt("p_no"), rs.getString("p_name"), rs.getInt("p_price"), 
						  			rs.getString("p_image"), rs.getString("p_desc"), 
						  			rs.getInt("p_click_count"), rs.getInt("category_no"));
				productList.add(product);
			}
		}finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return productList;
	}
	/*
	 * 상품추가
	 */
	public int insert(Product product) throws Exception {
		Connection con = null;
		PreparedStatement pstmt =null;
		int rowCount=0;
		try {
			con=dataSource.getConnection();
			pstmt= con.prepareStatement(ProductSQL.PRODUCT_INSERT);
			pstmt.setInt(1, product.getP_no());
			pstmt.setString(2, product.getP_name());
			pstmt.setInt(3, product.getP_price());
			pstmt.setString(4, product.getP_image());
			pstmt.setString(5, product.getP_desc());
			pstmt.setInt(6, product.getP_click_count());
			pstmt.setInt(7, product.getCategory_no());
			rowCount = pstmt.executeUpdate();
		}finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		
		return rowCount;
	}
	/*
	 * 상품 update
	 */
	public int update(Product product) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rowCount=0;
		try {
			con=dataSource.getConnection();
			pstmt= con.prepareStatement(ProductSQL.PRODUCT_UPDATE);
			pstmt.setString(1, product.getP_name());
			pstmt.setInt(2, product.getP_price());
			pstmt.setString(3, product.getP_image());
			pstmt.setString(4, product.getP_desc());
			pstmt.setInt(5, product.getP_click_count());
			pstmt.setInt(6, product.getCategory_no());
			pstmt.setInt(7,product.getP_no());
			rowCount = pstmt.executeUpdate();
		}finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		
		return rowCount;
	}
	/*
	 * 상품이름으로삭제
	 */
	public int delete(String p_name )throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		int rowCount=0;
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(ProductSQL.PRODUCT_DELETE);
			pstmt.setString(1, p_name);
			rowCount = pstmt.executeUpdate();
		}finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return rowCount;
	}
	/*
	 * 상품번호검색
	 */
	public Product selectByNo(int p_no) throws Exception{
		Product product=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_BY_NO);
			pstmt.setInt(1, p_no);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				product = new Product(rs.getInt("p_no"),
									  rs.getString("p_name"),
									  rs.getInt("P_price"),
									  rs.getString("p_image"),
									  rs.getString("p_desc"),
									  rs.getInt("p_click_count"),
									  rs.getInt("category_no"));
			}
		}finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return product;
	}
	/*
	 * 상품전체검색
	 */
	public List<Product> selectAll() throws Exception{
		List<Product> productList=new ArrayList<Product>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_ALL);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Product product = new Product(
						  rs.getInt("p_no"),
						  rs.getString("p_name"),
						  rs.getInt("p_price"),
						  rs.getString("p_image"),
						  rs.getString("p_desc"),
						  rs.getInt("p_click_count"),
						  rs.getInt("category_no"));
				productList.add(product);
			}
		}finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return productList;
	}
	/************************************************************/
	/*
	 * 상품 이름으로 검색 출력 하기.
	 */
	
	public List <Product> productFindByName(String p_name) throws Exception {

		List <Product> productList = new ArrayList<>();
		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(ProductSQL.PRODUCT_BY_NAME);
		pstmt.setString(1, p_name);
		ResultSet rs = pstmt.executeQuery();

		if(rs.next()) {
			do {
				Product product = new Product(
						  rs.getInt("p_no"),
						  rs.getString("p_name"),
						  rs.getInt("p_price"),
						  rs.getString("p_image"),
						  rs.getString("p_desc"),
						  rs.getInt("p_click_count"),
						  rs.getInt("category_no"));

				productList.add(product);

			} while(rs.next());
		}
		return productList;
	}
	
	
	/************************************************************/
	
	/*
	 * 상품 조회수 증가
	 */
	public void increaseClickCount(int number) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
	
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(ProductSQL.PRODUCT_INCREASE_CLICK_COUNT);
			pstmt.setInt(1, number);
			pstmt.executeUpdate();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (Exception ex) {
			}
			try {
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}
		}
	}
	
	//조회수 1순위
		public List<Product> selectPopular1() throws Exception{
			List<Product> productList=new ArrayList<Product>();
			
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
				con=dataSource.getConnection();
				pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_POPULAR_1);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Product product = new Product(
							  rs.getInt("p_no"),
							  rs.getString("p_name"),
							  rs.getInt("p_price"),
							  rs.getString("p_image"),
							  rs.getString("p_desc"),
							  rs.getInt("p_click_count"),
							  rs.getInt("category_no"));
					productList.add(product);
				}
			}finally {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			}
			return productList;
		}
		
		//조회수 2순위
		public List<Product> selectPopular2() throws Exception{
			List<Product> productList=new ArrayList<Product>();
			
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
				con=dataSource.getConnection();
				pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_POPULAR_2);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Product product = new Product(
							rs.getInt("p_no"),
							rs.getString("p_name"),
							rs.getInt("p_price"),
							rs.getString("p_image"),
							rs.getString("p_desc"),
							rs.getInt("p_click_count"),
							rs.getInt("category_no"));
					productList.add(product);
				}
			}finally {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			}
			return productList;
		}
		
		//조회수 3순위
		public List<Product> selectPopular3() throws Exception{
			List<Product> productList=new ArrayList<Product>();
			
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
				con=dataSource.getConnection();
				pstmt=con.prepareStatement(ProductSQL.PRODUCT_SELECT_POPULAR_3);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Product product = new Product(
							rs.getInt("p_no"),
							rs.getString("p_name"),
							rs.getInt("p_price"),
							rs.getString("p_image"),
							rs.getString("p_desc"),
							rs.getInt("p_click_count"),
							rs.getInt("category_no"));
					productList.add(product);
				}
			}finally {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			}
			return productList;
		}
	
}
