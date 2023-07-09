<%-- 
    Document   : dashboard
    Created on : Jul 9, 2023, 7:54:51 PM
    Author     : 84877
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

        <!--phân trang-->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css"/>
    </head>
    <body class="fs-3">
        <jsp:include page="header.jsp" />  
        <div style="margin-top: 50px"></div>
        <h1>Registration</h1>
        <table id="tableData">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Registration Time</th>
                    <th>Course</th>
                    <th>Package</th>
                    <th>Cost</th>
                    <th>Status</th>
                    <th>Valid From</th>
                    <th>Valid To</th>
                    <th>Update By</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${listR}" var="r">
                <tr>
                    <td>${r.id}</td>
                    <td>${r.email}</td>
                    <td>${r.registration_time}</td>
                    <td>${r.course_name}</td>
                    <td>${r.pricePackage.name}</td>
                    <td>${r.pricePackage.sale}</td>
                    <td>
                        ${r.status==0?"Cancel":
                        r.status==1?"Submit":"Success"}
                    </td>
                    <td>${r.valid_from}</td>
                    <td>${r.valid_to}</td>
                    <td>${r.update_by}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div style="margin-bottom: 270px"></div>
        <jsp:include page="footer.jsp" />
        <!--phân trang-->
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script>
            var numQ = 0;
            $(document).ready(function () {
                $('#tableData').DataTable({
                    pagingType: 'full_numbers',
                    searching: false
                });
            });
        </script>
    </body>
</html>
