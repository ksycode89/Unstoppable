package co.mall.prj.sales.service;

import java.nio.MappedByteBuffer;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.mall.prj.common.DataSource;
import co.mall.prj.mapper.SalesMapper;

public class salesServiceImpl implements salesService{
	SqlSession dao = DataSource.getInstance().openSession(true);
	SalesMapper map = dao.getMapper(SalesMapper.class);
	
	

	@Override
	public List<SalesVO> salesSelectList() {
		
		return map.salesSelectList();
	}

	
	@Override
	public int insertOrder(SalesVO vo) {
//		System.out.println("impi : "+ "impl check");
				return map.insertOrder(vo);
	}


	@Override
	public List<SalesVO> ajaxMemberStat(SalesVO vo) {
		return map.ajaxMemberStat(vo);
	}


}
