package co.mall.prj.admin.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class AdminMemberSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		MemberService dao = new MemberServiceImpl();

		List<MemberVO> list = new ArrayList<>();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		
		list=dao.memberSelectArr(vo);
		System.out.println("AdminMemberSearch "+list);
		request.setAttribute("list", list);
		return "admin/adminPage/adminMemberSelectList";
	}

}
