package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class MemberEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 상세페이지 폼 호출 
		System.out.println("상세페이지, 넘어옴^^");
		
		//수정 값
		return "member/memberDetailPage";
	}

}
