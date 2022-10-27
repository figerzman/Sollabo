package com.web.sollabo.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.board.dto.BoardDTO;
import com.web.sollabo.mybatis.board.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardMapper boardMapper;
		
	@Override
	public List<BoardDTO> getNotice(BoardDTO boardDTO) {
		return boardMapper.getNotice(boardDTO);
	}
	

}
