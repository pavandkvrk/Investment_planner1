<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String FUND_ID=request.getParameter("FUND_ID");
String FUND_NAME=request.getParameter("FUND_NAME");
String FUND_LEGAL_NAME=request.getParameter("FUND_LEGAL_NAME");
String FUND_SHORT_NAME=request.getParameter("FUND_SHORT_NAME");
String FUND_LONG_NAME=request.getParameter("FUND_LONG_NAME");
String FUND_MANAGER_ID=request.getParameter("FUND_MANAGER_ID");
String OBJECTIVE=request.getParameter("OBJECTIVE");
String RISK=request.getParameter("RISK");
String SUMMARY=request.getParameter("SUMMARY");
String DEAD_FUND_I=request.getParameter("DEAD_FUND_I");
String MSTAR_CTGY_ID=request.getParameter("MSTAR_CTGY_ID");
String MSTAR_RATING=request.getParameter("MSTAR_RATING");
String MSTAR_RANKING=request.getParameter("MSTAR_RANKING");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8889/Investment_Planner?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into create_new_fund(FUND_ID,FUND_NAME,FUND_LEGAL_NAME,FUND_SHORT_NAME,FUND_LONG_NAME,FUND_MANAGER_ID,OBJECTIVE,RISK,SUMMARY,DEAD_FUND_I,MSTAR_CTGY_ID,MSTAR_RATING,MSTAR_RANKING)values('"+FUND_ID+"','"+FUND_NAME+"','"+FUND_LEGAL_NAME+"','"+FUND_SHORT_NAME+"','"+FUND_LONG_NAME+"','"+FUND_MANAGER_ID+"','"+OBJECTIVE+"','"+RISK+"','"+SUMMARY+"','"+DEAD_FUND_I+"','"+MSTAR_CTGY_ID+"','"+MSTAR_RATING+"','"+MSTAR_RANKING+"')");

out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>