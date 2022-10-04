
package co.mall.prj.cart.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//장바구니, 관심상품용 테이블

@Getter
@Setter
@ToString
public class CartVO {
	private String memberId; // 회원 아이디 
	private int productId; // 상품 고유 번호
	private String productName; // 상품명
	private int productPrice; // 상품 가격
	private String ProductSize; // 상품 파일명
	private int cartQuantity; // 구매 수량
	
}
