package com.web.sollabo.board.service;

import java.util.List;

import com.web.sollabo.board.dto.BoardDTO;

public interface BoardService {
	
	public List<BoardDTO> getNotice(BoardDTO boardDTO);
}
