package org.alArbiyaHotelManagement.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage; 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class ForgotPassword { 
	
 /*   @Autowired
    MailSender mailSender;
    
    public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
    
	@RequestMapping(method = RequestMethod.POST,value="/forgotPassword") 
    public String doSendEmail() {
		
        // takes input from e-mail form
      //  String recipientAddress = request.getParameter("email");
       // String subject = "sub";// request.getParameter("subject");
       // String message = "message" ;// request.getParameter("message");
        // prints debug info
    //    System.out.println("To: " + recipientAddress);
     ////   System.out.println("Subject: " + subject);
      //  System.out.println("Message: " + message);
        // creates a simple e-mail object
		
		String from= "shiyas009@gmail.com";
		String to="shiyas009@gmail.com";
		String subject="Subject";
		String messages="message";
		
        SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(messages);
		mailSender.send(message);
		 
        // forwards to the view named "Result"
        return "/login";
    }*/
}
