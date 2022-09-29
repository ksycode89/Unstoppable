package co.mall.prj.admin.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;

public class AjaxMemberStat implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		salesService dao = new salesServiceImpl();
		
		List<SalesVO> list = new ArrayList<>();
		SalesVO vo = new SalesVO();
		vo.setMemberId(request.getParameter("id"));
		list = dao.ajaxMemberStat(vo);
		System.out.println("ajax 맴버 통계"+list);
		try {
			reponse.getWriter().print(list);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "ajaxList";
	}

}
