<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
        html, body {
            height: 100%;
            margin: 0;
        }

        #wrapper {
            min-height: 100%; 
        }
    </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $("body").remove();
  });
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru JSP4</title>
</head>
<body>
<% int i=0;
    String name[]={"Swaraj", "Priyadarshan", "Dash"};
for(i=0;i<name.length;i++)
{
	String id="demo"+Integer.toString(i);
%>
<div id="wrapper">
<div id="<%=id%>">
<center>
<h1>Test</h1>
<h1><%=name[i]%></h1>
<% if(i!=0){%>
<a href="#<%=id.substring(0,id.length()-1)+Integer.toString(i-1)%>">Prev</a>
<%} %>
<a href="#<%=id.substring(0,id.length()-1)+Integer.toString(i+1)%>">Next</a>
</center>
</div>
</div>
<%
} %>
<script>
</script>
</body>
</html>