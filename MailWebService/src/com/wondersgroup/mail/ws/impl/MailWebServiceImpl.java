/** 
 * 2015年8月3日 
 * MailWebServiceImpl.java * author:ywc */
package com.wondersgroup.mail.ws.impl;

import java.util.*;

import org.apache.log4j.Logger;

import com.wondersgroup.mail.service.MailSenderInfo;
import com.wondersgroup.mail.service.SimpleMailSender;
import com.wondersgroup.mail.ws.MailWebService;

public class MailWebServiceImpl implements MailWebService {
	private static Logger logger = Logger.getLogger(MailWebServiceImpl.class);
	
	static MailSenderInfo msi;
	static {
		ResourceBundle rb = ResourceBundle.getBundle("sendmailconfig");
		// 获取群组数量

		msi = new MailSenderInfo();
		msi.setUserName(rb.getString("username"));
		msi.setPassword(rb.getString("password"));
		msi.setMailServerHost(rb.getString("MailServerHost"));
		msi.setMailServerPort(rb.getString("MailServerPort"));
		msi.setFromAddress(rb.getString("sendAddr"));

	}

	/**
	 * subject:邮件主题
	 * mailContent:内容
	 * toList：收件人
	 * toListcc：收件人（抄送）
	 * toListms：收件人（密送）
	 */
	@Override
	public String sendEmail(String subject,String mailContent, List<String> toList,List<String> toListcs,List<String> toListms) {
		String msg = "发送成功";

		if (msi != null&&subject!=null&&toList!=null) {
			msi.setSubject(subject);//主题
			msi.setContent(mailContent);//邮件内容
			msi.setToAddressList(toList);//收件人（支持单人和多人）
			msi.setToAddressListCS(toListcs);//收件人（抄送）
			msi.setToAddressListMS(toListms);//收件人（密送）
		} else {
			msg="{isSended:0,msg:服务器端获取msi对象失败}";
			logger.error(msg);
			return msg;
		}
		SimpleMailSender sms = new SimpleMailSender();
		boolean isOk = true;
		try {
			isOk = sms.sendHtmlMail(msi);
			msg=isOk == true ? "{isSended:1,msg:" + msg + "}" : "{isSended:0,msg:发送失败}";
			logger.info(msg);
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			msg="{isSended:0,msg:发送失败}";
			logger.error(msg);
		}
		return msg;

	}
}
