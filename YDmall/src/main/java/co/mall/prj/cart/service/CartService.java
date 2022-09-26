package co.mall.prj.cart.service;

import java.util.List;

public interface CartService {
	
	List<CartVO> cartSelect(CartVO vo);
	
	int cartInsert(CartVO vo);
	
	int selectCountInCart(CartVO vo);
	
	int cartUpdate(CartVO vo);
	
	int cartDelete(CartVO vo);
	
	void cartDeleteAll(String memberId);
}
