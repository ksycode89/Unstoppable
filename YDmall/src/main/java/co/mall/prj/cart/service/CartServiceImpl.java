package co.mall.prj.cart.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mall.prj.common.DataSource;
import co.mall.prj.mapper.CartMapper;

public class CartServiceImpl implements CartService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CartMapper map = sqlSession.getMapper(CartMapper.class);
	
	@Override
	public List<CartVO> CartSelectList() {
		return map.CartSelectList();
	}

	@Override
	public CartVO cartSelect(CartVO vo) {
		return map.cartSelect(vo);
	}

	@Override
	public int cartInsert(CartVO vo) {
		return map.cartInsert(vo);
	}

	@Override
	public int cartUpdate(CartVO vo) {
		return map.cartUpdate(vo);
	}

	@Override
	public int cartDelete(CartVO vo) {
		return map.cartDelete(vo);
	}

}
