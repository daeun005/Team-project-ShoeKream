package com.itwill.shop.product;

public class ProductSQL {
	public final static String PRODUCT_INSERT = "insert into product values(?,?,?,?,?,?,?)";
	public final static String PRODUCT_UPDATE = "update product set p_name=?,p_price=?,p_image=?,p_desc=?,P_click_count=?,category_no=?where p_no =?";
	public final static String PRODUCT_DELETE = "delete from product where p_name = ?";
	public final static String PRODUCT_SELECT_BY_NO = "select * from product where p_no = ?";
	public final static String PRODUCT_SELECT_ALL = "select * from product";
	public final static String PRODUCT_SELECT_BY_CATEGORY = "select * from product where category_no=?";
	
	//상품이름으로 검색해서 결과 값 받기
	public static final String PRODUCT_BY_NAME = "select*from product where p_name like '%'||?||'%'";

	//조회수 증가
	public static final String PRODUCT_INCREASE_CLICK_COUNT = "update product set p_click_count = p_click_count + 1 where p_no = ?";
	
	//조회수 순위대로 출력
	public static final String PRODUCT_SELECT_POPULAR_1 = 
			"select * from product where p_click_count = "
			+ "(select MAX(p_click_count) from (SELECT ROWNUM AS RN, p_click_count FROM (SELECT p_click_count FROM product ORDER BY p_click_count DESC)) WHERE RN = 1)";
	public static final String PRODUCT_SELECT_POPULAR_2 = 
			"select * from product where p_click_count = "
					+ "(select MAX(p_click_count) from (SELECT ROWNUM AS RN, p_click_count FROM (SELECT p_click_count FROM product ORDER BY p_click_count DESC)) WHERE RN = 2)";
	public static final String PRODUCT_SELECT_POPULAR_3 = 
			"select * from product where p_click_count = "
					+ "(select MAX(p_click_count) from (SELECT ROWNUM AS RN, p_click_count FROM (SELECT p_click_count FROM product ORDER BY p_click_count DESC)) WHERE RN = 3)";
	
	public static final String PRODUCT_DESC_PRICE = "select * from product order by p_price desc";
	public static final String PRODUCT_ASC_PRICE = "select * from product order by p_price asc";
	public static final String PRODUCT_DESC_CLICK = "select * from product order by p_click_count desc";
	public static final String PRODUCT_ASC_CLICK = "select * from product order by p_click_count asc";
}
