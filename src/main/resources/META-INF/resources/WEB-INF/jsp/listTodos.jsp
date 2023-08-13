<%@ include file="common/header.jspf" %>
    <%@ include file="common/navigation.jspf" %>
        <div class="container">
            <h1 class="text-center">Courses </h1>
            <a href="form-todo" class="btn btn-success mb-3">Add Todo</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Description</th>
                        <th>Target Date</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <td>${todo.id}</td>
                            <td>${todo.description}</td>
                            <td>${todo.targetDate}</td>
                            <td>${todo.done}</td>
                            <td>
                                <a href="delete-todo?id=${todo.id}" class="btn btn-danger">
                                    <i class="fa fa-trash text-white"></i>
                                </a>
                                <a href="update-todo?id=${todo.id}" class="btn btn-warning">
                                    <i class="fas fa-edit text-white"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <%@ include file="common/footer.jspf" %>