<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String client_short_name=request.getParameter("client_short_name");
String invest_adv_id_name=request.getParameter("invest_adv_id_name");
String request_status=request.getParameter("request_status");
String description=request.getParameter("description");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8889/Investment_Planner?zeroDateTimeBehavior=convertToNull", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into t_new_plan_request1(client_short_name,invest_adv_id_name,request_status,description)values('"+client_short_name+"','"+invest_adv_id_name+"','"+request_status+"','"+description+"')");

out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

