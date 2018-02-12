<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>display data from the table using jsp</title>
</head>
<body>
<h6>FUND INFO</h6>
<%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */

String connectionURL = "jdbc:mysql://localhost:8889/Investment_Planner?zeroDateTimeBehavior=convertToNull";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root", "root");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.

String QueryString = "select * from t_fund_information where FUND_ID= 2";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="2" border="1" style="background-color: #ffffcc;">
<%
while (rs.next()) {
%>
<TR>
    <tr>
    <th>FUND ID</th>
    <th>FUND NAME</th>
    <th>FUND_LEGAL_NAME</th>
    <th>FUND_SHORT_NAME</th>
    <th>FUND_LONG_NAME</th>
    <th>FUND_MANAGER</th>
    <th>OBJECTIVE</th>
    <th>RISK</th>
    <th>SUMMARY</th>
    <th>DEAD FUND</th>
    <th>MSTAR CGYID</th>
    <th>MSTAR RATING</th>
    <th>MSTAR RANKING</th>
</tr>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getInt(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<TD><%=rs.getString(8)%></TD>
<TD><%=rs.getString(9)%></TD>
<TD><%=rs.getString(10)%></TD>
<TD><%=rs.getString(11)%></TD>
<TD><%=rs.getInt(12)%></TD>
<TD><%=rs.getInt(13)%></TD>
<TD><%=rs.getInt(14)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println();
}
%>
</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font>
</body>
</html>