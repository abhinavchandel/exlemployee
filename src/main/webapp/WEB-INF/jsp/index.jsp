<html>
<head>
</head>
<body>
<style>
h3 {
	text-align: center;
}
.formwrap {
    width: 600px;
    margin: auto;
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 0 20px 0;
    background: #fff9db;
}
.input {
	display: block;
    width: 100%;
    margin-top: 15px;
    font-size: 16px;
    padding: 5px;
}
.btn {
    padding: 10px;
    width: 200px;
    background: #2196f3;
    color: #fff;
    font-weight: bold;
    border: 0;
    margin: 15px auto 20px auto;
    display: block;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
}
table {
    width: 800px;
    margin: auto;
    border: 1px solid #000;
}
.link {
}
</style>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="formwrap">
<h3>Search Employee Application</h3>
<input type="text" id="name" class="input" >
<input type="date" id="startdate" class="input">
<input type="date" id="endDate" class="input">
<input type="button" onclick="getData()" value="Search Employee" class="btn">
<a href="/create" class="btn">+ Add Employee</a>
</div>

<br>
<br>
<table id="table2" border="1">
<tbody>
</tbody>
</body>
<script type="text/javascript">
function getData() {
	var name=$("#name").val();
	if(name.length==0)
		{
		alert("Please enter the employee name");
		return false;}
	var data1 = {
            firstName: $("#name").val(),
            startdate:$("#startdate").val(),
            endDate:$("#endDate").val()
           
        }
  
	 $.ajax({
         url: 'getEmp',
         type: 'post',
         
         data: JSON.stringify(data1),
         contentType: "application/json",
         success: function (data) {
        	  $("#table2").empty();
        	  $("#table2").append(" <tr><th>ID</th><th>Name</th><th>Job Title</th><th>Age</th> <th>Start Date</th> <th>End Date</th> </tr>");
         for(i in data){
       //   		 console.log(data[0].id);

        	  $("#table2").append("<tr><td>"+data[i].id+"</td><td>"+data[i].firstName+" "+data[i].secondName+"</td><td>"+data[i].jobtitle+"</td><td>"+data[i].age+"</td><td>"+data[i].startdate+"</td><td>"+data[i].endDate+"</td></tr>");
        	}
       
         }
        
     }); 
	
}

</script>
</html>