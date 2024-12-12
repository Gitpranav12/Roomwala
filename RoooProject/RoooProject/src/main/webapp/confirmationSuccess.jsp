<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">

<style>
*
{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: "Roboto Slab", serif;
font-optical-sizing: auto;
}

body{
    text-align: center;
    height: 88vh;
     background: linear-gradient(to bottom right, #f2d8d8, #cce7eb);
}

form{
    margin: 6% auto;
    width: 450px;
    padding: 30px;
    box-shadow: 1px 1px 10px gray;
    text-align: center;
    border-radius: 10px;
    background-color: white;
}
img{
    width: 130px;
    height: 80px;
}

div{
    text-align: left;
    margin-top: 30px;
    margin-left: 60px;
}



p{
    margin: 15px;
    margin-bottom: 30px;
    font-size: 16px;
    color: rgb(21, 125, 21);
    font-weight: 600;
}

h1{
    margin-bottom: 10px;
    color: grey;
}

h1 a{
   text-decoration:none;
   color: grey;
}

h2{
    margin: 25px;
    margin-top: 20px;
}

#go{
    margin: 30px;
    margin-left: 60px;
    text-decoration: none;
    background-color: #1e95a6;
    padding: 10px;
    font-size: 17px;
    border-radius: 10px;
    color: black;
}
</style>
</head>
<body>
    <form>
        <h1><a href="Landing.jsp">Roomwala</a></h1>
        <img src="home.png" alt=""><br/>
        <div>
            <h2>Booking Confirmed</h2>
    <p>Your booking has been successfully processed. Thank you!</p>
    <a href="Profile.jsp" id="go">Go Back to Home</a>
    </div>
    </form>
</body>
</html>
