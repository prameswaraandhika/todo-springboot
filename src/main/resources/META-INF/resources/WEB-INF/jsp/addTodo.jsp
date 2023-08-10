<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Add Todo </title>
        <link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <style>
            body {
                background-color: #f8f9fa;
            }

            .container {
                margin-top: 50px;
            }

            .table {
                background-color: #fff;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1 class="text-center">Enter TODO details</h1>
            <form method="post">
                Description <input type="text" name="description">
                <input type="submit" class="btn btn-success">
            </form>
        </div>
        <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    </body>

    </html>