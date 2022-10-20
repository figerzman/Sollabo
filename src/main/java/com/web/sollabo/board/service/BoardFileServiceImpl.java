package com.web.sollabo.board.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class BoardFileServiceImpl implements BoardFileService {
	
	@Override	
	public String getMessage(HttpServletRequest request, String msg, String url) {

		String message = null;
		String path = request.getContextPath();
		message = "<script>alert('" + msg + "');";
		message += "location.href='" + path + url + "';</script>";
		return message;
		
	}

	@Override
	public String saveFile(MultipartFile file) {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss-");
		Calendar calendar = Calendar.getInstance();
		String sysFileName = format.format(calendar.getTime());
		sysFileName += file.getOriginalFilename();
		
		File saveFile = new File(IMAGE_REPO + "/" + sysFileName);
		try {
			file.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sysFileName;
	}

	@Override
	public void deleteImage(String originFileName) {
		File file = new File(IMAGE_REPO + "/" + originFileName);
		file.delete();
	}
	
}
















