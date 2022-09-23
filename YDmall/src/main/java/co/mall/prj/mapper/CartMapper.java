package co.mall.prj.mapper;

import java.util.List;

import co.mall.prj.cart.service.CartVO;

public interface CartMapper {
//	카트 불러오기
	List<CartVO> CartSelectList(String memberId);

	CartVO cartCheck(CartVO vo);
//	카트 선택(?)
	CartVO cartSelect(CartVO vo);

//	카트 추가
	int cartInsert(CartVO vo);

//	카트 추가
	int addCart(CartVO vo);

//	카트 수정
	int cartUpdate(CartVO vo);

//	카트 삭제
	int cartDelete(CartVO vo);
}
