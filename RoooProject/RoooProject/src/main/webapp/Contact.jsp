<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">
    <title>Contact Us - Roomwala</title>
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
            background: linear-gradient(to bottom right, #f2d8d8, #cce7eb);
}

        header 
        {
            width: 90%;
            margin: 20px auto;
            text-align: center;
            box-shadow: 1px 1px 10px black;
            border-bottom-right-radius:10px;
            border-bottom-left-radius:10px;
            padding: 20px;
            background-color: rgb(242 84 91);
            background: linear-gradient(to right, #f2545b, #d95272);
        }

        header h1{
            margin: 30px;
            color: black;
        }

        nav{
            width: 100%;
            padding: 20px;
            text-align: right;
        }
        
       header h2 a{
 color: whitesmoke;
 text-decoration: none;
 cursor:pointer;
}

        nav a{
            margin: 20px;
            text-decoration: none;
            color: white;
            font-size: 20px;
        }

        #contact
        {
            width: 90%;
            margin: 20px auto;
            text-align: left;
            padding: 20px;
            box-shadow: 1px 1px 10px gray;
            border-radius: 10px;
            background-color: white;
        }

        #contact h2 {
            font-size: 30px;
            color: rgb(242 84 91);
            margin-bottom: 20px;
        }

        #contact form {
            margin-bottom: 40px;
        }

        #contact form label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
        }

        #contact form input, #contact form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 18px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #contact form button {
            padding: 10px 20px;
            font-size: 18px;
            background-color: rgb(242 84 91);
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }

        #team {
            width: 90%;
            margin: 20px auto;
            text-align: center;
            padding: 20px;
            box-shadow: 1px 1px 10px gray;
            border-radius: 10px;
            background-color: white;
        }

        
               #team h2 {
            font-size: 30px;
            color: rgb(242 84 91);
            margin-bottom: 20px;
        }
        
       header h2
        {
         position: absolute;
            margin: 10px;
            font-size: 30px;
        }
      
   #team table{
    margin: 0 auto;
    padding: 0;
    width: 85%;
    text-align: center;
    margin-left: 120px;
}
#team table tr td{
    margin: 0 auto;
    text-align: centre;
    width: 24%;
    padding: 18px;
    vertical-align: top;
    color: black;
}
#team table tr td h3{
    font-size: 27px;
    padding-bottom: 20px;
}
#team table tr td img{
position:relative;
    display: inline;
    width: 20px;
    height: 20px;
    top:7px;
    right:5px;
    
}
#team table tr td p{
    display: inline;
    font-size: 16px;
    color: black;
    text-align: left;
    line-height: 28px;
    word-spacing: 2px;
    font-family: Arial, Helvetica, sans-serif;
    font-weight: 550;
    color: black;
}

        
    </style>
</head>
<body>
    <header>
   <h2><a href="LandingTwo.jsp">Roomwala</a></h2> 
   
        <h1>Contact Us</h1>
    </header>
    <section id="contact">
     <h2>Get in Touch</h2>
        <form action="ContactServlet" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            
            <label for="message">Message</label>
            <textarea id="message" name="feedback" rows="5" required></textarea>
            
            <button type="submit">Submit</button>
        </form>
    </section>
    <section id="team">
        <h2>Meet the Team</h2>
        <table>
                <tr>
                    <td><h3>Aditya V. Dahake</h3>
                    <h4>9579968043</h4>
                    <img src="instagram_1409946.png" alt="insta"><p>@official_Aditya</p><br>
                    <img src="twitter_3670151.png" alt="twitter"><p>@official_Aditya</p><br>
                    <img src="facebook_5968764.png" alt="facebook"><p>@official_Aditya</p><br>
                  </td>
                  
                    <td><h3>Kshitij C. Yawale</h3>
                     <h4>9579968043</h4>
                    <img src="instagram_1409946.png" alt="insta"><p>@official_Kshitij</p><br>
                    <img src="twitter_3670151.png" alt="twitter"><p>@official_Kshitij</p><br>
                    <img src="facebook_5968764.png" alt="facebook"><p>@official_Kshitij</p>
                    </td>
                    <td><h3>Pranav S. Jawarkar</h3>
                    <h4>9579968043</h4>
                    <img src="instagram_1409946.png" alt="insta"><p>@official_Pranav</p><br>
                    <img src="twitter_3670151.png" alt="twitter"><p>@official_Pranav</p><br>
                    <img src="facebook_5968764.png" alt="facebook"><p>@official_Pranav</p>
                    </td>
                </tr>
            </table>
    </section>
</body>
</html>
