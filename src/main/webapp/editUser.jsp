<%@include file="taglib.jsp"%>
<c:set var="title" value="Add/Edit User" />
<%@include file="head.jsp"%>


<html>

<body>

<p><p></p>
<div class="container-fluid">
   <h2>Add/Edit User</h2><br/>
    <form id="editUserForm" role="form" data-toggle="validator"
          class="form-horizontal"
          action="editUser"
          method="POST">

        <input type="hidden" id="id"
               name="id"
               value = ${user.id}>

        <div class="form-group">
            <label class="control-label col-sm-2" for="firstName">First Name</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="firstName"
                       name="firstName"
                       value = "${user.firstName}"
                       data-error="Please enter the user's first name." required>
            </div>
            <div class="help-block with-errors"></div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="lastName">Last Name</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="lastName"
                       name="lastName"
                       value = "${user.lastName}"
                       data-error="Please enter the user's last name."
                       required>
            </div>
            <div class="help-block with-errors"></div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="userName">Username</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="userName"
                       name="userName"
                       value = "${user.userName}"
                       data-error="Please enter the username."
                       required>
            </div>
            <div class="help-block with-errors"></div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="dateOfBirth">Date Of Birth</label>
            <div class="col-sm-4">
                <div class="input-group date" data-provide="datepicker">
                    <input type="text" class="form-control" id="dateOfBirth" name="dateOfBirth"
                           value = "${user.dateOfBirthForDisplay}" data-error="Please enter the user's date of birth"
                           required>
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-th"></span>
                    </div>
                </div>
                <div class="help-block with-errors"></div>
            </div>
        </div>



        <button type="submit" class="btn btn-default col-sm-offset-3"
                data-disable="true">Add
        </button>
        <button type="reset" class="btn btn-default">Clear</button>
        <a href ="searchUser?searchTerm=&submit=viewAll"><button type="button" class="btn btn-default">Cancel</button></a>
    </form>
</div>
</body>
</html>
