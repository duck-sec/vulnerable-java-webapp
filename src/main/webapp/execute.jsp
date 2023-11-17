<!DOCTYPE html>
<html>
<head>
    <title>Command Execution Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .result-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .outcome-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>Command Execution Result</h2>
        <hr>
        <div id="result">
            <!-- This is where the command result will be displayed -->
            <pre><%= request.getAttribute("result") %></pre>
        </div>
    </div>
    
    <!-- Add a new div to display status -->
    <div class="outcome-container">
        <h2>Website status...</h2>
        <div id="status"></div>
    </div>
    
    <script>
        // Add an event listener to wait for the DOM to be fully loaded
        document.addEventListener("DOMContentLoaded", function() {
            // Get the result text from the result div
            var resultText = document.getElementById("result").textContent;
            
            // Check if "0% packet loss" is in the result text
            if (resultText.includes("0% packet loss")) {
                // Display "It's up" in the status div
                document.getElementById("status").textContent = "It's up!";
            }
            else{
                   // Display "It's down" in the status div
                   document.getElementById("status").textContent = "It's down!";
            }
        });
    </script>
</body>

</html>
