$(function() {

	//SVG Fallback
	if(!Modernizr.svg) {
		$("img[src*='svg']").attr("src", function() {
			return $(this).attr("src").replace(".svg", ".png");
		});
	};

	//E-mail Ajax Send
	//Documentation & Example: https://github.com/agragregra/uniMail
	$(".ajax_form").submit(function() { //Change
		var th = $(this);
		$.ajax({
			type: "POST",
			url: "/mail.php", //Change
			data: th.serialize()
		}).done(function() {
			alert("Спасибо, скоро мы перезвоним!");
			$.magnificPopup.close();
			setTimeout(function() {
				// Done Functions
				th.trigger("reset");
			}, 1000);
		});
		return false;
	});

	//Chrome Smooth Scroll
	try {
		$.browserSelector();
		if($("html").hasClass("chrome")) {
			$.smoothScroll();
		}
	} catch(err) {

	};

	$("img, a").on("dragstart", function(event) { event.preventDefault(); });
	
});

$(window).load(function() {

	$(".loader_inner").fadeOut();
	$(".loader").delay(400).fadeOut("slow");

});

// $('#cart_form_subm').click(function (e) { 
// 	e.preventDefault();
// //дописати функцію відправки прихованої форми
// $('#cart_form').submit();

// 	;
// });

///====TELEGRAM FORM FUNCTIONS===\\\

function GetGoods(){
	return JSON.parse(localStorage.getItem("Goods"));
}
function AllMoneyGoods(){
	var sum = 0;
	for (var i in GetGoods()){
		sum = sum + (parseInt(GetGoods()[i]["amount"]) * parseFloat(GetGoods()[i]["price"]));
	}
	return sum;
}
$(document).ready(function(){
		
	$("#cart_form_subm").click(function(){
		  var tel = $("#kylshop_field_tele").val();
		   var name = $("#kylshop_field_name").val() ;
	var costumer_coment_text = $("#kylshop_field_comment").val() ;



	$("#costumer_phone").val(tel);
$("#costumer_name").val(name);



			
			$("#payy_tupe").val($(".pay_item").val());
			$("#deliver_tupe").val($(".delivery_item").val());

			var inputName = document.getElementById("kylshop_field_tele");
			if (!inputName.value.trim()) {
				alert("Укажите ваш телефон");
			} else {
				var inputName = document.getElementById("kylshop_field_comment");
				if (inputName.value.trim()) {
					$('form#teleform').append('<input type="hidden" class="tele_form_inp" name="Коментар замовника" id="costumer_coment" value="' + costumer_coment_text + '" />');
				};

//перебераємо всі покупки
		for (var i in GetGoods()) {
					
		$('form#teleform').prepend('<input type="hidden" class="tele_form_inp" name="'+GetGoods()[i]["title"]+'" id="tef'+[i]+'" value="'+GetGoods()[i]["amount"]+'" />');
		}

	$("#teleform_total").val(AllMoneyGoods()+"грн.");
			
$("#teleform").submit();			

}//кінець перевірки телефона на ввід
  
	})
 })

 $("#teleform").submit(function() { //Change
	var th = $(this);
	$.ajax({
		type: "POST",
		url: "/mail.php", //Change
		data: th.serialize()
	}).done(function() {
		
		$("#cart_form").submit();		
		setTimeout(function() {
			
			th.trigger("reset");
		}, 1000);
	});
	return false;
});



///====TELEGRAM FORM FUNCTIONS===\\\





$('.add_to_cart').click(function(){
	var img = $(this).parents('.item_in').find('img');
	console.log(img);
    var cart = $('#cart');
    var imgclone = img.clone()
            .offset({
                top: img.offset().top,
                left: img.offset().left
            })
            .css({
                'opacity': '0.5',
                'position': 'absolute',
                'height': '150px',
                'width': '150px',
                'z-index': '9999'
            })
            .appendTo($('body'))
            .animate({
                'top': cart.offset().top + 10,
                'left': cart.offset().left + 10,
                'width': 50,
                'height': 50
            }, 1300, 'linear');

        imgclone.animate({
            'width': 0,
            'height': 0
        }, function() {
            $(this).detach()
        });  
  });


  $( document ).ready(function(){
	$( "#mob_menu_icon" ).click(function(){	
		$( "#mob_menu_div" ).slideToggle("slow")

		if (!$(this).hasClass("x") ) {			
			$("#mob_m_ham1").addClass('rotate_pl')
			$("#mob_m_ham2").addClass('rotate_ml')
			$("#mob_m_ham3").addClass('hidden')
			$(this).addClass("x")
			$(this).css("paddingTop","20px")
			
			}else{
			$("#mob_m_ham1").removeClass('rotate_pl')
			$("#mob_m_ham2").removeClass('rotate_ml')
			$("#mob_m_ham3").removeClass('hidden')
			
			$(this).removeClass("x")
			$(this).css("paddingTop","10px")
			};



		
		
		//$("#mob_menu_icon").removeClass(("x")
		//$("#mob_m_ham2").remove()
		
		

	});

	$( "#expand_mob_ul" ).click(function(){	
		$( ".mm-menu li ul" ).slideToggle()

		let text = $(this).text();

		if (text =="свернуть" ) {
			
			$(this).text("Розвернуть")
			$("#mob_menu_div").css("height","auto")		
			}else{			
				$("#mob_menu_div").css("height","100%")
				$(this).text("свернуть")
			};	

	})
	
  });