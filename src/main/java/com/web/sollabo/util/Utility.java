package com.web.sollabo.util;

import javax.servlet.http.HttpServletRequest;

public class Utility {
	public static final int RECORD_COUNT_PER_PAGE=10;  //페이지당 보여질 레코드수
	public static final int BLOCK_SIZE=10; 				//블럭당 보여질 페이지 수
	
	public static String getFileInfo(String originalfileName, long fileSize, HttpServletRequest request) {
		double dfileSize=Math.round((fileSize/1000.0)*100)/100.0;
		String fileInfo="<img src='"+request.getContextPath() +"/images/file.gif'> ";
		fileInfo+=originalfileName+"("+dfileSize+" KB)";
		
		return fileInfo;
	}
	
	public static String convertEncryption(String str) {
		//SHA256클래스와 getSha256() 메서드를 사용해 원래의 비밀번호를 SHA-256방식으로 암호화
		
		//SHA-256을 사용하는 SHA256 클래스의 객체를 얻어낸다.
		SHA256 sha=SHA256.getInsatnce();		
		String shapass="";
		
		try {
			shapass=sha.getSha256(str.getBytes());
		} catch (Exception e) {
			e.printStackTrace();
		}			
		//SHA-256방식으로 암호화된 값을 다시 BCrypt클래스의 hashpw() 메서드를 사용해서 bcrypt방식으로 암호화
		//BCrypt.gensalt()
		
		//String hashed=BCrypt.hashpw(shapass, BCrypt.gensalt());
		return shapass;
	}
	
}//class








