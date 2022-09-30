package co.mall.prj.cart.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mall.prj.common.DataSource;
import co.mall.prj.mapper.CartMapper;

public class CartServiceImpl implements CartService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CartMapper map = sqlSession.getMapper(CartMapper.class);

	// 비회원 장바구니 출력

//	장바구니 출력
	@Override
	public List<CartVO> cartSelect(CartVO vo) {
		return map.cartSelect(vo);
	}

//	장바구니 추가(입력)
	@Override
	public int cartInsert(CartVO vo) {
		return map.cartInsert(vo);
	}

//	장바구니 중복상품 담겨있는지 확인
	@Override
	public int selectCountInCart(CartVO vo) {
		return map.selectCountInCart(vo);
	}

//	장바구니 수정(변경)
	@Override
	public int cartUpdate(CartVO vo) {
		return map.cartUpdate(vo);
	}

//	장바구니 상품 삭제
	@Override
	public int cartDelete(CartVO vo) { 
		return map.cartDelete(vo);
	}

	@Override
	public int clearCart(CartVO vo) {
		// TODO Auto-generated method stub
		return map.clearCart(vo);
	}

	@Override
	public void cartDeleteAll(String memberId) {
		// TODO Auto-generated method stub
		
	}

}
