package co.mall.prj.mapper;

import java.util.List;

import co.mall.prj.sales.service.SalesVO;

public interface SalesMapper {

	
	public List<SalesVO> salesSelectList ();
	
	int insertOrder(SalesVO vo);
}
