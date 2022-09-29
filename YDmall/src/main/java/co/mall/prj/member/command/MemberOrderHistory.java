package co.mall.prj.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;

public class MemberOrderHistory implements Command {

	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		HttpSession session = request.getSession();
		String memberId =(String)session.getAttribute("id");
		
		salesService dao = new salesServiceImpl();
		List<SalesVO> list = new ArrayList<>();
		SalesVO vo = new SalesVO();
		vo.setMemberId(memberId);
		list = dao.salesSelect(vo);
		System.out.println("memberodrhis_list: "+list);
		
		request.setAttribute("name", list);
		
		return "member/memberOrderHistory";
	}

}
