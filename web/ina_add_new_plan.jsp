<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String plan_name=request.getParameter("plan_name");
String plan_legal_name=request.getParameter("plan_legal_name");
String plan_long_name=request.getParameter("plan_long_name");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8889/Investment_Planner?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into new_plan(plan_name,plan_legal_name,plan_long_name)values('"+plan_name+"','"+plan_legal_name+"','"+plan_long_name+"')");

out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>