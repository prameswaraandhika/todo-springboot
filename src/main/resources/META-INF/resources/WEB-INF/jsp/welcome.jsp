<%@ include file="common/header.jspf" %>
    <%@ include file="common/navigation.jspf" %>

        <div class="container">
            <div class="jumbotron mt-5">
                <h1 class="display-4">Welcome, ${name}!</h1>
                <p class="lead">Manage your todos with ease.</p>
                <hr class="my-4">
                <a class="btn btn-primary btn-lg" href="list-todos" role="button">View Todos</a>
            </div>
        </div>

        <%@ include file="common/footer.jspf" %>