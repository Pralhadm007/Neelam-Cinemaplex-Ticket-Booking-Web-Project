//for Show Movie Detail
		/*const ShowMvBtn = document.getElementById('ShowMvBtn');*/
		const ShowMvDiv1 = document.getElementById('ShowMvDiv');
		/*const HideMvDiv = document.getElementById('HideMvDiv');*/
		function ShowMvDetailFunc(){
			Shift();
			ShowMvDiv1.style.display = 'block';
			HideSchFunct();
      		HideAddMVFunc();
       		HideDelFunc();
		};
		function HideMvDetailFunction(){
			ShowMvDiv1.style.display = 'none';
		};
		
		