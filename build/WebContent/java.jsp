<%@ page import="java.sql.*" %>

<!DOCTYPE HTML>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $("table").remove(".question, .demo");
  });
});
</script>
<title>JSP Page</title>
</head>
<body>
<% 
String ans=" ";
if(request.getParameter("correctAns")!=null)
{
ans=request.getParameter("correctAns").toString();
}
Connection conn = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/";
String db = "quizapp";
String user = "user";
String pass = "password";
Statement st = null;
ResultSet qrst;
ResultSet rs = null, res = null;

String id=request.getParameter("id");
System.out.println("id:"+id);

String s,g;

int count=0;

try {

Class.forName(driver);
conn = DriverManager.getConnection(url+db,user,pass);
st = conn.createStatement();
rs = st.executeQuery("select * from java");
int i=0,j;
String question[]=new String[10];
String opA[]=new String[10];
String opB[]=new String[10];
String opC[]=new String[10];
String opD[]=new String[10];
String correct[]=new String[10];

while(rs.next()){
	//String opt=rs.getString("correct");
	question[i]=rs.getString("question");
	opA[i]=rs.getString("opA");
	opB[i]=rs.getString("opB");
	opC[i]=rs.getString("opC");
	opD[i]=rs.getString("opD");
	correct[i]=rs.getString("correct");
	i++;
}

j=0;
i=0;

while(i<2)
{
%>

<br>
<br/>
<center>

<table border="1" width="500px" bgcolor="pink" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">

<form name="form1">

<h2 align="center"><font color="red">Online Quiz Application</font></h2>

<b>Select Correct Answer</b>
<table class="question" border="0" width="500px" cellspacing="2" cellpadding="4">
<tr>
<td width="50%"> Question:</td>
<tr>
<td><%= question[i] %></td></tr>
<tr>
<td>
1: <input type="radio" name="option" value="A" /></td>
<td><%= opA[i] %></td></tr> 
<tr>
<td>
2: <input type="radio" name="option" value="B" /></td>
<td><%= opB[i] %></td></tr>

<tr>
<td>
3: <input type="radio" name="option" value="C" /></td>
<td><%= opC[i] %> </td></tr>

<tr>
<td>
4: <input type="radio" name="option" value="D" /> </td>
<td> <%= opD[i] %> </td></tr>

<tr>
<td>
<center>
<input type="submit" value="Submit" name="submit"></center></td></tr>
</table>

</form>
</td>
</tr>
</table>
<button>Remove question</button>
</center>
</body>

<% g=request.getParameter("option");
%>


<%
i++;
}}

catch (Exception ex) {
ex.printStackTrace();

%>

<%
} finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}
out.println("Score="+count);
%>
</html>