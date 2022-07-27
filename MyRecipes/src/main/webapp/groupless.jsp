<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Groups</title>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
	<h3 align="center">Welcome to MyRecipes!</h3>
	<p>Hello <%=session.getAttribute("username")%>!</p>
	<section class = "groupless">
	<p>You currently do not have a group. Please either make one or join one!</p>
    <style>
        .option_wrapper
        {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 300px;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin: 0 10px 0 10px;
        }

    </style>
      <div class="row">
        <div class="col-md option_wrapper" style="text-align: center;">
            <form action="make_group" method="post">
                <h3>Make a group</h3>
                <div class="form-group">
                    <label for="group_name">Group Name</label>
                    <input type="text" class="form-control" id="group_name" name="group_name" placeholder="Your Group Name">
                    <button type="submit" class="btn btn-primary" style="margin-top: 6px" value="Submit!">Make New Group</button>
                </div>
            </form>
        </div>
        <div class="col-md option_wrapper" style="text-align: center;">
            <form action="join_group" method="post">
                <h3>Join a group</h3>
                <label for="group_id">Group name</label>
                <input type="number" class="form-control" id="group_id" name="group_name">
                <button type="submit" class="btn btn-primary" style="margin-top: 6px" value="Submit!">Join Group</button>
            </form>
        </div>
      </div>
	</section>
	
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry", "The group name was already taken", "failed");
	}else{
		swal("Congrats", "Group Created Successfully", "success");
	}
	</script>


</body>
</html>