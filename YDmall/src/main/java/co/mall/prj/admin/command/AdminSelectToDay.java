package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class AdminSelectToDay implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 당일 매출 조회
		return "";
	}

}
