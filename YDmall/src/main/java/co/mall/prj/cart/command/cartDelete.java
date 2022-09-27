package co.mall.prj.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.cart.service.CartService;
import co.mall.prj.common.Command;

public class cartDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		return null;
	}

}
