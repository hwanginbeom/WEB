<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
  <title>To-do List</title>
</head>

<style>
body {
  font-family: 'Raleway', sans-serif;
  background: #ddd6f3; /* fallback for old browsers */
  background: -webkit-linear-gradient(to left, #ddd6f3 , #faaca8); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to left, #ddd6f3 , #faaca8); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

#container {
  width: 400px;
  margin: 100px auto;
  background: #EAC8F5;
  box-shadow: 0 0 3px rgba(96, 0, 127, 0.2);
}

h1 {
  background: #430059;
  color: white;
  margin: 0;
  padding: 10px 20px;
  text-transform: uppercase;
  font-weight: normal;
}

.fa-chevron-circle-down {
  float: right;
}

input {
  font-family: 'Raleway', sans-serif;
  font-size: 18px;
  background: rgba(255, 255, 255, 0.3);
  width: 100%;
  padding: 10px 10px 10px 20px;
  box-sizing: border-box;
  color: #430059;
  border: 3px solid rgba(0, 0, 0, 0);
}

input:focus{
  background: rgba(255, 255, 255, 0.3);
  border: 3px solid #430059;
  outline: none;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

li {
  background: #EAC8F5;
  height: 40px;
  line-height: 40px;
  color: #430059;
}

/*this selects every other li child*/
li:nth-child(2n){
  background: rgba(255, 255, 255, 0.3);
}

span {
  background: #C0004C;
  height: 40px;
  margin-right: 20px;
  text-align: center;
  color: white;
  width: 0px;
  display: inline-block;
  transition: 0.2s linear;
  opacity: 0;
}

li:hover span {
  width: 40px;
  opacity: 1;
}

.completed {
  color: #AA00E0;
  text-decoration: line-through;
}

</style>

<body>
  <div id="container">
    <h1>To-Do List <i class="fa fa-chevron-circle-down"></i></h1>
    <input type="text" placeholder="Add New Todo">
    <ul>
      <li><span><i class="fa fa-trash"></i></span> HTML Structure</li>
      <li><span><i class="fa fa-trash"></i></span> jQuery Interactivity</li>
      <li><span><i class="fa fa-trash"></i></span> CSS Styling</li>
    </ul>
  </div>
</body>

<script>
//when a li is clicked in a ul, run this code:
var db = new Firebase("octopus805.firebaseIO.com");
console.log(db);
                      
$("ul").on("click", "li", function(){
  $(this).toggleClass("completed");
});

$("ul").on("click", "span", function(event){
  
  // the 1st "this" refers the span
  $(this).parent().fadeOut(500, function(){
    // the 2nd "this" refers to the li that is fading out
    $(this).remove();
  });
  event.stopPropagation(); //this prevents bubbling
});

$("input[type='text']").keypress(function(event){
  if(event.which === 13){
    var todoText = $(this).val(); // retrieves value from input
    
 
    $(this).val(""); // clears input
    
    // this is a database
    var todoRef = db.push({
      description: todoText
    });
    var key = todoRef = db.push({
      description: todoText
    });
    
    
    // creates new li in ul
    $("ul").append("<li><span><i class='fa fa-trash'></i></span> " + todoText + "</li>");
  }
});

$(".fa-chevron-circle-down").click(function(){
  $("input[type='text']").fadeToggle();
});
</script>

</html>