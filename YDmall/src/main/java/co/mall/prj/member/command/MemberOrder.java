package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class MemberOrder implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 주문현황 조회
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId("jin");
		
		
		return "member/memberOrder";
	}

}
