package co.mall.prj.mapper;

import java.util.List;

import co.mall.prj.product.service.ProductVO;

public interface ProductMapper {
	List<ProductVO> productSelectList(); // 상품 전체 리스트
	ProductVO productSelect(ProductVO vo); // 상품 단일(상품 이름 기준)
	ProductVO productSelect2(ProductVO vo); // 상품 단일(상품 아이디 기준)
	int productInsert(ProductVO vo); // 상품 등록
	int productUpdate(ProductVO vo); // 상품 재고, 이벤트 여부 수정
	int productDelete(ProductVO vo); // 상품 삭제
	
}
