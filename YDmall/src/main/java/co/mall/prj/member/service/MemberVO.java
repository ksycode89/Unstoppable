package co.mall.prj.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private String memberId; //pk 회원아이디
	private String memberPassword; //비밀번호
	private String memberName; //이름
	private String memberName2; //이름2
	private String memberEmail; //이메일
	private String memberTel; //전화번호
	private String memberTel2; //전화번호2
	private String memberAddress; //회원 주소
	private String memberAddress2; //회원 주소 2
	private String memberGender; //성별
	private String memberBirth; //생일
	private String memberJoin; //가입일
	private int memberTotalPrice; //총 구매 금액(누적)
	private int memberPoint; //로그인, 물건 구매 시 쌓이는 회원 포인트(누적, 사용가능)
	private String memberAuthor; //회원or 운영진 구분
}
