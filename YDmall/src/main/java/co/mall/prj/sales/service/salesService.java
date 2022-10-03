package co.mall.prj.sales.service;

import java.util.List;

public interface salesService {



//	SalesVO salesSelect(SalesVO vo);
	int insertOrder(SalesVO vo);

	 List<SalesVO> salesSelectList ();
	List<SalesVO> salesSelect(SalesVO vo);
	
	
	public List<SalesVO> ajaxMemberStat (SalesVO vo);
	public List<SalesVO> ajaxProductStat (SalesVO vo);
	
	int AjaxMemberSpend(SalesVO vo);
	
	int ajaxDelvCheck(SalesVO vo);
	
	int mainSpend();
	int salesSum();
	
	


}
