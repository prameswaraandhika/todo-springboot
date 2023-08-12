<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>Add Todo</title>
            <link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
            <style>
                body {
                    background-color: #f8f9fa;
                }

                .container {
                    margin-top: 50px;
                }

                .hidden-inputs {
                    display: none;
                }
            </style>
        </head>

        <body>
            <div class="container">
                <h1 class="text-center">Enter TODO Details</h1>
                <form:form method="post" modelAttribute="todo">
                    <div class="mb-3 hidden-inputs">
                        <label for="id" class="form-label">ID</label>
                        <form:input type="number" class="form-control" name="id" path="id" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <form:input type="text" class="form-control" name="description" path="description"
                            required="required" />
                        <form:errors path="description" cssClass="text-warning" />
                    </div>
                    <div class="mb-3">
                        <label for="targetDate" class="form-label">Target Date</label>
                        <form:input type="text" class="form-control" name="targetDate" path="targetDate"
                            required="required" />
                        <form:errors path="targetDate" cssClass="text-warning" />
                    </div>
                    <div class="mb-3 hidden-inputs form-check">
                        <form:checkbox class="form-check-input" name="done" path="done" />
                        <label for="done" class="form-check-label">Done</label>
                    </div>
                    <input type="submit" class="btn btn-success">
                </form:form>
            </div>
            <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
            <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
        </body>

        </html>