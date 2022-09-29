package co.mall.prj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;
import oracle.jdbc.internal.OracleConnection.XSOperationCode;

public class AdminChart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {


		return "admin/adminPage/chart";
	}

}
