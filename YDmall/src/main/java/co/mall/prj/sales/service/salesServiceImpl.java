package co.mall.prj.sales.service;

import org.apache.ibatis.session.SqlSession;

import co.mall.prj.common.DataSource;
import co.mall.prj.mapper.SalesMapper;

public class salesServiceImpl implements salesService{
	SqlSession dao = DataSource.getInstance().openSession(true);
	SalesMapper map = dao.getMapper(SalesMapper.class);
	@Override
	public int insertOrder(SalesVO vo) {
		System.out.println("impi : "+ "impl check");
				return map.insertOrder(vo);
	}
	


}
