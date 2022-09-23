package co.mall.prj.product.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private String productId; // 상품 구분용 상품 번호?
	private String productOption; // Option 테이블의 상품 옵션 외래키
	private String productName; // 상품명
	private String productPrice; // 상품 가격
	private String productQuantity; // 상품 재고
	private String productCategory; // 상품 카테고리
}
