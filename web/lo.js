/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var attempt = 3; // Variable to count number of attempts.
// Below function Executes on click of login button.
function validate(){
var username = document.getElementById("u").value;
var password = document.getElementById("p").value;
if ( username == "employee1" && password == "123"){
window.location.href ="clientchooser.html";
alert ("Login successfully");
// Redirecting to other page.
return false;
}
else if ( username == "employee2" && password == "123"){
window.location.href ="clientchooser.html";
alert ("Login successfully");
// Redirecting to other page.
return false;
}
else if ( username == "employee3" && password == "123"){
window.location.href ="clientchooser.html";
alert ("Login successfully");
// Redirecting to other page.
return false;
}
else if ( username == "employee4" && password == "123"){
window.location.href ="clientchooser.html";
alert ("Login successfully");
// Redirecting to other page.
return false;
}
else if ( username == "employee5" && password == "123"){
window.location.href ="clientchooser.html";
alert ("Login successfully");
// Redirecting to other page.
return false;
}
else if ( username == "fundmanager" && password == "123"){
window.location.href ="Fundmanager.html";
alert ("Login successfully");
// Redirecting to other page.
return false;
}
else if ( username == "client" && password == "123"){
window.location.href ="clientchooser_home.html";

alert ("Login successfully");
// Redirecting to other page.
return false;
}

else if ( username == "ina" && password == "123"){
window.location.href ="homepage_investment_advisor.html";
alert ("Login successfully");
// Redirecting to other page.
return false;
}

else{
//attempt --;// Decrementing by one.
alert("Login Unsuccessful;");
// Disabling fields after 3 attempts.
//if( attempt == 0){
//document.getElementById("u").disabled = true;
//document.getElementById("p").disabled = true;
//document.getElementById("submit").disabled = true;
//return false;
}
}
//}
//}



