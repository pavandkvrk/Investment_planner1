<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String FUND_ID=request.getParameter("FUND_ID");
String FUND_NAME=request.getParameter("FUND_NAME");
String AMOUNT=request.getParameter("AMOUNT");
String CLIENT=request.getParameter("CLIENT");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8889/Investment_Planner?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into register_fund(FUND_ID,FUND_NAME,AMOUNT,CLIENT)values('"+FUND_ID+"','"+FUND_NAME+"','"+AMOUNT+"','"+CLIENT+"')");

out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>