package co.mall.prj.cart.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.cart.service.CartService;
import co.mall.prj.cart.service.CartServiceImpl;
import co.mall.prj.cart.service.CartVO;
import co.mall.prj.common.Command;

public class Cart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		CartService dao = new CartServiceImpl();
		CartVO vo = new CartVO();
		List<CartVO> list = new ArrayList<>();
		vo.setMemberId("kkk");
		System.out.println(vo);
		list = dao.cartSelect(vo);
		System.out.println(list);
		request.setAttribute("list", list);
		
		return "cart/cart";
	}

}
