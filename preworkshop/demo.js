function show_topic1() {
    x = parseInt(prompt("Enter x:"));
    y = parseInt(prompt("Enter y:"));
    z = x + y;
    var x = document.getElementById("demo");
    x.style.fontSize = "25px";
    x.style.color = "red";
    x.style.background = "green"
    document.getElementById("demo").innerHTML = "<center><h1 style='color:yellow;'>The answer is:" + z + "</h1></center>";
 }
 
 function get_imput() {
     x = parseInt(prompt("Enter x"));
     y = parseInt(promt ("Enter y"));
     return x,y
 }

 function show_topic2() {
    var x = 0;
    var y = 0;
    z = get_input(x,y);
    var my_answer = document.getElementById("demo");
    my_answer.style.fontSize = "25px";
    my_answer.style.color = "red";
    my_answer.style.background = "green"
    document.getElementById("demo").innerHTML = "<center><h1 style='color:yellow;'>The answer is:" + z + "</h1></center>";
 }
 
 function get_input(x,y) {
    x = parseInt(prompt("Enter x:"));
    y = parseInt(prompt("Enter y:"));
    return x+y;
 }
 
 function get_imput2(x,y) {
    var x = parseInt(document.forms["Imputform"]["x"].value);
    var y = parseInt(document.forms["Imputform"]["y"].value);
    return x+y
 }