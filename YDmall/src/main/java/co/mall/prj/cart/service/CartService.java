package co.mall.prj.cart.service;

import java.util.List;

public interface CartService {
	List<CartVO> CartSelectList();
	
	CartVO cartSelect(CartVO vo);
	
	int cartInsert(CartVO vo);
	
	int cartUpdate(CartVO vo);
	
	int cartDelete(CartVO vo);
	
}
