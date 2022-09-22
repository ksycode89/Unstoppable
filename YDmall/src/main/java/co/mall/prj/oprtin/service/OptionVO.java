package co.mall.prj.oprtin.service;

import lombok.Getter;
import lombok.Setter;

//상품 옵션 테이블의 VO

@Getter
@Setter
public class OptionVO {
	private String productOption; //상품 옵션 선택
	private String productExplain; //상품 설명
	private String productPicture; // 상품 사진
	private String productPictureDir; //상품 사진의 물리적 저장 위치
}
