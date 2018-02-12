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
window.location.href ="ibm_plan_chooser.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "UNC GREENSBORO" ){
window.location.href ="uncg_plan_chooser.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "UNC CHARLOTTE" ){
window.location.href ="uncc_plan_chooser.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "GOOGLE" ){
window.location.href ="google_plan_chooser.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    

else if ( e == "UNC CHAPELHILL"){
window.location.href ="unc_plan_chooser.html";
//alert ("Login successfully");
// Redirecting to other page.
return false;
}    
    
    
    
    
//window.location.href ="planchooser.html";

// Redirecting to other page.
}
