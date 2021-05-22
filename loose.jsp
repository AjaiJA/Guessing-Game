<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guessing Game</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
    <div class="container">
        <h5 style="text-align:center;line-height:100px;color:red;">You Lost</h5>
        <%
            Integer userNumber=(Integer)session.getAttribute("userNumber");
            Integer randomNumber=(Integer)session.getAttribute("randomNumber");
            String near="";
            if(userNumber<randomNumber){
                near="too Low";
            }
            else if(userNumber>randomNumber){
                near="too HIgh";
            }
        %>
        <h6 style="text-align:center;line-height:100px;color:red;">Guessed number is : <% out.println(near); %></h6>
        <div class="center-align">
            <button class="waves-effect green waves-light btn" onclick="redirect();">Play Again</button>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        function redirect(){
            location.href="./game.html";
        }
    </script>
</body>
</html>