package co.mall.prj.sales.service;

import java.util.List;

public interface salesService {



//	SalesVO salesSelect(SalesVO vo);
	int insertOrder(SalesVO vo);

	
	public List<SalesVO> salesSelectList ();
	


}
