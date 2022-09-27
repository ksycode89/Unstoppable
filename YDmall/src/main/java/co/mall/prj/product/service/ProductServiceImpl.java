package co.mall.prj.product.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mall.prj.common.DataSource;
import co.mall.prj.mapper.ProductMapper;

public class ProductServiceImpl implements ProductService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productSelectList() {
		// 상품 리스트 전체
		return map.productSelectList();
	}

	@Override
	public ProductVO productSelect(ProductVO vo) {
		// 상품 단일(상품 이름 기준)
		return map.productSelect(vo);
	}

	@Override
	public ProductVO productSelect2(ProductVO vo) {
		// 상품 단일(상품 아이디 기준)
		return map.productSelect2(vo);
	}

	@Override
	public int productInsert(ProductVO vo) {
		// 상품 추가
		return map.productInsert(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		// 상품 재고, 이벤트 여부 수정
		return map.productUpdate(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		// 상품 삭제
		return map.productDelete(vo);
	}

}