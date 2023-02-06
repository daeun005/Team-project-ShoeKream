package com.itwill.shop.cart.test;

import com.itwill.shop.cart.Cart;
import com.itwill.shop.cart.CartService;
import com.itwill.shop.product.ProductDao;

public class CartServiceTestMain {

	public static void main(String[] args) throws Exception {
		CartService cartService = new CartService();
		ProductDao productDao = new ProductDao();
		/*
		 * productDao => productService로 수정해야 함
		 */
//		ProductService productService = new ProductService();
		
		System.out.println("1-1. addCart_insertCart");
		System.out.println(cartService.addCart(new Cart(0, "cream1", 6, productDao.findByProductNo(1))));
		System.out.println("1-2. addCart_updateByProductNo");
		System.out.println(cartService.addCart(new Cart(0, "cream1", 6, productDao.findByProductNo(6))));
		
		System.out.println("2. updateByCartNo");
		System.out.println(cartService.updateCart(new Cart(41, null, 3, null)));
		
		System.out.println("3-1. deleteCartItem_ByUserId");
		System.out.println(cartService.deleteCartItemByUserId("cream1"));
		System.out.println("3-2. deleteCartItem_ByCartNo");
		System.out.println(cartService.deleteCartItemByCartNo(1));
		
		
		System.out.println("4. viewCartItem");
		System.out.println(cartService.viewCartItem("cream2"));
		
		
	}

}
