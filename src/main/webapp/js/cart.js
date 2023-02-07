
/*
count
*/
function cart_item_select_count(){
		var cart_item_no_check_list = document.getElementsByName("cart_item_no_check");
		var cart_item_check_selected_count = 0;
		document.cart_view_form.innerHTML ='';
		document.cart_view_form.innerHTML +="<input type='hidden' name='buyType'>";
		var tot_order_price=0;
		for (var i = 0; i < cart_item_no_check_list.length; i++) {
			if (cart_item_no_check_list.item(i).checked === true) {
				document.cart_view_form.innerHTML += "<input type='hidden' name='cart_item_no' value='"+ cart_item_no_check_list.item(i).value + "'>";
				var updateFormId='cart_update_form_'+ cart_item_no_check_list.item(i).value;
				var cart_qty=document.getElementById(updateFormId).cart_qty.value;
				var cart_product_unit_price=document.getElementById(updateFormId).cart_product_unit_price.value;
				tot_order_price+=cart_qty*cart_product_unit_price;
				cart_item_check_selected_count++;
			}
		}
		document.getElementById('cart_item_select_count').innerHTML = cart_item_check_selected_count;
		document.getElementById('tot_order_price').innerHTML = tot_order_price.toLocaleString();
}

	
/*
update
*/
//cart에서 수량 변경(cart_no)
function modify_qty(desc, formId) {
	console.log(formId);
	var form = document.getElementById(formId);
	if (desc == '+') {
		form.cart_qty.value = parseInt(form.cart_qty.value) + 1;
	} else if (desc == '-') {
		if (form.cart_qty.value - 1 >= 0) {
			form.cart_qty.value = parseInt(form.cart_qty.value) - 1;
		}
	}
	form.method = 'POST';
	form.action = 'cart_update_item_action.jsp';
}

/*
cart delete
 */
//한 항목 삭제 (cart_no)
function cart_delete_item_action(formId) {
	if(window.confirm('해당상품을 장바구니에서 삭제하시겠습니까?')){
		var form = document.getElementById(formId);
		form.method = 'POST';
		form.action = 'cart_delete_item_action.jsp';
		form.submit();
	}
}

//전체 삭제
function cart_delete() {
	document.cart_view_form.method = 'POST';
	document.cart_view_form.action = 'cart_delete_action.jsp';
	document.cart_view_form.submit();
}

/*
checkBox 
*/
//전체 선택,해제
function cart_item_all_select(e){
	var cart_item_no_check_list = document.getElementsByName("cart_item_no_check");
	if(e.target.checked){
		for (var i = 0; i < cart_item_no_check_list.length; i++) {
			cart_item_no_check_list.item(i).checked=true;
		}
	}else{
		for (var i = 0; i < cart_item_no_check_list.length; i++) {
			cart_item_no_check_list.item(i).checked=false;
		}
	}
}

//한 항목 선택,해제 (cart_no)
function cart_item_all_select_checkbox_deselect(){
	document.getElementById('all_select_checkbox').checked=false;
}	

/*
order
*/
//전체 주문
function cart_view_form_submit() {
	document.cart_view_form.method = 'POST';
	document.cart_view_form.buyType.value = 'cart';
	document.cart_view_form.action = 'order_create_form.jsp';
	document.cart_view_form.submit();
}
//선택 주문
function cart_view_form_select_submit() {
	var cart_item_no_check_list = document
			.getElementsByName("cart_item_no_check");
	var isChecked = false;
	for (var i = 0; i < cart_item_no_check_list.length; i++) {
		if (cart_item_no_check_list.item(i).checked === true) {
			isChecked = true;
			break;
		}
	}
	if (!isChecked) {
		alert('제품을선택해주세요');
		return;
	}
	document.cart_view_form.buyType.value = 'cart_select';
	document.cart_view_form.method = 'POST';
	document.cart_view_form.action = 'order_create_form.jsp';
	document.cart_view_form.submit();
}
	
	

	
