package co.mall.prj.board.service;

import java.util.List;

public interface BoardService {
	
	
	List<BoardVO> noticeSelectList();	
	List<BoardVO> reviewSelectList();	
	List<BoardVO> qnaSelectList();	
	List<BoardVO> replySelectList(BoardVO re);
	
	BoardVO boardSelect(BoardVO vo);
	
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	int replyInsert(BoardVO vo);
	
	void boardIdMinus(BoardVO vo); // 글삭제 시, 다른 글 번호 감소
	void boardHitUpdate(BoardVO vo);

	
}
