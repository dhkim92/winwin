<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>



<script type="text/javascript">

$(document).ready(function() {
      
      $.ajax({
         type:"post"
         , url:"/apply/schoolAPI"
         , dataType: "json"
         , success: function( data ) {
            
            console.log(data);
            console.log(JSON.parse(data.data).dataSearch.content);
            
            var list = JSON.parse(data.data).dataSearch.content;
            
            var value = new Array();
            
            for(var i=0; i<list.length; i++) {
               value[i] = list[i].schoolName;
               console.log(value[i]);
               $("#school").append(
                  $("<option>").attr(
                     "value", value[i]
                  ).text(value[i])
               );
            }
            
//             console.log(value);
            
//             if(data.result) {
//             }
         }, error: function() {
            alert("error");
         }
      })
      
      
   });   
   
</script>



</head>
<body>

<h1>API 테스트</h1>
<hr>

<select id="school">
</select>


</body>
</html>