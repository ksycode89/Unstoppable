package co.mall.prj.admin.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class memberManageSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("mId"));
		vo = dao.memberSelect(vo);
		System.out.println("memberManageSelect "+vo);
		request.setAttribute("vo", vo);
		
		return "admin/adminPage/memberManageSelect";
	}

}
