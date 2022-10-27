package com.web.sollabo.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaMaiil {
	static Properties mailServerProperties;
	static Session getMailSession;
	static MimeMessage generateMailMessage;
	
	static final String FROM = "sollaboshop@gmail.com"; // 보내는사람 이메일
	static final String FROMNAME = "지오서비스"; // 회사 이름
	static final String TO = "sollaboshop@gmail.com"; // 받는 사람 이메일
	static final String SMTP_USERNAME = "sollaboshop@gmail.com"; // 보내는 사람 이메일
	static final String SMTP_PASSWORD = "sollabo1234"; // 보내는 사람 이메일 비밀번호

	static final String HOST = "smtp.live.com";
	static final int PORT = 25;

	static final String SUBJECT = "메일 제목";			//메일 제목
	
	//내용 입력
	static final String BODY = String.join(System.getProperty("line.separator"), "<h1>메일 내용</h1>",	"<p>이 메일은 아름다운 사람이 보낸 아름다운 메일입니다!</p>.");

	public static void generateAndSendEmail() throws AddressException, MessagingException {
		System.out.println("\n 1st ===> 메일 보내는 포트 정의");
		mailServerProperties = new Properties();
		mailServerProperties.put("mail.smtp.host", "smtp.gmail.com"); 
		mailServerProperties.put("mail.smtp.port", 465); 
		mailServerProperties.put("mail.smtp.auth", "true"); 
		mailServerProperties.put("mail.smtp.ssl.enable", "true"); 
		mailServerProperties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	
		System.out.println("\n\n 2nd ===> 계정,제목,내용 입력 ");
		getMailSession = Session.getDefaultInstance(mailServerProperties, null);
		generateMailMessage = new MimeMessage(getMailSession);
		generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(TO));
		generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress(FROM));
		generateMailMessage.setSubject(SUBJECT);
		generateMailMessage.setContent(BODY, "text/html");
		System.out.println("Mail Session has been created successfully..");

		System.out.println("\n\n 3rd ===> 메일 전송");
		Transport transport = getMailSession.getTransport("smtp");

		System.out.println("보내는 이의 이메일 / 비밀번호 입력");
		transport.connect("smtp.gmail.com",SMTP_USERNAME, SMTP_PASSWORD);
		transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
		transport.close();
		System.out.println("성공");
	}
}
