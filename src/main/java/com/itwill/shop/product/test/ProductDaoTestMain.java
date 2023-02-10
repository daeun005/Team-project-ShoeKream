package com.itwill.shop.product.test;

import java.util.List;

import com.itwill.shop.product.Product;
import com.itwill.shop.product.ProductDao;

public class ProductDaoTestMain {

	public static void main(String[] args)throws Exception  {
		
		ProductDao productDao=new ProductDao();
		
//		System.out.println(productDao.selectAll());
		
//		System.out.println(productDao.insert(new Product(10,"shoes10",100000,"shoes10.jpg","기타등등",0,1)));

//		System.out.println(productDao.selectByNo(1));
		
//		System.out.println(productDao.update(new Product(10,"shoes22",2000000,"shoes11.jpg","기타등등등",0,2)));
		
//		System.out.println(productDao.delete("shoes2"));
		
//		System.out.println(productDao.selectByCategory(1));
		
//		System.out.println(productDao.productFindByName("s"));
		
		//상품 이름으로 출력 후 검색 결과 보기.
//		List <Product> findProduct =productDao.productFindByName("sn");
//		System.out.println(findProduct);
//		
//		
//		System.out.println("조회수 상위 3개");
//		System.out.println(productDao.selectPopular());
		
		Product updateProduct = 
				new Product(
						9, "Maison Mihara Yasuhiro Sneakers Black White", 800000, "Sneakers09.png","기타 상세 정보 등...", 0,1
						);
		System.out.println(productDao.update(updateProduct));
		
		/*
		1, "Golden Goose Superstar White Silver Heel", 380000, "Sneakers01.png","기타 상세 정보 등...", 0,1
		2, "Jordan 1 Elevate Low White and Wolf Grey", 200000, "Sneakers02.png","기타 상세 정보 등...", 0,1
		3, "Nike Air Force 1 07 Low White", 300000, "Sneakers03.png","기타 상세 정보 등...", 0,1
		4, "Adidas Superstar Core Black White", 400000, "Sneakers04.png","기타 상세 정보 등...", 0,1
		5, "Asics Jog 100 S Sheet Rock - 2E Wide", 500000, "Sneakers05.png","기타 상세 정보 등...", 0,1
		6, "Converse x Ader Error Chuck 70 High White", 600000, "Sneakers06.png","기타 상세 정보 등...", 0,1
		7, "Jordan 1 High Golf White Black", 700000, "Sneakers07.png","기타 상세 정보 등...", 0,1
		8, "Jordan 1 Retro High OG Chicago 2022", 800000, "Sneakers08.png","기타 상세 정보 등...", 0,1
		9, "Maison Mihara Yasuhiro Sneakers Black White", 800000, "Sneakers09.png","기타 상세 정보 등...", 0,1
		*/
	}

}
