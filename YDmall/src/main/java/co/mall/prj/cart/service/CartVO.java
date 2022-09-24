
package co.mall.prj.cart.service;

import lombok.Getter;
import lombok.Setter;

//장바구니, 관심상품용 테이블

@Getter
@Setter
public class CartVO {
	private String memberId; //회원 테이블의 id, 외래키 
	private int cartId; //장바구니 번호(PK)
	private int productId; // 상품 번호(FK)
	private String productName; //상품 이름
	private int cartQuantity; //구매 수량 
	private int productPrice; // 상품 가격
	private String cartRole; //장바구니, 관심상품 구분 ex)like=관심상품, busket=장바구니 
}
