package com.wondersgroup.mail.service.send;

import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import com.wondersgroup.mail.service.MailSenderInfo;
import com.wondersgroup.mail.service.SimpleMailSender;


/**
 * 
 * @author ywc
 * 
 */
public class SendMail {

	public static void sendEmail(MailSenderInfo msi){
		SimpleMailSender sms=new SimpleMailSender();
//		sms.sendTextMail(msi);
		sms.sendHtmlMail(msi);
	}

	public static void main(String[] args) {
		MailSenderInfo msi=new MailSenderInfo();
		msi.setMailServerHost("smtp.163.com");
		msi.setMailServerPort("25");
		msi.setFromAddress("ptyxjk@163.com");
		msi.setUserName("ptyxjk@163.com");
		msi.setPassword("Wonders2012");
		List list=new ArrayList();
		list.add("yanwencai@wondersgroup.com");
		list.add("771672905@qq.com");
		msi.setToAddress(list);
		msi.setSubject("test");
		//msi.setValidate(true);
		msi.setAttachFileNames(null);
		String str="<h1>测试html</h1>";
		msi.setContent(str);
		
		SendMail.sendEmail(msi);
	}
}
