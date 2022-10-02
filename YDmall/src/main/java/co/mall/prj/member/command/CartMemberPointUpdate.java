package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class CartMemberPointUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		HttpSession session = request.getSession();
		session.getAttribute("search");
		
		
		
		return "main/main";
	}

}
