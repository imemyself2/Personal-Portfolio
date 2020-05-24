var i = 0; 
var txt = 'DARSHIL KANERIA';
var speed = 70;
var compsci = document.getElementById("compsci");
var college = document.getElementById("college");
var navbar = document.getElementById("navbar");
var navbuttons = document.getElementsByClassName("navbutton");
console.log(navbuttons);


window.onload = function() {

    typeWriter();
    this.compsci.style.opacity = 1;
    this.college.style.opacity = 1;
    this.navbar.style.opacity = 1;
    // for(var i = 0; i < navbuttons.length; i++){
    //     navbuttons[i].addEventListener("mouseover", () => {
    //         this.style.color = "linear-gradient(to right, whitesmoke, rgb(189, 226, 21))";
    //     });
    //     navbuttons[i].addEventListener("mouseout", () => {
    //         this.style.color = "whitesmoke";
    //     });
    // }

}

function typeWriter() {
    if(i < txt.length){
        document.getElementById("name_homepage").innerHTML += txt.charAt(i);
        console.log(document.getElementById("name_homepage"));
        i++;
        setTimeout(typeWriter, speed);
    }
}

