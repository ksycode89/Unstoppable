package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class MemberDeleteAction implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 탈퇴처리구문
		System.out.println("탈퇴도착");
		HttpSession session = request.getSession(); // 세션호출
		MemberService dao = new MemberServiceImpl();
		
		int result = 0;
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("id"));
		vo.setMemberName(request.getParameter("name"));
		System.out.println("맴버삭제액션 vo : "+vo);

		result = dao.memberDelete(vo);
		System.out.println("맴버삭제액션 result : "+result);

		session.invalidate(); //서버가 만든 세션 완전삭제
		
		if (result > 0) {
			request.setAttribute("message", vo.getMemberName() + "님 탈퇴었습니다." + " MUZHCUK을 이용해 주셔서 감사합니다.");
		} else {
			request.setAttribute("message", "탈퇴처리에 실패했습니다.");
		}
		return "member/memberMessage";
	}
}
