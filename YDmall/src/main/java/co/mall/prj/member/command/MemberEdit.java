package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class MemberEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 내정보수정
		return "member/memberEdit";
	}

}
