var i = 0; 
var txt = 'DARSHIL KANERIA';
var speed = 100;
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

class TextScramble {
    constructor(el) {
      this.el = el
    //   this.chars = '!<>-_\\/[]{}—=+*^?#________'
    this.chars = '_0101-'
      this.update = this.update.bind(this)
    }
    setText(newText) {
      const oldText = this.el.innerText
      const length = Math.max(oldText.length, newText.length)
      const promise = new Promise((resolve) => this.resolve = resolve)
      this.queue = []
      for (let i = 0; i < length; i++) {
        const from = oldText[i] || ''
        const to = newText[i] || ''
        const start = Math.floor(Math.random() * 40)
        const end = start + Math.floor(Math.random() * 40)
        this.queue.push({ from, to, start, end })
      }
      cancelAnimationFrame(this.frameRequest)
      this.frame = 0
      this.update()
      return promise
    }
    update() {
      let output = ''
      let complete = 0
      for (let i = 0, n = this.queue.length; i < n; i++) {
        let { from, to, start, end, char } = this.queue[i]
        if (this.frame >= end) {
          complete++
          output += to
        } else if (this.frame >= start) {
          if (!char || Math.random() < 0.28) {
            char = this.randomChar()
            this.queue[i].char = char
          }
          output += `<span class="dud">${char}</span>`
        } else {
          output += from
        }
      }
      this.el.innerHTML = output
      if (complete === this.queue.length) {
        this.resolve()
      } else {
        this.frameRequest = requestAnimationFrame(this.update)
        this.frame++
      }
    }
    randomChar() {
      return this.chars[Math.floor(Math.random() * this.chars.length)]
    }
}
  
const phrases = [
    'Resume',
    'Github',
    'LinkedIn',
 ]
  
const el = document.querySelector('.text')
const fx = new TextScramble(el)
let counter = 0;
fx.setText(phrases[counter]).then(() => {});
document.getElementsByClassName('border')[0].addEventListener('click', function (event) {
    if(phrases[counter] == 'Resume'){
        window.open('https://www.google.com', "_blank");
    }
    else if(phrases[counter] == "Github"){
        window.open('https://www.github.com/imemyself2', "_blank");
    }
    else if(phrases[counter] == "LinkedIn") {
        window.open('https://www.linkedin.com/in/darshilkaneria', "_blank");
    }
});

document.getElementsByClassName('right-arrow')[0].addEventListener('click', function (event) {
    counter = (counter + 1) % phrases.length;
    fx.setText(phrases[counter]).then(() => {});
});

document.getElementsByClassName('left-arrow')[0].addEventListener('click', function (event) {
    counter = (counter - 1) % phrases.length;
    fx.setText(phrases[counter]).then(() => {});
});

