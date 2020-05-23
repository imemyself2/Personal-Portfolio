var i = 0; 
var txt = 'DARSHIL KANERIA';
var speed = 50;

window.onload = function() {

    typeWriter();

}

function typeWriter() {
    if(i < txt.length){
        document.getElementById("name_homepage").innerHTML += txt.charAt(i);
        console.log(document.getElementById("name_homepage"));
        i++;
        setTimeout(typeWriter, speed);
    }
}