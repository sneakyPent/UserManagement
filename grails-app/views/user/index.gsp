<%--
  Created by IntelliJ IDEA.
  User: zacnik
  Date: 10/6/2022
  Time: 11:57 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <link
            rel="stylesheet"
            type="text/css"
            href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"/>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create">Create</g:link></li>
    </ul>
</div>

<div id="list-user" class="content scaffold-list" role="main">
    <f:table id="myTable" collection="${userList}"/>

</div>
%{--<div id="user-browser" class="content" role="main">--}%
%{--    <h1>User Browser</h1>--}%
%{--    <table id="user_dt" class="display compact" style="width:99%;">--}%
%{--        <thead>--}%
%{--        <tr>--}%
%{--            <th>First name</th>--}%
%{--            <th>Last name</th>--}%
%{--            <th>Email</th>--}%
%{--            <th>Password</th>--}%
%{--            <th>Address</th>--}%
%{--            <th>Active</th>--}%
%{--        </tr>--}%
%{--        </thead>--}%
%{--        <tfoot>--}%
%{--        <tr>--}%
%{--            <th>First name</th>--}%
%{--            <th>Last name</th>--}%
%{--            <th>Email</th>--}%
%{--            <th>Password</th>--}%
%{--            <th>Address</th>--}%
%{--            <th>Active</th>--}%
%{--        </tr>--}%
%{--        </tfoot>--}%
%{--    </table>--}%
%{--</div>--}%


%{--<script--}%
%{--        type="text/javascript"--}%
%{--        charset="utf8"--}%
%{--        src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>--}%
%{--<script--}%
%{--        type="text/javascript"--}%
%{--        charset="utf8"--}%
%{--        src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>--}%
%{--<script>--}%
%{--    var table = $('#user_dt').DataTable(--}%
%{--        {--}%
%{--            "scrollY": 500,--}%
%{--            "deferRender": true,--}%
%{--            "scroller": true,--}%
%{--            "dom": "Brtip",--}%
%{--            "buttons": ['copy', 'csv', 'excel', 'pdf', 'print'],--}%
%{--            "processing": true,--}%
%{--            "serverSide": true,--}%
%{--            "ajax": {--}%
%{--                "url": "${createLink(controller: 'user', action: 'index')}",--}%
%{--                "type": "POST",--}%
%{--            },--}%
%{--            "columns": [--}%
%{--                {"data": "firstName"},--}%
%{--                {"data": "lastName"},--}%
%{--                {"data": "email"},--}%
%{--                {"data": "password"},--}%
%{--                {"data": "address"},--}%
%{--                {"data": "active"}--}%
%{--            ]--}%
%{--        });--}%

%{--    // table.columns().every(function () {--}%
%{--    //     var that = this;--}%
%{--    //     $('input', this.footer()).on('keyup change', function (e) {--}%
%{--    //         console.log(this)--}%
%{--    //         console.log(that)--}%
%{--    //         // if (that.search() != this.value && 8 < e.keyCode && e.keyCode < 32)--}%
%{--    //         //     that.search(this.value).draw();--}%
%{--    //     });--}%
%{--    // });--}%

%{--</script>--}%
</body>
</html>