/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function planchooser(){
var e = document.getElementById("ibm").value;
//var f = document.getElementById("uncg").value;
//var g = document.getElementById("uncc").value;
//var h = document.getElementById("google").value;
//var i = document.getElementById("unc").value;

    
if ( e == "IBM" ){
window.location.href ="client_ibm_fund_display.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "UNC GREENSBORO" ){
window.location.href ="client_uncg_fund_display.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "UNC CHARLOTTE" ){
window.location.href ="client_uncc_fund_display.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "GOOGLE" ){
window.location.href ="client_google_fund_display.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "UNC CHAPELHILL"){
window.location.href ="client_unc_fund_display.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    
}
