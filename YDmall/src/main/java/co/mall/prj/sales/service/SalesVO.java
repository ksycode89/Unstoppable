package co.mall.prj.sales.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SalesVO {
	private String salesId; //구매번호?
	private String memberId; //멤버 테이블의 회원id 외래키
	private int salesQuantity; //구매 수량
	private String productName; //판매된 상품 이름
	private int salesTotalPrice; //주문 총액
	private String salesDate; //구매 일자
	private String salesDeliveryStatus; //배송 상태
	private String salesDeliveryId; //송장 번호
	private String salesNeeds; //상품 주문 시 요청사함
}
