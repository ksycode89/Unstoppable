package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;

public class AjaxMemberIdCheck implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// // Ajax로 아이디 중복 체크를 하는 부분
		// 리턴값이 true면 사용가능한 아이디
		MemberService dao = new MemberServiceImpl();
		String id = request.getParameter("id");
		boolean b = dao.isMemberId(id);
		String str = "ajax:불가능"; //페이지에 돌려줄 값을 담을 변수
		if(b) {
			str ="ajax:사용가능";  //view Resolve에 Ajax호출이라는 것을 알려주기 위해
		}
		return str;  
	}

}
