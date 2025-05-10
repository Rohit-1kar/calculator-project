<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>

<body style="background-color:aqua;">
 <center><h1>Addition and Substraction</h1></center>
  
    <center><form  action="index.jsp" method="post" style=" padding: 20px;background-color: antiquewhite; width: 400px; border-radius: 5%;border: 2px solid gray;";>
        <center style="margin-top: 50px;">
          <div style="margin-top: 30px;">
            <label for="o">Number 1 </label>
          <input class="form-control" id="o" type="text" placeholder="Enter value"  name="num1"> 
          </div><br><br>
          <label for="p">Number 2 </label><input id="p" class="form-control" type="text" placeholder="Enter value"  name="num2"><br><br>
          
          <button class="btn btn-outline-danger" type="submit" name="operation" value="add">Addition</button>
          <button class="btn btn-outline-success" type="submit" name="operation" value="sub">Subtraction</button>  <br><br> 
      </center></form>
    </center>
     
      
     <%
     
     try{
    	 
    	 String operation=request.getParameter("operation");
     if("add".equals(operation)){
     int n1= Integer.parseInt(request.getParameter("num1"));
     int n2= Integer.parseInt(request.getParameter("num2"));
     int result=n1+n2;
     out.println();
     out.println( "<center><span style='font-size: 30px';>Result :-"+result+"</span></center>");}
     else{
    	  int n1= Integer.parseInt(request.getParameter("num1"));
    	     int n2= Integer.parseInt(request.getParameter("num2"));
    	     int result=n1-n2;
    	     out.println();
    	     out.println( "<center><span style='font-size: 30px';>Result :-"+result+"</span></center>");
    	     }
     }catch(Exception e)
     {
    	 e.getStackTrace();
     }
       %>
       
      
</body>
</html>