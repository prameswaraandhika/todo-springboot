<%@ include file="common/header.jspf" %>
    <%@ include file="common/navigation.jspf" %>

        <div class="container">
            <h1>Enter Todo Details</h1>
            <form:form method="post" modelAttribute="todo">
                <fieldset class="mb-3">
                    <label for="description">Description</label>
                    <form:input type="text" class="form-control" path="description" required="required"
                        id="description" />
                    <form:errors path="description" cssClass="text-warning" />
                </fieldset>

                <fieldset class="mb-3">
                    <label for="targetDate">Target Date</label>
                    <div class="input-group date">
                        <form:input type="text" class="form-control" path="targetDate" required="required"
                            id="targetDate" />
                        <div class="input-group-append">
                            <span class="input-group-text">
                                <i class="fas fa-calendar-alt"></i>
                            </span>
                        </div>
                    </div>
                    <form:errors path="targetDate" cssClass="text-warning" />
                </fieldset>

                <form:input type="hidden" path="id" />
                <form:input type="hidden" path="done" />

                <input type="submit" class="btn btn-success" />
            </form:form>
        </div>

        <%@ include file="common/footer.jspf" %>

            <script type="text/javascript">
                $('#targetDate').datepicker({
                    format: 'yyyy-mm-dd',
                    autoclose: true,
                    showOnFocus: true,
                    orientation: 'bottom'
                });
            </script>