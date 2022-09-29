package co.mall.prj.admin.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.sales.service.SalesVO;
import co.mall.prj.sales.service.salesService;
import co.mall.prj.sales.service.salesServiceImpl;

public class MemberStat implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		salesService dao = new salesServiceImpl();

		List<SalesVO> list = new ArrayList<>();
		SalesVO vo = new SalesVO();
		vo.setMemberId(request.getParameter("memberId"));
		list = dao.ajaxMemberStat(vo);

		request.setAttribute("list", list);

		return "admin/adminPage/monthStatistics";
	}

}
