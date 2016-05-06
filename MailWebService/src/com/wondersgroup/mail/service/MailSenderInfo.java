package com.wondersgroup.mail.service;

import java.util.List;
import java.util.Properties;

/**
 * 发送邮件需要使用的基本信息
 */
public class MailSenderInfo {
	// 发送邮件的服务器的IP和端口
	private String mailServerHost;
	private String mailServerPort = "25";
	// 邮件发送者的地址
	private String fromAddress;
	// 邮件接收者的地址
	private List toAddressList;
	// 邮件接收者的地址(抄送)
	private List toAddressListCS;
	// 邮件接收者的地址（密送）
	private List toAddressListMS;
	// 登陆邮件发送服务器的用户名和密码
	private String userName;
	private String password;
	// 是否需要身份验证
	private boolean validate = true;
	// 邮件主题
	private String subject;
	// 邮件的文本内容
	private String content;
	// 邮件附件的文件名
	private String[] attachFileNames;

	/**
	 * 获得邮件会话属性
	 */
	public Properties getProperties() {
		Properties p = new Properties();
		p.put("mail.smtp.host", this.mailServerHost);
		p.put("mail.smtp.port", this.mailServerPort);
		p.put("mail.smtp.auth", validate ? "true" : "false");
		return p;
	}

	public String getMailServerHost() {
		return mailServerHost;
	}

	/**
	 * 发送邮件服务器
	 * @param mailServerHost
	 */
	public void setMailServerHost(String mailServerHost) {
		this.mailServerHost = mailServerHost;
	}

	
	public String getMailServerPort() {
		return mailServerPort;
	}

	/**
	 * 邮件服务器端口
	 * @return
	 */
	public void setMailServerPort(String mailServerPort) {
		this.mailServerPort = mailServerPort;
	}

	public boolean isValidate() {
		return validate;
	}

	/**
	 *  是否需要身份验证
	 * @param validate
	 */
	public void setValidate(boolean validate) {
		this.validate = validate;
	}

	public String[] getAttachFileNames() {
		return attachFileNames;
	}

	/**
	 * 邮件附件
	 * @param fileNames
	 */
	public void setAttachFileNames(String[] fileNames) {
		this.attachFileNames = fileNames;
	}

	
	public String getFromAddress() {
		return fromAddress;
	}

	/**
	 * 发件人邮件地址
	 * @param fromAddress
	 */
	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	public String getPassword() {
		return password;
	}

	/**
	 * 发件人邮件密码
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	public List getToAddress() {
		return toAddressList;
	}

	/**
	 * @return the toAddressList
	 */
	public List getToAddressList() {
		return toAddressList;
	}

	/**
	 * @param toAddressList the toAddressList to set
	 */
	public void setToAddressList(List toAddressList) {
		this.toAddressList = toAddressList;
	}


	/**
	 * @return the toAddressListCS
	 */
	public List getToAddressListCS() {
		return toAddressListCS;
	}

	/**
	 * @param toAddressListCS the toAddressListCS to set
	 */
	public void setToAddressListCS(List toAddressListCS) {
		this.toAddressListCS = toAddressListCS;
	}

	/**
	 * @return the toAddressListMS
	 */
	public List getToAddressListMS() {
		return toAddressListMS;
	}

	/**
	 * @param toAddressListMS the toAddressListMS to set
	 */
	public void setToAddressListMS(List toAddressListMS) {
		this.toAddressListMS = toAddressListMS;
	}

	/**
	 * 目的邮件地址
	 * @param toAddress
	 */
	public void setToAddress(List toAddressList) {
		this.toAddressList = toAddressList;
	}

	public String getUserName() {
		return userName;
	}

	/**
	 * 发送人姓名
	 * @param userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSubject() {
		return subject;
	}

	/**
	 * 邮件主题
	 * @param subject
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	/**
	 * 邮件内容
	 * @param textContent
	 */
	public void setContent(String textContent) {
		this.content = textContent;
	}


	
}