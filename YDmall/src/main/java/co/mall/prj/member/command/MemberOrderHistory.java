package co.mall.prj.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;

public class MemberOrderHistory implements Command {
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {

	//salesVo -> jin아이디 / 리스트 뽑아줄 구문 만들기 
//	salesService dao = new salesServiceImpl();
//	List<SalesVO> list = new ArrayList<SalesVO>();
//	list = dao.insertOrder();
	
	
	
	
	
		// 구매내역
		return "member/memberOrderHistory";
	}

}
