package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class AdminProductSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {

		return "admin/adminPage/adminProductSelectList";
	}

}
