package co.mall.prj.mapper;

import java.util.List;

import co.mall.prj.sales.service.SalesVO;

public interface SalesMapper {

	
	public List<SalesVO> salesSelectList ();
	
	int insertOrder(SalesVO vo);
	
	public List<SalesVO> ajaxMemberStat(SalesVO vo) ;
	public List<SalesVO> ajaxProductStat(SalesVO vo) ;
	int AjaxMemberSpend(SalesVO vo);//구매금액 도출 맴버
	
	int ajaxDelvCheck(SalesVO vo);//배송수정
}
