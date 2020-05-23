var i = 0; 
var txt = './show_portfolio';
var speed = 30;

window.onload = function() {

    typeWriter();

}

function typeWriter() {
    if(i < txt.length){
        document.getElementById("Prompt_text").innerHTML += txt.charAt(i);
        console.log(document.getElementById("Prompt_text"));
        i++;
        setTimeout(typeWriter, speed);
    }
}