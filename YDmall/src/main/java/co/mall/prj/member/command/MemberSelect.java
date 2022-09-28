package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class MemberSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 내정보 조회 백진희조용해
		return "member/memberMyPage";
	}

}
