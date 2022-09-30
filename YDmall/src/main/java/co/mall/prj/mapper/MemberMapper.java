package co.mall.prj.mapper;

import java.util.List;

import co.mall.prj.member.service.MemberVO;

public interface MemberMapper {

	List<MemberVO> memberSelectList(); // 전체목록 가져오기

	MemberVO memberSelect(MemberVO vo); // 한명의 데이터 가져오기, 로그인 시 사용
	int memberInsert(MemberVO vo); // 데이터 추가
	int memberUpdate(MemberVO vo); // 데이터 갱신
	int memberDelete(MemberVO vo); // 데이터 삭제
	int memberPoint(MemberVO vo); //멤버 포인트 가져오기
	boolean isMemberId(String id); // 아이디 중복체크 존재하면 false,
}