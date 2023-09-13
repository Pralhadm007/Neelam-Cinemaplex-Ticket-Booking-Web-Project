const showPopupButton = document.getElementById('SignUpBtn');
const closePopupButton = document.getElementById('Mainmenu');
const popup = document.getElementById('ppSignUP');

showPopupButton.addEventListener('click', function () {
    popup.style.display = 'block';
});

closePopupButton.addEventListener('click', function () {
    popup.style.display = 'none';
});
const showButton = document.getElementById('ULgIn');
const hideButton = document.getElementById('Mainmenu1');
const ULogin = document.getElementById('ppSignIN');

showButton.addEventListener('click',function(){
    ULogin.style.display = 'block';
});
hideButton.addEventListener('click',function(){
    ULogin.style.display = 'none';
});

const ShowButtonA = document.getElementById('AdLgIn');
const hideButtonA = document.getElementById('Mainmenu2');
const ALogin = document.getElementById('ppAdmSIN');

ShowButtonA.addEventListener('click',function(){
    ALogin.style.display = 'block';
});
hideButtonA.addEventListener('click',function(){
    ALogin.style.display = 'none';
});

const ShowAbout = document.getElementById('Abt');
const HideAbout = document.getElementById('Mainmenu3');
const AboutUs = document.getElementById('ppAbout');

ShowAbout.addEventListener('click',function(){
    AboutUs.style.display = 'block';
});
HideAbout.addEventListener('click',function(){
    AboutUs.style.display = 'none';
});