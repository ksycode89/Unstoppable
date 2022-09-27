package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class MemberInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();

		vo.setMemberId(request.getParameter("memberId")); // 1
		vo.setMemberPassword(request.getParameter("memberPassword"));// 2
		vo.setMemberName(request.getParameter("memberName")); // 3
		vo.setMemberTel(request.getParameter("memberTel")); // 5
		vo.setMemberAddress(request.getParameter("memberAddress")); // 7
		vo.setMemberGender(request.getParameter("memberGender")); // 9
		vo.setMemberBirth(request.getParameter("memberBirth")); // 10
		vo.setMemberEmail(request.getParameter("memberEmail")); // 11

		System.out.println("vo: " + vo);
		int n = dao.memberInsert(vo);
		String viewPage = null; // 돌려줄 페이지
		if (n != 0) {
			request.setAttribute("message", vo.getMemberName() + "님 회원가입이 완료되었습니다!");
			viewPage = "member/memberMessage";
		} else {
			request.setAttribute("message", "회원가입이 되지 않았습니다.");
			viewPage = "member/memberMessage";
		}
		return viewPage;
	}

}
