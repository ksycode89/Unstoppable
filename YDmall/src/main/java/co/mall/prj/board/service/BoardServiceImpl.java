package co.mall.prj.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mall.prj.common.DataSource;
import co.mall.prj.mapper.BoardMapper;

public class BoardServiceImpl implements BoardService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BoardMapper map = sqlSession.getMapper(BoardMapper.class);
	
	@Override
	public List<BoardVO> noticeSelectList() {
		
		return map.noticeSelectList();
	}

	@Override
	public List<BoardVO> reviewSelectList() {

		return map.reviewSelectList();
	}

	@Override
	public List<BoardVO> qnaSelectList() {

		return map.qnaSelectList();
	}

	
	@Override
	public BoardVO boardSelect(BoardVO vo) {
	//	BoardHitUpdate(vo.getBoardId()); // 조회수 증가 중복 방지
		return map.boardSelect(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		
		return map.boardInsert(vo);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		
		return map.boardUpdate(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		
		return map.boardDelete(vo);
	}

	@Override
	public void boardHitUpdate(BoardVO vo) {
		map.boardHitUpdate(vo);

	}

	@Override
	public void boardIdMinus(BoardVO vo) {
		map.boardIdMinus(vo);
		
	}

	@Override
	public int replyInsert(BoardVO vo) {		
		return map.replyInsert(vo);
	}

	@Override
	public List<BoardVO> replySelectList(BoardVO re) {
		return map.replySelectList(re);
	}


	public List<BoardVO> mainViews() {
		
		return map.mainViews();
	}
	public int replyDelete(BoardVO vo) {
		return map.replyDelete(vo);

	}


	

}
