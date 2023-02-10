/**********************userinfo insert************************/
insert into userinfo(user_Id,user_password,user_name,user_phone,user_email,user_address) values('cream1','1111','크림1','1111','cream1@korea.com','aaaa');
insert into userinfo(user_Id,user_password,user_name,user_phone,user_email,user_address) values('cream2','2222','크림2','2222','cream2@korea.com','bbbb');
insert into userinfo(user_Id,user_password,user_name,user_phone,user_email,user_address) values('cream3','3333','크림3','3333','cream3@korea.com','cccc');

/**********************category insert************************/
desc category;
insert into category(category_no,category_name) values(1,'운동화');
insert into category(category_no,category_name) values(2,'구두');
insert into category(category_no,category_name) values(3,'부츠');
insert into category(category_no,category_name) values(4,'슬리퍼');

delete from category where category_no = 4;

/**********************product insert************************/
desc product;

insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(1, 'Golden Goose Superstar White Silver Heel', 380000, 'Sneakers01.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(2, 'Jordan 1 Elevate Low White and Wolf Grey', 200000, 'Sneakers02.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(3, 'Nike Air Force 1 07 Low White', 300000, 'Sneakers03.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(4, 'Adidas Superstar Core Black White', 400000, 'Sneakers04.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(5, 'Asics Jog 100 S Sheet Rock - 2E Wide', 500000, 'Sneakers05.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(6, 'Converse x Ader Error Chuck 70 High White', 600000, 'Sneakers06.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(7, 'Jordan 1 High Golf White Black', 700000, 'Sneakers07.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(8, 'Jordan 1 Retro High OG Chicago 2022', 800000, 'Sneakers08.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(9, 'Maison Mihara Yasuhiro Sneakers Black White', 800000, 'Sneakers09.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(10, 'New Balance 2002R Grey', 800000, 'Sneakers10.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(11, 'Nike Air Force 1 07 WB Flax', 800000, 'Sneakers11.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(12, 'Nike Dunk Low Retro Black', 800000, 'Sneakers12.png','기타 상세 정보 등...', 0,1);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(13, 'Nike x Supreme Air Force 1 Low White', 800000, 'Sneakers13.png','기타 상세 정보 등...', 0,1);


insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(21, 'Chanel Open Shoes Lambskin Patent', 100000, 'Shoes01.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(22, 'Chanel Open Shoes Suede Kidskin Patent ', 200000, 'Shoes02.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(23, 'Dior Jadior Slingback Pumps Technical Fabric Black', 300000, 'Shoes03.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(24, 'Gucci GG Marmont Leather Mid-Heel Sandal Black', 400000, 'Shoes04.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(25, 'Gucci Horsebit Mid-Heel Slingback Black', 500000, 'Shoes05.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(26, 'Gucci Leather Mid-Heel Pumps Black', 600000, 'Shoes06.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(27, 'Marni Jacquard Marnigram Trompe Loeil Pumps', 700000, 'Shoes07.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(28, 'Prada Brushed Leather Singback Pumps Black', 800000, 'Shoes08.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(29, 'Prada Heeled Brushed Leather Lace-Up Shoes Black', 800000, 'Shoes09.png','기타 상세 정보 등...', 0,2);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(210, 'Balenciaga Trooper Derby Shoes Black', 800000, 'Shoes10.png','기타 상세 정보 등...', 0,2);





insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(31, 'Chanel Boots Caoutchouc', 100000, 'Boots01.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(32, 'Moon Boot Icon Low Nylon Boots Black', 200000, 'Boots02.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(33, 'UGG Classic Clear Mini Boots Natural Black', 300000, 'Boots03.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(34, 'UGG Classic Mini II Boots Chestnut', 400000, 'Boots04.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(35, 'UGG Classic Short II Boots Black', 500000, 'Boots05.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(36, 'Ader Error x Zara Split Suede ', 600000, 'Boots06.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(37, 'Balenciaga XL Army boots Full Eva Black', 700000, 'Boots07.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(38, 'Clarks Wallabee Boot Maple Suede', 800000, 'Boots08.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(39, 'Crocs Classic Lined Neo Puff Boot Bone', 800000, 'Boots09.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(310, 'Crocs Classic Lined Neo Puff Boot White', 800000, 'Boots10.png','기타 상세 정보 등...', 0,3);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(311, 'Timberland x Stussy World Hiker Boot Black', 800000, 'Boots11.png','기타 상세 정보 등...', 0,3);




insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(41, 'Dior Dway Mule Embroidered Cotton Deep Blue', 100000, 'Slippers01.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(42, 'Hermes Oran Sandal Calfskin Gold Piqures Ecrues', 200000, 'Slippers02.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(43, 'Oofos OOlala OOmega White', 300000, 'Slippers03.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(44, 'Polo Ralph Lauren Kayleigh Scuff Bear Snuff', 400000, 'Slippers04.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(45, 'UGG Coquette Slipper Chestnut', 500000, 'Slippers05.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(46, 'Adidas Adilette 22 Carbon Aluminium', 600000, 'Slippers06.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(47, 'Adidas Yeezy Slide Resin 2022', 700000, 'Slippers07.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(48, 'Birkenstock Boston Soft Footbed', 800000, 'Slippers08.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(49, 'Fear of God x Birkenstock Los Feliz Suede Taupe', 800000, 'Slippers09.png','기타 상세 정보 등...', 0,4);
insert into product(p_no,p_name,p_price,p_image,p_desc,p_click_count,category_no) values(410, 'Hermes Izmir Sandal Calfskin Noir', 800000, 'Slippers10.png','기타 상세 정보 등...', 0,4);





/*** 상품 update******/
update product set p_name='(new 신상) 어메이징 부츠',p_price=1000000,p_image='Boots01.jpg',p_desc='기타등등',P_click_count=0,category_no=1 where p_no =1;

/*상품 삭제*/
delete from product where p_no = 311;
/*상품 카테고리로 삭제*/
delete from product where category_no = 2;
/*상품 찾기*/
select * from product where p_no = 1;

/*상품 전체 리스트*/
select * from product;

/**********************cart insert************************/
insert into cart(cart_no,user_Id,cart_qty,p_no) values (cart_cart_no_SEQ.nextval,'cream1',1,1);
insert into cart(cart_no,user_Id,cart_qty,p_no) values (cart_cart_no_SEQ.nextval,'cream1',2,2);
insert into cart(cart_no,user_Id,cart_qty,p_no) values (cart_cart_no_SEQ.nextval,'cream2',3,3);
insert into cart(cart_no,user_Id,cart_qty,p_no) values (cart_cart_no_SEQ.nextval,'cream2',7,1);
insert into cart(cart_no,user_Id,cart_qty,p_no) values (cart_cart_no_SEQ.nextval,'cream3',5,5);

/**********************delivery insert************************/
insert into delivery(d_no,d_address,d_phone,d_name,user_Id) values (delivery_d_no_SEQ.nextval,'cream1_home','1111-1111','집','cream1');
insert into delivery(d_no,d_address,d_phone,d_name,user_Id) values (delivery_d_no_SEQ.nextval,'cream1_office','1111-2222','회사','cream1');
insert into delivery(d_no,d_address,d_phone,d_name,user_Id) values (delivery_d_no_SEQ.nextval,'cream2_home','2222-1111','집','cream2');
insert into delivery(d_no,d_address,d_phone,d_name,user_Id) values (delivery_d_no_SEQ.nextval,'cream2_office','2222-2222','회사','cream2');
insert into delivery(d_no,d_address,d_phone,d_name,user_Id) values (delivery_d_no_SEQ.nextval,'cream3_home','3333-1111','집','cream3');

/**********************orders insert************************/
insert into orders(o_no,o_desc,o_date,o_price,user_Id,d_no) values (orders_o_no_SEQ.nextval,'shoes1외1종',sysdate-2,300000,'cream1',2);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,1);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,2);

insert into orders(o_no,o_desc,o_date,o_price,user_Id,d_no) values (orders_o_no_SEQ.nextval,'shoes3',sysdate-2,300000,'cream2',3);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,3);

insert into orders(o_no,o_desc,o_date,o_price,user_Id,d_no) values (orders_o_no_SEQ.nextval,'shoes4외 1종',sysdate-1,400000,'cream2',4);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,2,orders_o_no_SEQ.currval,4);

insert into orders(o_no,o_desc,o_date,o_price,user_Id,d_no) values (orders_o_no_SEQ.nextval,'shoes2외 3종',sysdate,1900000,'cream2',4);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,1);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,2);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,2,orders_o_no_SEQ.currval,5);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,6);

insert into orders(o_no,o_desc,o_date,o_price,user_Id,d_no) values (orders_o_no_SEQ.nextval,'shoes3외 1종',sysdate,1100000,'cream3',5);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,3);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,2,orders_o_no_SEQ.currval,4);


/**********************product_reply insert************************/
--상품 추가
insert into product_reply(pr_no,pr_content,pr_regdate,pr_group_no,pr_step,pr_depth,p_no,user_Id) values (1,'신발 감사',sysdate,1,1,1,1,'cream1');

--상품 리뷰 삭제
delete from product_reply where pr_no = 1;

--상품 리뷰 수정
update product_reply set pr_content = '사이즈가 좋아요!' where pr_no=1;

--상품 리뷰 하나 상세보기
select * from product_reply pr join product p on pr.p_no=p.p_no where pr.p_no=1;

/**********************board insert************************/
insert into board(board_no,board_title,board_content,board_regdate,board_readcount,board_group_no,board_step,board_depth,user_id)
values (board_board_no_SEQ.nextval,'게시판테스트','게시판insert를 해보자',sysdate,0,board_board_no_SEQ.currval,1,0,'cream1');

commit;
desc order_item;


