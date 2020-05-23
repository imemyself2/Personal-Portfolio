var i = 0; 
var txt = 'DARSHIL KANERIA';
var speed = 70;
var compsci = document.getElementById("compsci");
var college = document.getElementById("college");
var navbar = document.getElementById("navbar");


window.onload = function() {

    typeWriter();
    this.compsci.style.opacity = 1;
    this.college.style.opacity = 1;
    this.navbar.style.opacity = 1;

}

function typeWriter() {
    if(i < txt.length){
        document.getElementById("name_homepage").innerHTML += txt.charAt(i);
        console.log(document.getElementById("name_homepage"));
        i++;
        setTimeout(typeWriter, speed);
    }
}
