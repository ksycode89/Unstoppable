package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 처리
		HttpSession session = request.getSession(); //세션호출
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(request.getParameter("memberPassword"));
		
		System.out.println(vo);
		vo = dao.memberSelect(vo);
		
		if(vo != null) {
			session.setAttribute("id", vo.getMemberId()); //이름
			session.setAttribute("author", vo.getMemberAuthor()); //권한
			session.setAttribute("password", vo.getMemberPassword());//비번
			session.setAttribute("name", vo.getMemberName()); //이름
			session.setAttribute("message", vo.getMemberName() + "님 환영합니다.");
		} else {
			//실패(아이디인지 비번인지 알려주는 기능 추가하면 좋을듯)
			request.setAttribute("message", "아이디 또는 패스워드가 틀렸습니다.");
		}
		return "member/memberMessage";
	}

}
