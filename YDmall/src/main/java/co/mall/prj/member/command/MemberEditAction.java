package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class MemberEditAction implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 회원정보수정 처리
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl(); // 초기화
		MemberVO vo = new MemberVO(); // memberVO타입으로 생성
		// vo불러올때 필요한 정보
		vo.setMemberId(request.getParameter("memberId")); // 1
		vo.setMemberPassword(request.getParameter("memberPassword"));// 2
		vo.setMemberName(request.getParameter("memberName")); // 3
		vo.setMemberTel(request.getParameter("memberTel")); // 5
		vo.setMemberAddress(request.getParameter("memberAddress")); // 7
		vo.setMemberGender(request.getParameter("memberGender")); // 9
		vo.setMemberBirth(request.getParameter("memberBirth")); // 10
		vo.setMemberEmail(request.getParameter("memberEmail")); // 11

		System.out.println("내 정보수정 페이지 도착");
		System.out.println("수정페이지 vo : " + vo);

		String viewPage = "member/memberMessage";

		int result = dao.memberUpdate(vo);
		if (result != 0) {
			vo = dao.memberSelect(vo);
			request.setAttribute("message", vo.getMemberName() + "님의 정보가 수정되었습니다.");
			//수정될 세션 정보들(세션에 담긴 값 변경 방법 1)
			session.setAttribute("password", vo.getMemberPassword());//비번
			session.setAttribute("name", vo.getMemberName()); //이름
			session.setAttribute("address", vo.getMemberAddress()); //주소
			session.setAttribute("tel", vo.getMemberTel()); //번호
			session.setAttribute("email", vo.getMemberEmail()); //이메일
			
		} else {
			request.setAttribute("message", "회원정보가 수정되지 않았습니다.");
		} // 세션끊어주고 다시불러오던지, 로그인(?회원가입?)할때 세션을 받지말던지 둘중한가지 방법 선택해서 만들기.... ㅎ 0929
		return viewPage;
	}

}
