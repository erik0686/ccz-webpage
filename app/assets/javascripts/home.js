$(document).on('turbolinks:load', function() {
  if($(".javascript").length > 0)
  {
    var slide_Index = 1;
    showDivs(slide_Index);


  	function plusDivs(n){
  		showDivs(slide_Index += n);
  	}

  	
  		$( "#cc1_image" ).click(function() {
  			showDivs(slide_Index = 1)
  		});
  		$( "#cc2_image" ).click(function() {
  			showDivs(slide_Index = 2)
  		});
  		$( "#cc3_image" ).click(function() {
  			showDivs(slide_Index = 3)
  		});
  	

  	function showDivs(n,m) {
    	var x = $(".mySlides");
    	var y = $(".card_header")
    	var z = $(".home_paragraph")
    	var dots = $(".demo");
    	if (n > x.length) 
    	{
    		slide_Index = 1
    	}

    	if (n < 1) 
    	{ 
    		slide_Index = x.length
    	}

    	for (var i = 0; i < x.length; i++) {
      	 x[i].style.display = "none";
      	 y[i].style.display = "none";
      	 z[i].style.display = "none";
    	}
    	for (i = 0; i < dots.length; i++) {
      	 dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
    	}
    	x[slide_Index-1].style.display = "block";
    	y[slide_Index-1].style.display = "block";
    	z[slide_Index-1].style.display = "block";
    	dots[slide_Index-1].className += " w3-opacity-off";
  	}
  }
  if($(".slideshow").length > 0){

    var slideIndex2 = 1;
    showDivs2(slideIndex2);

    function plusDivs2(n) {
        showDivs2(slideIndex2 += n);
    }

    $( "#button1" ).click(function() {
        plusDivs2(0+1);
    });
    $( "#button-1" ).click(function() {
        plusDivs2(-1);
    });

    function showDivs2(n) {
        var x = document.getElementsByClassName("mySlides2");
        var y = $(".card_header2")
        var z = $(".home_paragraph2")
        if (n > x.length) {slideIndex2 = 1} 
        if (n < 1) {slideIndex2 = x.length} ;
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
            y[i].style.display = "none"; 
            z[i].style.display = "none"; 

        }
        x[slideIndex2-1].style.display = "inline"; 
        y[slideIndex2-1].style.display = "inline"; 
        z[slideIndex2-1].style.display = "inline"; 
    }
  }
});