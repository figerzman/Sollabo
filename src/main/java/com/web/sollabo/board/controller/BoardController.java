package com.web.sollabo.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("board")
public class BoardController {
	
	
	
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
}
