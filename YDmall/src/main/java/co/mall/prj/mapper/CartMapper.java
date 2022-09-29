package co.mall.prj.mapper;

import java.util.List;

import co.mall.prj.cart.service.CartVO;

public interface CartMapper {
//	카트 리스트 출력
	List<CartVO> cartSelect(CartVO vo);
	
//	카트 추가전 상품이 담겨있는지 확인
	int selectCountInCart(CartVO vo);

//	카트 추가
	int cartInsert(CartVO vo);

//	카트 수정
	int cartUpdate(CartVO vo);

//	카트 삭제
	int cartDelete(CartVO vo);
}
