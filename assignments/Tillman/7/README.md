# Assignment 7
Create an endpoint called /save to save the username and password to passwords.json

Copy source and add this code:
```
    loginButton.onclick = function(){
    let username = loginForm.querySelectorAll("input")[0].value;
    let password = document.getElementById("edit-password").value;
    $.get(
    "/save",
    {username : username, password : password},
    function(data) {
       
    }
);
  
};
```
### Youtube Video
https://www.youtube.com/watch?v=Oe_fuedZmZY
