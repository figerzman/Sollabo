package com.web.sollabo.board.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface BoardFileService {

	public static final String IMAGE_REPO = "D:\\_FullStack_B\\05_SPRING\\image_repo";
	
	public String getMessage(HttpServletRequest request, String msg, String url);
	
	public String saveFile(MultipartFile file);
	
	public void deleteImage(String originFileName);
	
}
