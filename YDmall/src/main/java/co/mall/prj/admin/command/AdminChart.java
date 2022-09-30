package co.mall.prj.admin.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;
import oracle.jdbc.internal.OracleConnection.XSOperationCode;

public class AdminChart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {

		List<SalesVO> list = new ArrayList<>();
		salesService dao = new salesServiceImpl();
		
		list = dao.salesSelectList();
		System.out.println(list	);
		request.setAttribute("list", list);
		

		return "admin/adminPage/chart";
	}

}
