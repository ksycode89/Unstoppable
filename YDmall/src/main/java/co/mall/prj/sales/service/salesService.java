package co.mall.prj.sales.service;

import java.util.List;

public interface salesService {
	
	public List<SalesVO> salesSelectList ();
	
	 int insertOrder(SalesVO vo);

}
