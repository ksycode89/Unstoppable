package co.mall.prj.sales.service;

import java.util.List;

public interface salesService {



//	SalesVO salesSelect(SalesVO vo);
	int insertOrder(SalesVO vo);

	 List<SalesVO> salesSelectList ();
	List<SalesVO> salesSelect(SalesVO vo);//이름단건조회 반환 리스
	
	SalesVO salesSelectId(SalesVO vo);//세일즈아이디 단건조회
	
	public List<SalesVO> ajaxMemberStat (SalesVO vo);
	public List<SalesVO> ajaxProductStat (SalesVO vo);
	
	int AjaxMemberSpend(SalesVO vo);
	
	int ajaxDelvCheck(SalesVO vo);
	
	int mainSpend();
	int salesSum();
	
	
	
	


}
