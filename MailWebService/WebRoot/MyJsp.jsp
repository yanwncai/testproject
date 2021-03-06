<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style>
* {
	font-family: "微软雅黑", Verdana, Arial;
	font-size: 12px;
}

table {
	border-width: 1px;
	border-color: #D4E3E6;
	border-collapse: collapse;
}

table tr td {
	border: 1px solid #D4E3E6;
	border-collapse: collapse;
}

td {
	padding: 0 15px 0 8px;
}

th {
	border: 1px solid #D4E3E6;
	border-collapse: collapse;
	background-color: #66A9BC;
}
</style>
<table>
	<tr>
		<th>序号</th>
		<th>前置机接口表</th>
		<th>上传开始时间</th>
		<th>上传结束时间</th>
		<th>上传标志</th>
		<th>上传量</th>
		<th>上传失败原因</th>
		<th>上传率</th>
	</tr>
	<tr>
		<td>1</td>
		<td>T_C0_GWGLDX</td>
		<td>2016-01-14 19:02:04</td>
		<td>2016-01-14 19:02:57</td>
		<td>成功</td>
		<td>7451</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>2</td>
		<td>T_C0_TASK</td>
		<td>2016-01-14 19:02:57</td>
		<td>2016-01-14 19:02:57</td>
		<td>成功</td>
		<td>14</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>3</td>
		<td>T_C1_INOUT</td>
		<td>2016-01-14 19:00:12</td>
		<td>2016-01-14 19:00:12</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>4</td>
		<td>T_C1_INOUTCHECK</td>
		<td>2016-01-14 19:00:12</td>
		<td>2016-01-14 19:00:12</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>5</td>
		<td>T_C1_INOUTSTATUS</td>
		<td>2016-01-14 19:00:12</td>
		<td>2016-01-14 19:00:12</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>6</td>
		<td>T_C1_QXZKJG</td>
		<td>2016-01-14 19:00:12</td>
		<td>2016-01-14 19:00:12</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>7</td>
		<td>T_C1_TNBBGK</td>
		<td>2016-01-14 19:00:02</td>
		<td>2016-01-14 19:00:03</td>
		<td>成功</td>
		<td>13</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>8</td>
		<td>T_C1_TNBSFFY</td>
		<td>2016-01-14 19:00:04</td>
		<td>2016-01-14 19:00:12</td>
		<td>成功</td>
		<td>1479</td>
		<td></td>
		<td>99.73%</td>
	</tr>
	<tr>
		<td>9</td>
		<td>T_C1_TNBSFK</td>
		<td>2016-01-14 19:00:04</td>
		<td>2016-01-14 19:00:12</td>
		<td>成功</td>
		<td>824</td>
		<td></td>
		<td>99.76%</td>
	</tr>
	<tr>
		<td>10</td>
		<td>T_C2_GXYHZBGK</td>
		<td>2016-01-14 19:01:12</td>
		<td>2016-01-14 19:01:37</td>
		<td>成功</td>
		<td>3039</td>
		<td></td>
		<td>97.93%</td>
	</tr>
	<tr>
		<td>11</td>
		<td>T_C2_GXYHZSFFY</td>
		<td>2016-01-14 19:01:39</td>
		<td>2016-01-14 19:01:57</td>
		<td>成功</td>
		<td>3242</td>
		<td></td>
		<td>97.50%</td>
	</tr>
	<tr>
		<td>12</td>
		<td>T_C2_GXYHZSFK</td>
		<td>2016-01-14 19:01:39</td>
		<td>2016-01-14 19:01:57</td>
		<td>成功</td>
		<td>1807</td>
		<td></td>
		<td>97.12%</td>
	</tr>
	<tr>
		<td>13</td>
		<td>T_C2_GXYSZCY</td>
		<td>2016-01-14 19:00:12</td>
		<td>2016-01-14 19:01:11</td>
		<td>成功</td>
		<td>7526</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>14</td>
		<td>T_C2_GXYYHBGK</td>
		<td>2016-01-14 19:01:11</td>
		<td>2016-01-14 19:01:11</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>15</td>
		<td>T_C2_GXYYHSFK</td>
		<td>2016-01-14 19:01:37</td>
		<td>2016-01-14 19:01:39</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>16</td>
		<td>T_C2_HDPG</td>
		<td>2016-01-14 19:01:58</td>
		<td>2016-01-14 19:01:58</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>17</td>
		<td>T_C2_HDQD</td>
		<td>2016-01-14 19:01:58</td>
		<td>2016-01-14 19:01:58</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>18</td>
		<td>T_C2_QXZKJG</td>
		<td>2016-01-14 19:01:58</td>
		<td>2016-01-14 19:01:58</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>19</td>
		<td>T_C2_WXFCPGK</td>
		<td>2016-01-14 19:01:57</td>
		<td>2016-01-14 19:01:58</td>
		<td>成功</td>
		<td>62</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>20</td>
		<td>T_C2_ZWGLXZHD</td>
		<td>2016-01-14 19:01:58</td>
		<td>2016-01-14 19:01:58</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>21</td>
		<td>T_C3_HZQCFK</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>22</td>
		<td>T_C3_HZQCSQ</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>23</td>
		<td>T_C3_ZLBGK</td>
		<td>2016-01-14 19:01:58</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>24</td>
		<td>T_C3_ZLBSFK</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>25</td>
		<td>T_C3_ZLZHK</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>6</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>26</td>
		<td>T_C4_LBXX</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>27</td>
		<td>T_C4_NCZBGK</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>28</td>
		<td>T_C4_NCZCFK</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>29</td>
		<td>T_C4_QXZKJG</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>30</td>
		<td>T_C4_YWDZBG</td>
		<td>2016-01-14 19:01:59</td>
		<td>2016-01-14 19:01:59</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>31</td>
		<td>T_C4_YWDZBGSQSH</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:00</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>32</td>
		<td>T_C5_BB_BZFXX</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>33</td>
		<td>T_C5_BB_BZFZB</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>34</td>
		<td>T_C5_BB_DDFSQK</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>35</td>
		<td>T_C5_BB_JKJYHD</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>36</td>
		<td>T_C5_BB_KYZZSC</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>37</td>
		<td>T_C5_BB_PXGZQK</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>38</td>
		<td>T_C5_BB_YZJZFXQKB</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>39</td>
		<td>T_C5_BLCPY</td>
		<td>2016-01-14 19:02:02</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>40</td>
		<td>T_C5_BLCT</td>
		<td>2016-01-14 19:02:01</td>
		<td>2016-01-14 19:02:02</td>
		<td>成功</td>
		<td>4</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>41</td>
		<td>T_C5_BLDJGLK</td>
		<td>2016-01-14 19:02:01</td>
		<td>2016-01-14 19:02:01</td>
		<td>成功</td>
		<td>1</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>42</td>
		<td>T_C5_BLQYQK</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:00</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>43</td>
		<td>T_C5_BLSF</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>44</td>
		<td>T_C5_BLYXJC</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>45</td>
		<td>T_C5_BLYYQK</td>
		<td>2016-01-14 19:02:02</td>
		<td>2016-01-14 19:02:02</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>46</td>
		<td>T_C5_BLZLXX</td>
		<td>2016-01-14 19:02:01</td>
		<td>2016-01-14 19:02:01</td>
		<td>成功</td>
		<td>1</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>47</td>
		<td>T_C5_CRBBGK</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:00</td>
		<td>成功</td>
		<td>3</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>48</td>
		<td>T_C5_CZBRDJ</td>
		<td>2016-01-14 19:02:01</td>
		<td>2016-01-14 19:02:01</td>
		<td>成功</td>
		<td>1</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>49</td>
		<td>T_C5_FYJM</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:00</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>50</td>
		<td>T_C5_JTMQJCZSC</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:00</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>51</td>
		<td>T_C5_JTMQJCZZZ</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:01</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>52</td>
		<td>T_C5_QYXX</td>
		<td>2016-01-14 19:02:02</td>
		<td>2016-01-14 19:02:02</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>53</td>
		<td>T_C5_TJXX</td>
		<td>2016-01-14 19:02:01</td>
		<td>2016-01-14 19:02:02</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>54</td>
		<td>T_C5_YMSYXX</td>
		<td>2016-01-14 19:02:02</td>
		<td>2016-01-14 19:02:02</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>55</td>
		<td>T_C5_YSCRBZZD</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:00</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>56</td>
		<td>T_C5_YYBL</td>
		<td>2016-01-14 19:02:00</td>
		<td>2016-01-14 19:02:00</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>57</td>
		<td>T_C6_CHILD_INFO</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:04</td>
		<td>成功</td>
		<td>1</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>58</td>
		<td>T_C6_DEADCARD</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:04</td>
		<td>成功</td>
		<td>56</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>59</td>
		<td>T_C6_RENKOU</td>
		<td>2016-01-14 19:02:03</td>
		<td>2016-01-14 19:02:03</td>
		<td>成功</td>
		<td>0</td>
		<td></td>
		<td></td>
	</tr>
</table>
<hr />
<table>
	<tr>
		<th>表空间名</th>
		<th>表空间大小(M)</th>
		<th>已使用空间(M)</th>
		<th>使用比</th>
		<th>空闲空间(M)</th>
		<th>最大块(M)</th>
	</tr>
	<tr>
		<td>CNWS_SPACE</td>
		<td>40960</td>
		<td>30832</td>
		<td>75.27</td>
		<td>10128</td>
		<td>4952</td>
	</tr>
</table>
<hr />
<table>
	<tr>
		<th>序号</th>
		<th>task_code</th>
		<th>task_name</th>
		<th>task_pk_name</th>
		<th>task_pk_value</th>
		<th>task_error</th>
		<th>task_date</th>
	</tr>
	<tr>
		<td>1</td>
		<td>TB_TNB_SFK</td>
		<td>糖尿病随访</td>
		<td>SFKBH</td>
		<td>42503568X00001111000000002366395</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C1_TNBSFFY"."YWMC")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>2</td>
		<td>TB_TNB_SFK</td>
		<td>糖尿病随访</td>
		<td>SFKBH</td>
		<td>42485016400001111000000002448129</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C1_TNBSFFY"."YWMC")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>3</td>
		<td>TB_TNB_SFK</td>
		<td>糖尿病随访</td>
		<td>SFKBH</td>
		<td>42503568X00001111000000002554400</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C1_TNBSFFY"."YWMC")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>4</td>
		<td>TB_ZL_ZHK</td>
		<td>肿瘤综合卡</td>
		<td>ZHKBH</td>
		<td>31010700300003211000000000001411</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C3_ZLZHK"."ZDDM")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>5</td>
		<td>TB_JHB_CRBBGK</td>
		<td>结核病报告卡</td>
		<td>ZBXTBKBH</td>
		<td>42503933000005021000000001836935</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C5_CRBBGK"."TKYS")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>6</td>
		<td>TB_JHB_CRBBGK</td>
		<td>结核病报告卡</td>
		<td>ZBXTBKBH</td>
		<td>310108028-2015-00123</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C5_CRBBGK"."CBKLY")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>7</td>
		<td>TB_JHB_CRBBGK</td>
		<td>结核病报告卡</td>
		<td>ZBXTBKBH</td>
		<td>310101004-2015-00002</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C5_CRBBGK"."CBKLY")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>8</td>
		<td>TB_JHB_CRBBGK</td>
		<td>结核病报告卡</td>
		<td>ZBXTBKBH</td>
		<td>42503933000005021000000002571950</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C5_CRBBGK"."TKYS")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>9</td>
		<td>TB_JHB_CRBBGK</td>
		<td>结核病报告卡</td>
		<td>ZBXTBKBH</td>
		<td>310101050-2015-00434</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C5_CRBBGK"."CBKLY")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>10</td>
		<td>TB_JHB_CRBBGK</td>
		<td>结核病报告卡</td>
		<td>ZBXTBKBH</td>
		<td>310104022-2015-00481</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C5_CRBBGK"."TKYS")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>11</td>
		<td>TB_JHB_CZBRDJB</td>
		<td>结核病初诊病人登记表</td>
		<td>LSH</td>
		<td>62</td>
		<td>ORA-00001: 违反唯一约束条件 (CDCBUF.SYS_C00425088) ORA-02063: 紧接着
			line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
	<tr>
		<td>12</td>
		<td>TB_JHB_PTBAGLB</td>
		<td>结核病初诊病人登记表</td>
		<td>CARD_ID</td>
		<td>4250393300000511296544</td>
		<td>ORA-01400: 无法将 NULL 插入 ("CDCBUF"."T_C5_BLZLXX"."LRZ")
			ORA-02063: 紧接着 line (起自 ZHDATA)</td>
		<td>2016-01-14</td>
	</tr>
</table>
<hr />
<table>
	<tr>
		<th width="10%">序号</th>
		<th>出错原因</th>
		<th>数量</th>
	</tr>
	<tr>
		<td>1</td>
		<td>报卡编号错误无关联的糖尿病报告卡</td>
		<td>2</td>
	<tr>
	<tr>
		<td>2</td>
		<td>不存在所属高血压患者报告卡，不允许上传随访卡</td>
		<td>42</td>
	<tr>
	<tr>
		<td>3</td>
		<td>关联的随访卡校验不通过，随访服药信息一起退回。</td>
		<td>85</td>
	<tr>
	<tr>
		<td>4</td>
		<td>新增报告卡时，要同时上传随访卡和危险分层评估卡</td>
		<td>6</td>
	<tr>
	<tr>
		<td>5</td>
		<td>已经存在随访日期在该失访记录之后的随访记录</td>
		<td>10</td>
	<tr>
	<tr>
		<td>6</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310101000000，不能建卡。</td>
		<td>3</td>
	<tr>
	<tr>
		<td>7</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310104000000，不能建卡。</td>
		<td>1</td>
	<tr>
	<tr>
		<td>8</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310105000000，不能建卡。</td>
		<td>7</td>
	<tr>
	<tr>
		<td>9</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310106000000，不能建卡。</td>
		<td>9</td>
	<tr>
	<tr>
		<td>10</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310108000000，不能建卡。</td>
		<td>19</td>
	<tr>
	<tr>
		<td>11</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310112000000，不能建卡。</td>
		<td>5</td>
	<tr>
	<tr>
		<td>12</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310113000000，不能建卡。</td>
		<td>10</td>
	<tr>
	<tr>
		<td>13</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310115000000，不能建卡。</td>
		<td>1</td>
	<tr>
	<tr>
		<td>14</td>
		<td>已经存在在管的高血压患者管理卡,在管区县为：310117000000，不能建卡。</td>
		<td>2</td>
	<tr>
	<tr>
		<td>合计</td>
		<td></td>
		<td>202</td>
	<tr>
</table>
<br />
<p>select * from cdcbuf.t_xtc0_check_log t where
	to_char(zjz8,'yyyymmdd')>=to_char(sysdate-1,'yyyymmdd') and
	to_char(zjz8,'yyyymmdd')<=to_char(sysdate,'yyyymmdd') order by
	bm,ccyy,jyrq</p>
</html>






