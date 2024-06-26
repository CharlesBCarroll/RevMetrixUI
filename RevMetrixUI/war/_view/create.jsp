<%@ page import="java.util.List" %>
<%@ page import="revMetrix.db.model.Establishment" %>
<%@ page import="revMetrix.controller.EstablishmentController" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RevMetrix - Create Event</title>
    <link rel="stylesheet" type="text/css" href="CSS/createStyles.css">
    <script>
        
        function displayDate() {
            var selectedDate = document.getElementById("date").value;
            var formattedDate = formatDate(selectedDate);
            document.getElementById("dateF").value = "7";
            
           
        }

        // Function to format date in mm/dd/yyyy format
        function formatDate(dateString) {
            var dateObject = new Date(dateString);
            var month = dateObject.getMonth() + 1; // Months are zero based
            var day = dateObject.getDate();
            var year = dateObject.getFullYear();

            // Zero padding for single digits
            month = month < 10 ? '0' + month : month;
            day = day < 10 ? '0' + day : day;

            return month + '/' + day + '/' + year;
        }
    </script>
</head>

<body>
<jsp:include page="navbar.jsp" />
	<div class="topPage">
        <h1>RevMetrix - Create an Event</h1>
    </div>
    <div class="container">
        <h2>Create Event</h2>
        <form action="${pageContext.servletContext.contextPath}/create" method="post">
            <div class="form-group">
                <label for="eventName">Event Name:</label>
                <input type="text" id="eventName" name="eventName" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label for="establishment">Establishment:</label>
                <select id="establishment" name="establishment" onchange="toggleAddNew()" required>
                    <%
                        EstablishmentController establishmentController = new EstablishmentController();
                        List<Establishment> establishments = establishmentController.getAllEstablishments();
                        if (establishments != null && !establishments.isEmpty()) {
                            for (Establishment establishment : establishments) {
                    %>
                    <option value="<%= establishment.getName()%>"><%= establishment.getName() %></option>
                    <%
                            }
                        }
                    %>
                    <option value="addNew">Add New</option>
                </select>
            </div>
            
            <div id="newEstablishmentDiv" class="form-group" style="display: none;">
                <label for="newEstablishment">New Establishment Name:</label>
                <input type="text" id="newEstablishment" name="newEstablishment" placeholder="New Establishment Name">
            </div>
            <div class = "form-group">
            <label for = "date">Date</label>
            <input type="date" id="date" name = "date">
            </div>
            
            <div class="form-group">
                <label for="eventType">Event Type:</label>
                <select id="eventType" name="eventType" required>
                    <option value="practice">Practice</option>
                    <option value="league">League</option>
                    <option value="tournament">Tournament</option>
                </select>
            </div>
            <div class="form-group">
   			 <label for="numberOfSessions">Number of Sessions:</label>
    		<input type="number" id="numberOfSessions" name="numberOfSessions" required>
			</div>
            <input type="submit" value="Create Event">
        </form>
    </div>

    <script>
        function toggleAddNew() {
            var select = document.getElementById("establishment");
            var newEstablishmentDiv = document.getElementById("newEstablishmentDiv");

            if (select.value === "addNew") {
                newEstablishmentDiv.style.display = "block";
                document.getElementById("newEstablishment").focus();
            } else {
                newEstablishmentDiv.style.display = "none";
            }
        }
    </script>

</body>

</html>
