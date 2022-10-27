package com.web.sollabo.mybatis.board;

import java.util.List;

import com.web.sollabo.board.dto.BoardDTO;

public interface BoardMapper {
	public List<BoardDTO> getNotice(BoardDTO boardDTO);
}
