package com.web.sollabo.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.sollabo.board.dto.BoardDTO;
import com.web.sollabo.board.service.BoardService;

import oracle.net.aso.b;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "baseBoard" ,method =RequestMethod.GET)
	public String baseBoard() {
		String url = "board/baseBoard";
		return url;
	}
	@RequestMapping(value = "baseBoard2" ,method =RequestMethod.GET)
	public String baseBoard2() {
		String url = "board/baseBoard2";
		return url;
	}
	@RequestMapping(value = "boardTest" ,method =RequestMethod.GET)
	public String boardTest() {
		String url = "board/boardTest";
		return url;
	}
	
	@RequestMapping(value = "notice" ,method =RequestMethod.GET)
	public String notice() {
		String url = "board/notice";
		return url;
	}
}
