
        const lfDiv=document.getElementById('Container');
        const rtDiv=document.getElementById('TableContainer');
       
        function Shift(){
            lfDiv.style.width = '25vw';
            rtDiv.style.width = '75vw';
        };
		
		
		
		
        //for add movie form
        const addMvBtn=document.getElementById('AddMvBtn');
        const HideShowDiv=document.getElementById('addMovie');
        const HideBtns=document.getElementById('HideBtn');

        addMvBtn.addEventListener('click',function(){
           HideSchFunct();
           HideMvDetailFunction();
           HideDelFunc();
            HideShowDiv.style.display = 'block';
            
        });
        
        HideBtns.addEventListener('click',function(){
            HideShowDiv.style.display = 'none';
            });
            function HideAddMVFunc(){
				HideShowDiv.style.display = 'none';
			};
            

        //for Schedule Movie Block
        const ShowSchMvbtn=document.getElementById('ShowSchMvbtn');
        const HideShowSchMV=document.getElementById('SchShows');
        const HideSchMvbtn=document.getElementById('HidShweBtn');

        ShowSchMvbtn.addEventListener('click',function(){
           HideAddMVFunc();
           HideMvDetailFunction();
           HideDelFunc();
            HideShowSchMV.style.display = 'block';
        });
          
        HideSchMvbtn.addEventListener('click',function(){
            HideShowSchMV.style.display = 'none';
          });
          
          function HideSchFunct(){
			  HideShowSchMV.style.display = 'none';
		  };
          //for delete Movie section
        
       	const ShowDelMvbtn=document.getElementById('ShowDelBtn');
        const HideShowDelMV=document.getElementById('DelMvDiv');
       	const HideDelMvbtn=document.getElementById('HidDelBtn');

        ShowDelMvbtn.addEventListener('click',function(){
			HideAddMVFunc();
			HideMvDetailFunction();
  			HideSchFunct();
            HideShowDelMV.style.display = 'block';
        });
        HideDelMvbtn.addEventListener('click',function(){
            HideShowDelMV.style.display = 'none';
          });
          function HideDelFunc(){
			  HideShowDelMV.style.display = 'none';
		  };