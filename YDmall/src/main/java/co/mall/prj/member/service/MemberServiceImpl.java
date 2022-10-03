package co.mall.prj.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mall.prj.common.DataSource;
import co.mall.prj.mapper.MemberMapper;

public class MemberServiceImpl implements MemberService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	MemberMapper map = sqlSession.getMapper(MemberMapper.class);
	
	@Override
	public List<MemberVO> memberSelectList() {
		// 회원조회
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// 한명조회
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// 회원등록
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// 회원수정
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// 회원탈퇴
		return map.memberDelete(vo);
	}
	
	@Override
	public int memberPoint2(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberPoint2(vo);
	}
	@Override
	public boolean isMemberId(String id) {
		// 아이디 중복 체크
		return map.isMemberId(id);
	}

	@Override
	public List<MemberVO> memberSelectArr(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberSelectArr(vo);
	}

}
