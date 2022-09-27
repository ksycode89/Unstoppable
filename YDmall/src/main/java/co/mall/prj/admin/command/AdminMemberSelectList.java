package co.mall.prj.admin.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class AdminMemberSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		List<MemberVO>list= new ArrayList<>();
		MemberService dao = new MemberServiceImpl();
		list = dao.memberSelectList();
		System.out.println(list);
		request.setAttribute("list", list);
		
		return "admin/adminPage/adminMemberSelectList";
	}

}
