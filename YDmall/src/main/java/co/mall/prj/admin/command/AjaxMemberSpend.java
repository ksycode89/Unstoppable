package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;
import oracle.jdbc.internal.OracleConnection.XSOperationCode;

public class AjaxMemberSpend implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		salesService dao = new salesServiceImpl();
		SalesVO vo = new SalesVO();
		int result = 1;
		vo.setMemberId(request.getParameter("id"));
		System.out.println("1+"+ vo);
		System.out.println(dao.AjaxMemberSpend(vo));
		System.out.println("2+"+ result);
		System.out.println("ajaxMemberSpending :  "+result);
		
		return "ajax:"+result ;
	}

}
