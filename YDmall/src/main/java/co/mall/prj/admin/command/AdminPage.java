package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;

public class AdminPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		
		salesService dao = new salesServiceImpl();
		int a = dao.mainSpend();
		int b = a/12;
		
		int c = dao.salesSum();
		
		request.setAttribute("year_spend", a);
		request.setAttribute("month_spend", b);
		request.setAttribute("sales_sum", c);
		
		
		
		
		return "admin/adminPage/adminMain";
	}

}
