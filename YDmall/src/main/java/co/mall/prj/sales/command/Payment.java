package co.mall.prj.sales.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tiles.request.Request;

import co.mall.prj.cart.service.CartService;
import co.mall.prj.cart.service.CartServiceImpl;
import co.mall.prj.cart.service.CartVO;
import co.mall.prj.common.Command;

public class Payment implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		HttpSession session = request.getSession();
		String mId = (String) session.getAttribute("id");
		
		CartService dao = new CartServiceImpl();
		CartVO vo = new CartVO();
		
		request.setAttribute("message", "결제가 완료되었습니다. 감사합니다.");
		return "sales/paymentMessage";
	}

}
