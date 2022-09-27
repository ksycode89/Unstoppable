package co.mall.prj.product.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private int productId; // 상품 고유 번호
	private String productMajor; // 상품 대분류
	private String productMinor; // 상품 소분류
	private String productName; // 상품 이름
	private String productSize; // 상품 사이즈
	private int productPrice; // 상품 가격
	private int productQuantity; // 상품 재고 수량
	private String productEvent; // 상품 세일 유무
	private String productDefault; // 상품 노출 기본값
	private String productAttach; // 상품 사진 이름
	private String productAttachDir; // 상품 사진 저장 위치
	private String productExplain; // 상품 상세 설명
}
