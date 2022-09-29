package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;
import oracle.jdbc.internal.OracleConnection.XSOperationCode;

public class AjaxDelvCheck implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		
		System.out.println("AjaxDelvCheck 진입체크");
		salesService dao = new salesServiceImpl();
		SalesVO vo = new SalesVO();
		vo.setSalesId(request.getParameter("salesId"));
		vo.setSalesDeliveryStatus(request.getParameter("delv"));
		System.out.println(vo);
//		System.out.println(request.getParameter("delv"));
		
		String view = "ajax:실패";
		int result = dao.ajaxDelvCheck(vo);
			System.out.println("배달ajax결과 "+dao.ajaxDelvCheck(vo));
if(result == 1) {
			view="ajax:성공";
		}
		
		
		
		return view;
	}

}
