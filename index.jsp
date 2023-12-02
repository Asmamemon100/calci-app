<html>
				<head>
				<title> Calci App  by Kamal Sir </title>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
				<style> 
								* { font-size:50px; font-family: Arial, Calibri, Cambria; }
								body { background-image: url("img1.jpg"); }
				</style>
				<script>
								function validation( )
								{
												let num1 = document.getElementById("num1");
												let  num2 = document.getElementById("num2");
												let res = document.getElementById("res");
												
												
												if ( num1.value== "")
												{
													alert("first number is empty");
													res.innerHTML = " ";
													num1.focus( );
													return false;
												}
												if (num2.value == " " )
												{
														alert("second number is empty");
														res.innerHTML = " ";
														num2.focus();
														return false;
												}
												else
												{
														return true;
												}
}
</script>
</head>

<body>
<center>
					<h1> Calci App </h1>
					<form onsubmit="return validation( )" method="POST">
					<input type="number" step="any" placeholder="enter first number"
					name="num1" id="num1" />
					<br><br>
					<input type="number" step="any"placeholder="enter second number " name="num2" id="num2"/>
					<br><br>
					<input type="submit" name="add"  value="Add" class= "btn btn-success"  />
					<input type="submit" name="sub"  value="Sub" class= "btn btn-danger"  />
					<input type="submit" name="mul"  value="Mul" class= "btn btn-warning"  />

					</form>
					
					<%
					if ( request.getParameter("add") != null )
					{
							double n1 = Double.parseDouble(request.getParameter("num1") );
							double n2 = Double.parseDouble(request.getParameter("num2"));

							String res="add= " + (n1+n2);
					%>
							<h1 id="res"> <%= res %> </h1>
							
							<%
												}
												else if(request.getParameter("sub") != null)
												{
														double n1 =Double.parseDouble(request.getParameter("num1"));
														double n2  =Double.parseDouble(request.getParameter("num2"));
														String res  = "sub = " + (n1-n2);
							%>
										<h1 id="res"> <%= res %> </h1>

							<%
										}		
										else if(request.getParameter("mul") != null)
										{
											double n1 =Double.parseDouble(request.getParameter("num1"));
											double n2  =Double.parseDouble(request.getParameter("num2"));
											String res= "mul= " + (n1 * n2);
							%>
											<h1 id="res"> <%= res %> </h1>
							<%
										}
							%>
										
							</center>
							</body>
</html>
							
							