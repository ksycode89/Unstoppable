package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class MemberManageRemove implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		int result = 0;
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("mId2"));
		System.out.println("MemberManageRemove vo : "+vo);

		result = dao.memberDelete(vo);
		System.out.println("맴버삭제액션 result : "+result);
		
		return "adminMemberSelectList.yd";
	}

}
