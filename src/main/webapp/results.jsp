<%@include file="taglib.jsp"%>
<c:set var="title" value="Search Results" />
<%@include file="head.jsp"%>


<script type="text/javascript" class="init">
    $(document).ready( function () {
        $('#userTable').DataTable();
    } );
</script>


<style type="text/css">

    table.table td a.add {
        color: #27C46B;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td i {
        font-size: 19px;
    }

</style>

<html>
<body>


<div class="container-fluid">

    <div class="col-sm-8"><h2>Users</h2></div>
    <table id="userTable" class="table table-bordered" cellspacing="0" width="100%">
        <thead>
        <th>Name</th>
        <th>User Name</th>
        <th>Age</th>
        <th>Action</th>
        </thead>
        <tbody>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.firstName} ${user.lastName}</td>
                <td>${user.userName}</td>
                <td>${user.age}</td>
                <td><a class='add' title="Add" data-toggle="tooltip" href="editUser.jsp"><i class="material-icons" >&#xe146;</i></a>
                    <a class="edit" title="Edit" data-toggle="tooltip" href="editUser?id=${user.id}"><i class="material-icons" >&#xE254;</i></a>
                    <a class="delete" title="Delete" data-toggle="tooltip" href="deleteUser?id=${user.id}"><i class="material-icons" >&#xE872;</i></a></td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
