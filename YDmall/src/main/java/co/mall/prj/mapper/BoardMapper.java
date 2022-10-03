package co.mall.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.mall.prj.board.service.BoardVO;

public interface BoardMapper {
	

	List<BoardVO> noticeSelectList();
	List<BoardVO> reviewSelectList();
	List<BoardVO> qnaSelectList();
	List<BoardVO> replySelectList(BoardVO re);
	List<BoardVO> mainViews(); //main  viewer
	
	
	BoardVO boardSelect(BoardVO vo);
	BoardVO replySelect(BoardVO re);
	
	int boardInsert(BoardVO vo); // 공지글 등록
	int boardUpdate(BoardVO vo);	
	int boardDelete(BoardVO vo);
	
	int replyInsert(BoardVO vo); // 덧글 등록
	int replyDelete(BoardVO vo); // 덧글 삭제
	
	void boardIdMinus(BoardVO vo); // 글삭제 시, 다른 글 번호 감소
	void boardHitUpdate(BoardVO vo); // 조회수 업데이트
	
	
	
}
