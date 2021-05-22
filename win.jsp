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
        <h5 style="text-align:center;line-height:100px;color:green;">You Won</h5>
        <%
            int count=(Integer)session.getAttribute("attempt");
        %>
        <h6 style="text-align:center;line-height:100px;color:green;"> You won <% out.println(count==0 ? "in first" : " after " + count); %> attempt </h6>
        <div class="center-align">
            <button class="waves-effect green waves-light btn" onclick="redirect();">Restart Game</button>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        function redirect(){
            location.href="./restart.jsp";
        }
    </script>
</body>
</html>