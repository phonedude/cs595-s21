# Assignment 5
## 5.1
### Request Blocked Solution

Adding this code block to the receiving server (server2.js) allows the request to go through
```
const cors = require('cors')

var corsOptions = {
  origin: '*',
  optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204 
}
```

Before code above is added

![](https://github.com/MylesTillman495/cs595-s21/blob/main/assignments/Tillman/5/images/5.1_request_failed.png)

After code above is added

![](https://github.com/MylesTillman495/cs595-s21/blob/main/assignments/Tillman/5/images/5.1_request_succeed.png)

## 5.2
### 3 different request headers, 2 blocked, 1 allowed
Add this code to the receiving server (server2.js) to reject requests unless the header 'interesting and useful' exists for 'X-CS595s21'
```  let header = req.get('X-CS595s21');
  if(header!=="interesting and useful")
  res.status(500).send('Invalid Header');
  ```

  Responding to 1/3 requests based on headers
  ![](https://github.com/MylesTillman495/cs595-s21/blob/main/assignments/Tillman/5/images/5.2_filter_requests_based_on_header.png)
  


## 5.3
### Using client Javascript to stop iframing
The iframing of abcnews.go.com works initially, but you can prevent iframes from loading by adding

```
window.frames[0].stop();
```

iFrame loads before above code
  ![](https://github.com/MylesTillman495/cs595-s21/blob/main/assignments/Tillman/5/images/5.3_before_stop_loading.png)

iFrame blocked after above code
  ![](https://github.com/MylesTillman495/cs595-s21/blob/main/assignments/Tillman/5/images/5.3_after_stop_loading.png)


## Youtube Video
https://www.youtube.com/watch?v=nGpj-gV02ZU
