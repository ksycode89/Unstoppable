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
		// 구매내역
		// salesVo -> jin아이디 / 리스트 뽑아줄 구문 만들기
		salesService dao = new salesServiceImpl();
		HttpSession session = request.getSession();
		SalesVO vo = new SalesVO();
		List<SalesVO> list = new ArrayList<>();
		String memberId = (String) session.getAttribute("id"); // Object -> String
		vo.setMemberId(memberId); //아이디 담아서 리스트
		
		System.out.println("구매내역 memberId : " + memberId);
		
		//아이디불러와서 구매목록보여주기
		list = dao.salesSelect(vo);
		request.setAttribute("list", list);
		
		return "member/memberOrderHistory";
	}

}
