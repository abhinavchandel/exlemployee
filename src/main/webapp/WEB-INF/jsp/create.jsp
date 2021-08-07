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
    width: 100%;
    margin: auto;
}
</style>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<div class="formwrap">
<h3>Add Employee</h3>
<table>
<tr>
<td>First Name: </td><td><input type="text" id="firstName" class="input"></td>
</tr>
<tr>
<td>Last Name: </td><td><input type="text" id="secondName" class="input"></td>
</tr>
<tr>
<td>JOB Title</td><td><input type="text" id="jobtitle" class="input"></td>
</tr>
<tr>
<td>Age</td><td><input type="number" id="age" class="input"></td>
</tr>
<tr>
<td>Start Date</td><td><input type="date" id="startdate" class="input"></td>
</tr>
<tr>
<td>End Date</td><td><input type="date" id="endDate" class="input"></td>
</tr>
<tr>
<th colspan="2"><input type="button" onclick="saveData()" value="Add Employee" class="btn"></th>
</tr>
<tr>
	<td colspan="2"><a href="/" class="btn">Search Employee</a></td>
</tr>
</table>
</div>
</body>
<script type="text/javascript">
function saveData() {
	var data1 = {
            firstName: $("#firstName").val(),
            secondName:$("#secondName").val(),
            	jobtitle:$("#jobtitle").val(),
            		age:$("#age").val(),		
            startdate:$("#startdate").val(),
            endDate:$("#endDate").val()
           
        }
	
	 $.ajax({
         url: 'saveData',
         type: 'post',
         
         data: JSON.stringify(data1),
         contentType: "application/json; charset=utf-8",
         success: function (data) {
            console.log(data);
            alert("data save successfully");
         }
        
     }); 
 
	
}

</script>
</html>