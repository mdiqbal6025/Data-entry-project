package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.PasswordAuthentication;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/sendEmail")
public class sendmail extends HttpServlet {
	
   String name,email,msg,amount;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		name=request.getParameter("name");
		amount=request.getParameter("amount");
		msg=request.getParameter("message");
		email="md.hussain908@gmail.com";
		final String username ="hussain04ansari@gmail.com";
		final String password="9534057401";
		Properties props=new Properties();
		props.put("mail.smtp.auth",true);
		props.put("mail.smtp.starttls.enable", true);
		props.put("mail.smtp.host","smtp.gmail.com");
		props.put("mail.smtp.port", "587");
	   Session session = Session.getInstance(props,new javax.mail.Authenticator(){
		   @Override
		   protected PasswordAuthentication getPasswordAuthentication() {
			   return new PasswordAuthentication(username,password);
		   }
	   });
		try {
			Message message=new MimeMessage(session);
			message.setFrom(new InternetAddress(email));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(username));
			MimeBodyPart textPart = new MimeBodyPart();
			Multipart multipart =new MimeMultipart();
			String final_Text ="Name:"+name+" "+"Amount:"+amount+" "+"Message:"+msg;
			textPart.setText(final_Text);
			multipart.addBodyPart(textPart);
			message.setContent(multipart);
			Transport.send(message);
            out.println("<center><h2 style='color:green'>Email Sent Successfully.></h2>");
            out.println("Thank you"+name+",Your message has been submitted to us.</center>");
            
		}catch(Exception e) {}
		
		
	}

}
