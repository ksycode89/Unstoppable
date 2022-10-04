package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;

public class DeliverySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		SalesVO vo = new SalesVO();
		salesService dao = new salesServiceImpl();
		vo.setSalesId(request.getParameter("deliId"));
		vo =dao.salesSelectId(vo);
		
		request.setAttribute("vo", vo);
		
		
		
		
		return "admin/adminPage/deliverySelect";
	}

}
