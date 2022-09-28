package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;

public class MemberLogout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그아웃
		HttpSession session = request.getSession();
		System.out.println(session);
		String name = (String) session.getAttribute("name"); // java -> session에 담긴이름
		session.invalidate(); //서버가 만든 세션 완전삭제
		request.setAttribute("message",name + "님 로그아웃 되었습니다.");
		
		return "member/memberMessage";
	}

}
