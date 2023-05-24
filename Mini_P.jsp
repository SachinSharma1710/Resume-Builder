<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String Name =request.getParameter("Name");
String cnumber =request.getParameter("cnumber");
String EMail =request.getParameter ("EMail"); 
String Address =request.getParameter ("Address");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into minip(Name,cnumber,EMail,Address)values('"+Name+"','"+cnumber+"','"+EMail+"','"+Address+"')");
out.println("Data inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resume Builder</title>
</head><link rel="Stylesheet"href="Mini_p1.css">
<body><form method="post" action="Mini_P.html">

<%String collegename =request.getParameter("collegename");%>
<%String bName =request.getParameter("bName");%>
<%String Batchyear =request.getParameter ("Batchyear"); %>
<%String cgpanumber =request.getParameter ("cgpanumber"); %>
<%String hschoolname =request.getParameter("hschoolname");%>
<%String cpnumber =request.getParameter("cpnumber");%>
<%String sboard =request.getParameter ("sboard"); %>
<%String ynumber =request.getParameter ("ynumber"); %>
<%String schoolname =request.getParameter("schoolname");%>
<%String chnumber =request.getParameter("chnumber");%>
<%String shboard =request.getParameter ("shboard"); %>
<%String yshnumber =request.getParameter ("yshnumber"); %>
<%String tskils =request.getParameter("tskils");%>
<%String Description =request.getParameter("Description");%>
<%String pname =request.getParameter ("pname"); %>
<%String dnumber =request.getParameter ("dnumber"); %>
<%String pdescription =request.getParameter("pdescription");%>
<%String iname =request.getParameter("iname");%>
<%String inumber =request.getParameter ("inumber"); %>
<%String iDescription =request.getParameter ("iDescription"); %>
<%String cname =request.getParameter("cname");%>
<%String ccnumber =request.getParameter ("ccnumber"); %>
<%String cDescription =request.getParameter ("cDescription"); %>
<%String ename =request.getParameter("ename");%>
<%String enumber =request.getParameter ("enumber"); %>
<%String eDescription =request.getParameter ("eDescription"); %>
<%String sname =request.getParameter("sname");%>
<%String sDescription =request.getParameter ("sDescription"); %>
<%String hname =request.getParameter ("hname"); %>
<%String hDescription =request.getParameter ("hDescription"); %>
<%String inname =request.getParameter ("inname"); %>
<%String inDescription =request.getParameter ("inDescription"); %>
<h1>Resume-Builder</h1>
<br><br><br>
<div class="bo">
<b>Name &nbsp;&nbsp;:- </b><a><%out.println(Name);%></a><br>
<b>Phone No. &nbsp;:- </b><a><%out.println(cnumber);%></a><br>
<b>E-Mail Id :- </b><a><%out.println(EMail);%></a><br>
<b>Address &nbsp;&nbsp;:- </b><a><%out.println(Address);%></a><br>
</div><br><br><br><br><br><br>
<div class="co">

<b><u>Career Objective:- </u></b>
<ul><li>To secure a challenging position in a reputable organisation to utilizing my skills and hard work for growth of organization & thus improving my own profession and personal abilities.</li></ul>

<b><u>Professional Qualification:- </u></b>
<ul><li>Bachelor of Technology (B.Tech) in <a><%out.println(bName);%></a> Branch from <a><%out.println(collegename);%></a>. (<a><%out.println(Batchyear);%></a> Pursing). Current CGPA - (<a><%out.println(cgpanumber);%></a>).</li></ul>

<b><u>Academic Qualification:- </u></b>
<ul><li>Higher Secondary School Certificate from <a><%out.println(sboard);%></a> Board in <a><%out.println(hschoolname);%></a> in year <a><%out.println(ynumber);%></a>. - <a><%out.println(cpnumber);%></a>%.</li>
<li>High School Certificate from <a><%out.println(shboard);%></a> Board in <a><%out.println(schoolname);%></a> in year <a><%out.println(yshnumber);%></a>. - <a><%out.println(chnumber);%></a>%.</li></ul>

<b><u>Technical skills:- </u></b>
<ul><li>Programming - <a><%out.println(tskils);%></a></li>
<li>Development - <a><%out.println(Description);%></a></li></ul>

<b><u>Projects:- </u></b>
<ul><li>Title - <a><%out.println(pname);%></a></li>  	
<li>Duration - <a><%out.println(dnumber);%></a>Months</li>
<li>Description - <a><%out.println(pdescription);%></a></li></ul>

<b><u>Internship:- </u></b>
<ul><li>Title - <a><%out.println(iname);%></a></li>  	
<li>Duration - <a><%out.println(inumber);%></a>Months</li>
<li>Description - <a><%out.println(iDescription);%></a></li></ul>

<b><u>Certification:- </u></b>
<ul><li>Title - <a><%out.println(cname);%></a></li>  	
<li>Duration - <a><%out.println(cnumber);%></a>Months</li>
<li>Description - <a><%out.println(cDescription);%></a></li></ul>

<b><u>Extra Curricular Activities:-</u></b>
<ul><li>Title - <a><%out.println(ename);%></a></li>  	
<li>Duration - <a><%out.println(enumber);%></a>Months</li>
<li>Description - <a><%out.println(eDescription);%></a></li></ul>

<b><u>Strengths:-</u></b>
<ul><li>Title - <a><%out.println(sname);%></a></li>  	
<li>Description - <a><%out.println(sDescription);%></a></li></ul>

<b><u>Hobbies:-</u></b>
<ul><li>Title - <a><%out.println(hname);%></a></li>  	
<li>Description - <a><%out.println(hDescription);%></a></li></ul>

<b><u>Interests:-</u></b>
<ul><li>Title - <a><%out.println(inname);%></a></li>  	
<li>Description - <a><%out.println(inDescription);%></a></li></ul>

<button class="btn">Back</button></div>
</body>
</html>