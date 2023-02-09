package com.itwill.shop.board.test;

import java.util.ArrayList;
import java.util.List;

import com.itwill.shop.board.Board;
import com.itwill.shop.board.BoardDao;

public class BoardServiceTestMain {

	public static void main(String[] args) throws Exception {
		BoardDao boardDao = new BoardDao();
		System.out.println("search by title");
		List<Board> searchResultList = new ArrayList<Board>();
		searchResultList = boardDao.searchByTitle(1, 10, "테스트");
		System.out.println(searchResultList);

	}

}
