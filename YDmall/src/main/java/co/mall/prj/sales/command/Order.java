package co.mall.prj.sales.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;

public class Order  implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		salesService dao = new  salesServiceImpl();
		SalesVO vo  = new 	SalesVO();
		System.out.println("in order Command : " +request.getParameter("memberId") );
		vo.setMemberId(request.getParameter("memberId"));
		vo.setSalesId(request.getParameter("salesId"));
		
		dao.insertOrder(vo);

		
		
		
		
		
		return "sales/orderDone";
	}

}
