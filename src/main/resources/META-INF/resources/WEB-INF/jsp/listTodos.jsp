<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Title</title>
        <style>
            table {
                border-collapse: collapse;
            }

            th,
            td {
                padding: 10px;
                /* Adjust the padding value as needed */
                border: 2px solid black;
            }
        </style>
    </head>

    <body>
        <center>
            <div>
                Welcome ${name}
            </div>
            <hr>
            <h1>LIST TODO</h1>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Description</th>
                        <th>TargetDate</th>
                        <th>isDone</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <td>${todo.id}</td>
                            <td>${todo.description}</td>
                            <td>${todo.targetDate}</td>
                            <td>${todo.done}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </center>
    </body>

    </html>