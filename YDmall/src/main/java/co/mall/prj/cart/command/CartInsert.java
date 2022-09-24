package co.mall.prj.cart.command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.cart.service.CartService;
import co.mall.prj.cart.service.CartServiceImpl;
import co.mall.prj.cart.service.CartVO;
import co.mall.prj.common.Command;

public class CartInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		CartService dao = new CartServiceImpl();
		CartVO vo = new CartVO();
		vo.setCartId(Integer.valueOf(request.getParameter("cartId")));
		vo.setMemberId(request.getParameter("memberId"));
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		vo.setProductName(request.getParameter("productName"));
		vo.setCartQuantity(Integer.valueOf(request.getParameter("cartQuantity")));
		
		int no = dao.cartInsert(vo);
		
		return "cart/cart";
	}


}
