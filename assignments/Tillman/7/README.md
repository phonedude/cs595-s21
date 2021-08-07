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
Password is saved in a JSON file
  ![](https://github.com/MylesTillman495/cs595-s21/blob/main/assignments/Tillman/7/images/passwords_saved.png)
### Youtube Video
https://www.youtube.com/watch?v=Oe_fuedZmZY