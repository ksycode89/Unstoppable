package co.mall.prj.cart.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.cart.service.CartService;
import co.mall.prj.cart.service.CartServiceImpl;
import co.mall.prj.cart.service.CartVO;
import co.mall.prj.common.Command;

public class Cart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		HttpSession session = request.getSession();
		String mId = (String) session.getAttribute("id");
		CartService dao = new CartServiceImpl();
		CartVO vo = new CartVO();

		List<CartVO> clist = new ArrayList<>();

		
		vo.setMemberId(mId);
		clist = dao.cartSelect(vo);
		request.setAttribute("clist", clist);
		
		return "cart/cart";
	}

}
