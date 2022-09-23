package co.mall.prj.page.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class Bottom implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// TODO Auto-generated method stub
		return "page/bottom";
	}

}
