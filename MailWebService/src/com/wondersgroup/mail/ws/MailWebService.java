/** 
* 2015年8月3日 
* MailWebService.java * author:ywc */ 
package com.wondersgroup.mail.ws;  

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import com.wondersgroup.mail.service.MailSenderInfo;
@WebService
public interface MailWebService {
	public String sendEmail(String subject,String mailContent, List<String> toList,List<String> toListcc,List<String> toListms);

}
 