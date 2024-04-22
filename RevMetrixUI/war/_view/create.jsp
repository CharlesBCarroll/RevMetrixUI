<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Event</title>
    <link rel="stylesheet" type="text/css" href="CSS/createLeagueStyles.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<body>

    <jsp:include page="navbar.jsp" />

    <div class="topPage">
        <h1>Create Event</h1>
    </div>

    <form action="${pageContext.servletContext.contextPath}/create" method="post">
        <div class="container">
            <h2>Event Details</h2>
            <div class="form-group">
                <label for="establishmentName">Establishment Name:</label>
                <input type="text" id="establishmentName" name="establishmentName">
            </div>
            <div class="form-group">
                <label for="eventName">Event Name:</label>
                <input type="text" id="eventName" name="eventName">
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description"></textarea>
            </div>
            <div class="form-group">
                <label for="eventType">Event Type:</label>
                <select id="eventType" name="eventType">
                    <option value="practice">Practice</option>
                    <option value="league">League</option>
                    <option value="tournament">Tournament</option>
                </select>
            </div>
            <input type="submit" value="Create Event">
        </div>
    </form>

</body>

</html>
