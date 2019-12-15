<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
int i=0,j;
String question[]=new String[10];
String opA[]=new String[10];
String opB[]=new String[10];
String opC[]=new String[10];
String opD[]=new String[10];
String correct[]=new String[10];
String qID, opID;

try {

Class.forName(driver);
conn = DriverManager.getConnection(url+db,user,pass);
st = conn.createStatement();
rs = st.executeQuery("select * from java");

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
i=0;
}

catch (Exception ex) {
ex.printStackTrace();
}
finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link type='text/css' rel='stylesheet' href='styles.css'/>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="UTF-8">
<title>Java Quiz</title>
<style>
@import('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css') 

html, body {
            height: 100%;
            margin: 0;
        }

        #wrapper {
            max-height: 100%; 
        }
        
.funkyradio div {
  clear: both;
  overflow: hidden;
}

.funkyradio label {
  width: 100%;
  border-radius: 3px;
  border: 1px solid #D1D3D4;
  font-weight: normal;
}

.funkyradio input[type="radio"]:empty,
.funkyradio input[type="checkbox"]:empty {
  display: none;
}

.funkyradio input[type="radio"]:empty ~ label,
.funkyradio input[type="checkbox"]:empty ~ label {
  position: relative;
  line-height: 2.1em;
  text-indent: 3.25em;
  margin-top: 1.2em;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

.funkyradio input[type="radio"]:empty ~ label:before,
.funkyradio input[type="checkbox"]:empty ~ label:before {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #D1D3D4;
  border-radius: 3px 0 0 3px;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label {
  color: #888;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label:before,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #C2C2C2;
}

.funkyradio input[type="radio"]:checked ~ label,
.funkyradio input[type="checkbox"]:checked ~ label {
  color: #777;
}

.funkyradio input[type="radio"]:checked ~ label:before,
.funkyradio input[type="checkbox"]:checked ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #333;
  background-color: #ccc;
}

.funkyradio input[type="radio"]:focus ~ label:before,
.funkyradio input[type="checkbox"]:focus ~ label:before {
  box-shadow: 0 0 0 3px #999;
}

.funkyradio-default input[type="radio"]:checked ~ label:before,
.funkyradio-default input[type="checkbox"]:checked ~ label:before {
  color: #333;
  background-color: #ccc;
}

.funkyradio-primary input[type="radio"]:checked ~ label:before,
.funkyradio-primary input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #337ab7;
}

.funkyradio-success input[type="radio"]:checked ~ label:before,
.funkyradio-success input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5cb85c;
}

.funkyradio-danger input[type="radio"]:checked ~ label:before,
.funkyradio-danger input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #d9534f;
}

.funkyradio-warning input[type="radio"]:checked ~ label:before,
.funkyradio-warning input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #f0ad4e;
}

.funkyradio-info input[type="radio"]:checked ~ label:before,
.funkyradio-info input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5bc0de;
}
</style>
<script>
// Set the date we're counting down to
var countDownDate = new Date("Jan 1, 2019 10:05:00").getTime();
var distance = 300000;
// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  //var now = new Date("Jan 1, 2019 00:00:00").getTime();
    
  // Find the distance between now and the count down date
  //var distance = countDownDate - now;
  // Time calculations for days, hours, minutes and seconds
  //var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  var times = document.getElementsByClassName("ddd");
  //times.forEach(myFunction);
  for(let t of times){
	  t.innerHTML = "<i class=\"fa fa-clock-o\" style=\"font-size:40px;color:red\"></i>    Time Remaining:    " + minutes + " min " + seconds + " sec ";
  }
  distance-=1000;

  //function myFunction(time) {
    //time.innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
  //}
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementsByClassName("ddd").innerHTML = "EXPIRED";
  }
}, 1000);
</script>

<script type="text/javascript">
	var correct=["A","B","C"];
	var answer=["E","E","E"];
	var j=0;
	<%
	for(int k=0;k<=9;k++){
	%>
	correct[<%= k%>]="<%= correct[k]%>";
	<% }%>
</script>
<script>
    function addAnswer(opID) {
        var q=parseInt(opID.substring(1,2));
        var op=opID.substring(4);
        answer[q]=op;
        //alert(answer);
    }
</script>
<script>
	function submitAnswers() {
		var score=0;
		for(j=0; j<=9; j++)
		{
			if(answer[j]==correct[j])
				score++;
		}
		$("body").remove();
		document.write("<h1>You scored "+score+" out of 10!</h1> <a href='home.jsp'>Go to Home</a> <br> <a href='quiz.jsp' class=\"btn-lg btn-primary\" role=\"button\">Play another Quiz</a>");
		//alert("You scored: "+score);
	}
</script>
</head>
<body>


<%
for(i=0;i<=9;i++){
	qID="q"+Integer.toString(i);	//qID for 1st question = q1
	opID=qID+"op";	//opID for 1st question option B = q1opB
	%>
<div id="wrapper">	
<div class id="<%=qID%>" >
<div class="container-fluid bg-info">
    <div class="modal-dialog">
    <p class="ddd" style="font-size:25px; color:blue; padding-left:40px"></p>
      <div class="modal-content">
         <div class="modal-header">
            <h3><span class="label label-warning" id="qid"><%= i+1 %></span>   <%= question[i] %></h3>
        </div>
        <div class="modal-body">
            

          <div class="funkyradio" id="quiz" data-toggle="buttons">
          <div class="funkyradio-success">
            <input type="radio" name="radio<%=i %>" value="<%=opID%>A" id="<%=opID%>A" onclick="addAnswer(this.value)" />
            <label for="<%=opID%>A" > <%= opA[i] %></label>
        </div>
        <div class="funkyradio-success">
            <input type="radio" name="radio<%=i %>" value="<%=opID%>B" id="<%=opID%>B" onclick="addAnswer(this.value)" />
            <label for="<%=opID%>B"> <%= opB[i] %></label>
        </div>
        <div class="funkyradio-success">
            <input type="radio" name="radio<%=i %>" value="<%=opID%>C" id="<%=opID%>C" onclick="addAnswer(this.value)" />
            <label for="<%=opID%>C" > <%= opC[i] %></label>
        </div>
        <div class="funkyradio-success">
            <input type="radio" name="radio<%=i %>" value="<%=opID%>D" id="<%=opID%>D" onclick="addAnswer(this.value)" />
            <label for="<%=opID%>D" > <%= opD[i] %></label>
        </div>
        </div>
       <div style="padding-top: 30px">
       <% if(i!=0){%>
       <a href="#<%=qID.substring(0,1)+Integer.toString(i-1)%>" class="btn btn-primary" role="button"><i class="glyphicon glyphicon-chevron-left"></i>  Prev</a>
       <%} %>
       <% if(i<9){ %>
       <a href="#<%=qID.substring(0,1)+Integer.toString(i+1)%>" class="btn btn-info align-right" style="float:right" role="button">Next  <i class="glyphicon glyphicon-chevron-right"></i></a>
       <%} %>
       <% if(i==9){ %>
       <a href="#" class="btn btn-success align-right" style="float:right" role="button" onclick="submitAnswers()">Submit  <i class="glyphicon glyphicon-chevron-right"></i></a>
       <%} %>
       </div>
   </div>
   <div class="modal-footer text-muted">
</div>

</div>

</div>
<br></br>
</div>

</div>
</div>
<% } %>
</body>
</html>