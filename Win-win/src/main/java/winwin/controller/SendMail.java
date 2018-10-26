package winwin.controller;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import winwin.dto.Mail;

public class SendMail {
	
	public boolean sendMail(Mail mail) {
		
		
		String host = "smtp.gmail.com";
		final String user = "popiui0051@gmail.com";
		final String password = "qwe123RTY";
		
		String to = mail.getSender();
		String pw = mail.getContent();
		String po = mail.getTitle();
		System.out.println(to);
		System.out.println(pw);
		System.out.println(po);
		
		
		//Get the session object
		System.out.println("TLSEmail Start");
		Properties props= new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				
				return new PasswordAuthentication(user, password);
			}
		});
		
		// 메세지 작성
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			
			
			//제목
			message.setSubject(mail.getTitle());
			
			//내용
			message.setText(mail.getContent());
			
			
			
			//메세지 보내기
			Transport.send(message);
			System.out.println("메세지 전송 완료");
			return true;
			
		} catch (AddressException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			return false;
		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			return false;
		}
		
		
	}
}
