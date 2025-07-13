<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Selfie Style Image</title>
    <style>
        body {
            background: #f0f0f0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .selfie-container {
            width: 250px;
            height: 250px;
            border-radius: 50%;
            overflow: hidden;
            border: 5px solid #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .selfie-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }
    </style>
</head>
<body>

    <div>
        <div class="selfie-container">
            <img src="image\mypic.JPG" alt="Selfie Image" />
        </div>
        <h2>Your Profile</h2>
    </div>

</body>
</html>
