const section_img = document.querySelectorAll('.droite');
const section_img2 = document.querySelector('.gauche');

function animation(){
    section_img.forEach(elt =>{
        if(estVisible(elt)){
            elt.classList.add('active');
        }else{
            elt.classList.remove('active');
        }
    })
    if(estVisible(section_img2)){
        section_img2.classList.add('active2');
    }else{
        section_img2.classList.remove('active2');
    }   
}

function estVisible(elt){
    let distTop = -300; 
    const eltDiv = elt.getBoundingClientRect();

    return eltDiv.top - window.innerHeight < distTop ? true : false;
}

setInterval(animation,30);


// navBar animation

const nav_btn = document.getElementById('nav_btn1');
const nav = document.getElementById('side-nav');

nav_btn.addEventListener('click', function(){

    this.classList.toggle('bars');
    nav.classList.toggle('myNav');
});



//Pop up (code null mais ca marche)

const open = document.getElementById('pop');
const open2 = document.getElementById('pop2');
const open3 = document.getElementById('pop3');

const close= document.getElementById('close');
const close2 = document.getElementById('close2');
const close3 = document.getElementById('close3');

const overlay = document.getElementById('overlay-popup');

open.addEventListener('click',function(){
    const popup = document.getElementById('popup');
    openPopUp(popup);
})
open2.addEventListener('click',function(){
    const popup = document.getElementById('popup2');
    openPopUp(popup);
})
open3.addEventListener('click',function(){
    const popup = document.getElementById('popup3');
    openPopUp(popup);
})

close.addEventListener('click',function(){
    const popup = document.getElementById('popup');
    closePopUp(popup);
})
close2.addEventListener('click',function(){
    const popup = document.getElementById('popup2');
    closePopUp(popup);
})
close3.addEventListener('click',function(){
    const popup = document.getElementById('popup3');
    closePopUp(popup);
})

overlay.addEventListener('click', function(){
    const popup = document.querySelector('.popup.activ');
    closePopUp(popup);
})


function openPopUp(popup){
    if(popup == null) return 
    popup.classList.add('activ')
    overlay.classList.add('activ')
}

function closePopUp(popup){
    if(popup == null) return 
    popup.classList.remove('activ')
    overlay.classList.remove('activ')
}



