package co.mall.prj.board.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class Notice implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		return "board/notice";
	}

}
