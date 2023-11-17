<!DOCTYPE html>
<html>
<head>
    <title>Super Website Tester</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        form {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 300px;
            margin: 0 auto;
        }
        label {
            display: block;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
    <h1>Super Website Tester V0.1</h1>
    <div><p>Want to test if a website is up? Use our super secure new app!</p></div>
    <form action="execute" method="post">
        <label for="command">Enter a website to test!:</label>
        <input type="text" id="command" name="command">
        <input type="submit" value="Execute">
    </form>
    

</body>
</html>
