/** 
* 2016年1月4日 
* JkglService.java * author:ywc */ 
package com.wondersgroup.JKGL.services;  

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.wondersgroup.JKGL.dao.JkglCDCDao;
import com.wondersgroup.JKGL.dao.JkglDao;
import com.wondersgroup.mail.ws.impl.MailWebServiceImpl;

@Service
public class JkglService {
	
	private Logger logger=Logger.getLogger(JkglService.class);
	@Resource
	private JkglDao jkglDao;
	@Resource
	private JkglCDCDao jkglCDCDao;
	
	/**
	 * 监控公卫数据上传情况
	 */
	@SuppressWarnings("unused")
	public void run(){
		StringBuffer sb=new StringBuffer("<html><style>  *{font-family: \"微软雅黑\",Verdana, Arial; font-size: 12px;}"
				+ "table{border-width: 1px;border-color: #D4E3E6;border-collapse: collapse;}"
				+ "table tr td{border: 1px solid #D4E3E6;border-collapse: collapse;}"
				+ "td{padding: 0 15px 0 8px;}"
				+ "th{border: 1px solid #D4E3E6;border-collapse: collapse;background-color: #66A9BC;}"
				+ "</style> <table>");
		logger.info("上传日志监控start");
		String sql1="select TABLENAME AS 前置机接口表,   "
				+ " to_char(begin_time,'yyyy-mm-dd hh24:mi:ss') AS 上传开始时间,  "
				+ " to_char(END_TIME,'yyyy-mm-dd hh24:mi:ss') AS 上传结束时间,"
				+ "DECODE(STAT, '1', '成功', '失败') AS 上传标志, "
				+ "COUNT_NEW AS 上传量, "
				+ "ERROR_MESSAGE AS 上传失败原因  "
				+ "from t_up_table_log where begin_time > sysdate - 1 order by tablename";
		List sql1Ret = this.jkglDao.findBySql(sql1);
		
		String sclSql="select bm, count(1) sl  from cdcbuf.t_xtc0_check_log t where to_char(zjz8, 'yyyymmdd') >= to_char(sysdate - 1, 'yyyymmdd')  and to_char(zjz8, 'yyyymmdd') <= to_char(sysdate, 'yyyymmdd') group by bm";
		List sclRet=this.jkglCDCDao.findBySql(sclSql);
		
		
		
		sb.append("<tr><th>序号</th><th>前置机接口表</th><th>上传开始时间</th><th>上传结束时间</th><th>上传标志</th><th>上传量</th><th>上传失败原因</th><th>退回数</th> <th>上传率</th> </tr>");
		NumberFormat nt = NumberFormat.getPercentInstance();
		   //设置百分数精确度2即保留两位小数
		nt.setMinimumFractionDigits(2);
		Double sczs=0D;//上传总数
		Double thzs=0D;//退回总数
		for(int i=0;i<sql1Ret.size();i++){
			Object[] obj=(Object[]) sql1Ret.get(i);
			String cwyy="";
			if(obj[5]!=null){
				cwyy=obj[5].toString();
			}
			String qzjJkb=String.valueOf(obj[0]);//前置机接口表名
			Double sccgs = Double.parseDouble(String.valueOf(obj[4]));//上传成功数
			sczs+=sccgs;
			
			Double ths = 0D;
			String sccgPrecent="";
			
			for(int i1=0;i1<sclRet.size();i1++){
				Object[] obj1=(Object[]) sclRet.get(i1);
				String qzjJkb1=String.valueOf(obj1[0]);
				if(qzjJkb.equals(qzjJkb1)&&sccgs!=0){
					ths=Double.parseDouble(String.valueOf(obj1[1]));//退回数量
					thzs+=ths;
					Double t=(sccgs-ths)/sccgs;
					sccgPrecent = nt.format(t);
					break;
				}
			}
			
			
			sb.append("<tr><td>"+(i+1)+" </td> <td>"+obj[0]+" </td><td>"+obj[1]+" </td><td>"+obj[2]+" </td><td>"+obj[3]+" </td><td>"+obj[4]+" </td><td>"+ cwyy+" </td><td>"+ String.valueOf(ths)+" </td><td>"+ sccgPrecent+" </td></tr>");
		}
		
		sb.append("<tr><td>汇总列 </td> <td> </td><td>  </td><td>  </td><td>  </td><td>"+sczs+" </td><td>  </td><td>"+ thzs+" </td><td>"+ nt.format((sczs-thzs)/sczs)+" </td></tr>");
		sb.append("</table>");
		logger.info("上传日志监控end");
		//-----------------------------------------------------------------------------
		//表空间监控s
		//表空间使用情况
		String sql2="SELECT UPPER(F.TABLESPACE_NAME) \"表空间名\",  D.TOT_GROOTTE_MB \"表空间大小(M)\",  D.TOT_GROOTTE_MB - F.TOTAL_BYTES \"已使用空间(M)\", TO_CHAR(ROUND((D.TOT_GROOTTE_MB - F.TOTAL_BYTES) / D.TOT_GROOTTE_MB * 100,  2), '990.99') \"使用比\", F.TOTAL_BYTES \"空闲空间(M)\",F.MAX_BYTES \"最大块(M)\" FROM (SELECT TABLESPACE_NAME, ROUND(SUM(BYTES) / (1024 * 1024), 2) TOTAL_BYTES,ROUND(MAX(BYTES) / (1024 * 1024), 2) MAX_BYTES FROM SYS.DBA_FREE_SPACE  GROUP BY TABLESPACE_NAME) F, (SELECT DD.TABLESPACE_NAME, ROUND(SUM(DD.BYTES) / (1024 * 1024), 2) TOT_GROOTTE_MB FROM SYS.DBA_DATA_FILES DD GROUP BY DD.TABLESPACE_NAME) D WHERE D.TABLESPACE_NAME = F.TABLESPACE_NAME and F.tablespace_name='CNWS_SPACE' ORDER BY 4 DESC";
		List tbSpaceList = this.jkglDao.findBySql(sql2);
		
		Object[] obj1=(Object[]) tbSpaceList.get(0);
		sb.append("<hr /> <table><tr><th>表空间名</th><th>表空间大小(M)</th><th>已使用空间(M)</th><th>使用比</th><th>空闲空间(M)</th><th>最大块(M)</th> </tr>");
		sb.append("<tr><td>"+obj1[0]+"</td> <td>"+obj1[1]+"</td> <td>"+obj1[2]+"</td> <td>"+obj1[3]+"</td> <td>"+obj1[4]+"</td> <td>"+obj1[5]+"</td></tr>");
		sb.append("</table>");
		//表空间监控e
		//----------------------------------------------------------------------------------------------------
		//区内扫描详细报错日志s
		String sql3="select * from t_up_table_detailed_log t where t.task_date>sysdate-1";
		List ret2List = this.jkglDao.findBySql(sql3);
		sb.append("<hr /> <table><tr><th>序号</th><th>task_code</th><th>task_name</th><th>task_pk_name</th><th>task_pk_value</th><th>task_error</th><th>task_date</th> </tr>");
		for(int k=0;k<ret2List.size();k++){
			Object[] obj2=(Object[]) ret2List.get(k);
			sb.append("<tr><td>"+(k+1)+"</td> <td>"+obj2[0]+"</td> <td>"+obj2[1]+"</td> <td>"+obj2[2]+"</td> <td>"+obj2[3]+"</td> <td>"+obj2[4]+"</td> <td>"+obj2[5]+"</td></tr>");
		}
		sb.append("</table>");
		//区内扫描详细报错日志e
		//----------------------------------------------------------------------------------------------------
		//日期范围
		sb.append("<hr /> <table><tr><th width=\"10%\">序号</th><th>出错原因</th><th>数量</th></tr>");
		String sql4="select ccyy,count(1) sl  from cdcbuf.t_xtc0_check_log t where to_char(zjz8,'yyyymmdd')>=to_char(sysdate-1,'yyyymmdd') and to_char(zjz8,'yyyymmdd')<=to_char(sysdate,'yyyymmdd') group by ccyy order by ccyy";
		List ret3List = this.jkglCDCDao.findBySql(sql4);
		int hj=0;
		for(int l=0;l<ret3List.size();l++){
			Object[] obj3=(Object[]) ret3List.get(l);
			hj=hj+Integer.parseInt(String.valueOf(obj3[1]));
			sb.append("<tr><td>"+(l+1)+"</td> <td >"+obj3[0]+"</td> <td>"+obj3[1]+"</td> <tr>");
		}
		sb.append("<tr><td>合计</td> <td ></td> <td>"+hj+"</td> <tr>");
		
		sb.append("</table>");
		sb.append("<br/><p>select *  from cdcbuf.t_xtc0_check_log t where to_char(zjz8,'yyyymmdd')>=to_char(sysdate-1,'yyyymmdd') and to_char(zjz8,'yyyymmdd')<=to_char(sysdate,'yyyymmdd') order by bm,ccyy,jyrq</p>");
		sb.append("</html>");
		
		logger.info("邮件内容"+sb);
		
		
		
		
	
		
		MailWebServiceImpl msi=new MailWebServiceImpl();
		List toList=new ArrayList();
		toList.add("yanwencai@wondersgroup.com");
		toList.add("lupingping@wondersgroup.com");
		toList.add("wangmenglian@wondersgroup.com");
		toList.add("ptjkxxh@163.com");
		List ccList=new ArrayList();
		ccList.add("gongfei@wondersgroup.com");
		msi.sendEmail("疾控数据上传监控邮件", sb.toString(), toList, ccList, null);
	/*	msi.sendEmail("疾控数据上传监控邮件", "test", toList, null, null);*/
	}
	
	public static void main(String[] args) {
		new JkglService().run();
	}
	
	public String cutStr(Object inObj){
		String inStr=String.valueOf(inObj);
		if(!inStr.equals("null")&&inStr!=null&&!inStr.equals("")){
			if(inStr.length()>10){
				return inStr.substring(0, 10)+"。。。";
			}else {
				return "";
			}
		}
		return "";
	}
	

}
 