
//hide & show of booking form
const showBookForm = document.getElementById('showBookFormBtn');
const hideBookForm = document.getElementById('hideBookFormBtn');
const BookForm = document.getElementById('AlHiddenDv4');

showBookForm.addEventListener('click',function(){
    BookForm.style.display = 'block';
});
hideBookForm.addEventListener('click',function(){
    BookForm.style.display = 'none';
});

//hide & show of screen table
const showScreen = document.getElementById('showScreenBtn');
const hideScreen = document.getElementById('hideScreenTb');
const Screenc = document.getElementById('AlHiddenDv3');

showScreen.addEventListener('click',function(){
    Screenc.style.display = 'block';
});
hideScreen.addEventListener('click',function(){
    Screenc.style.display = 'none';
})

//hide & show of available seats
const showAvlst = document.getElementById('showAvlstBtn');
const hideAvlst = document.getElementById('hideAvlstBtn');
const Avlst = document.getElementById('AlHiddenDv2');

showAvlst.addEventListener('click',function(){
    Avlst.style.display = 'block';
});
hideAvlst.addEventListener('click',function(){
    Avlst.style.display = 'none';
});

//hide & show of Todays shows
const showToShow = document.getElementById('showTdBtn');
const hideToshow = document.getElementById('hideTOshwBtn');
const TodayShow = document.getElementById('AlHiddenDv1');

showToShow.addEventListener('click',function(){
    TodayShow.style.display = 'block';
});
hideToshow.addEventListener('click',function(){
    TodayShow.style.display = 'none';
});


//home button click
document.getElementById('HomeBtn').addEventListener('click',function(){
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
});

