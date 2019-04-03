 var bigRedBut = document.getElementsByClassName('butt red');
 function split_register() {
		
	$('.price').each(function () {
var price = $(this).text();
//console.log(price);
var metamorf = price .replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ');
$(this).text(metamorf);	
});
}

 function move_Fvalue(e, ui0, ui1) {
 	$(e + ' .val1').stop().animate({
 		left: $(e + ' .ui-slider-handle').eq(0).css('left')
 	}, 200).html(ui0 ? ui0 : (e == '#xf_price' ? $(e).slider("values", 0).toFixed(1) : $(e).slider("values", 0)));
 	$(e + ' .val2').stop().animate({
 		left: $(e + ' .ui-slider-handle').eq(1).css('left')
 	}, 200).html(ui1 ? ui1 : (e == '#xf_price' ? $(e).slider("values", 1).toFixed(1) : $(e).slider("values", 1)));


 }

 $(document).ready(function () {
 		$("#xf_price").slider({
 			range: true,
 			min: 100,
 			max: 450000,
 			step: 500,
 			values: [1500, 150000],
 			slide: function (event, ui) {
 				move_Fvalue('#xf_price', ui.values[0], ui.values[1]);
 			},
 			stop: function (event, ui) {
 				move_Fvalue('#xf_price', ui.values[0], ui.values[1]);
 				$('#xf_price .ui-slider-handle').each(function (i) {
 					i++;
 					if ($(this).hasClass('ui-state-focus')) {
 						$('#xf_price .filter-value').css({
 							'z-index': 0
 						});
 						$('#xf_price .val' + i).css({
 							'z-index': 1
 						});
 					}
 				});


 			},
 			change: function (event, ui) {
 				$('#dle-content').html('<br>'); //костиль який заміняє вивід фільра на пустишку щоб відображалась анімація

$('#filter_red_but').click();
 				
 			}
 		})
 		//.append('<div class="steps"><span class="s1">'+45757+'</span><span class="s2">'+156682+'</span><span class="s3">'+261338+'</span><span class="s4">'+400000+'</span><span class="s5">'+500000+'</span></div>');
 		move_Fvalue('#xf_price');



 		$('.filter-buttons .masha_index').remove();

 		$('.filter-buttons .cbtn').click(function () {
 				$(this).toggleClass('active');
 			})
 			.mouseleave(function () {
 				$(this).blur();
 			});





 	})
 	.click(function (e) {
 		if ($('.filter-buttons .butt .active ').length == 0)
 			return;
 		e = e || window.event;
 		var target = e.target || e.srcElement;
 		while (target) {
 			if (target == $('.filter-buttons').get(0))
 				return;
 			target = target.parentNode;
 		};
 	})
 	.on('click', ' #filter-next,  #filter_red_but', function () {
 		//$('#dle-content').remove();
 		//$('#content').html('<br>'); //костиль який заміняє вивід фільра на пустишку щоб відображалась анімація


 		var genre = [],
 			xf_power = [],
 			xf_brand = [],
 			xf_cylinders = [],
 			xf_wd = [],
 			xf_weels = [],
 			xf_cabin = [],
 			xf_coling = [],
 			xf_toplivo = [],
 			xf_prdz = [],
 			xf_tip_obor = [],
 			cstart = $(this).data('cstart');
 		if ($('#filter-next').length == 0) $('#dle-content').prepend('<div class="navigation-button"><a id="filter-next" data-cstart="0"></a></div>');
 		nextBtn = $('#filter-next');
 		i = 0;
 		$('#cat_value').each(function () {
 			genre[i] = $(this).text();
 			i++;


 		});
 		i = 0;
 		$('#xf_power .checkbox').each(function () {
 			if ($(this).prop('checked')) {
 				xf_power[i] = $(this).attr('label');
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_brand .checkbox').each(function () {
			// console.log($(this));
 			if ($(this).prop('checked')) {								
 				xf_brand[i] = $(this).context.labels[0].innerText;
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_cylinders .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_cylinders[i] = $(this).html();
 				i++;
 				console.log($(this).html());
 			}
 		});
 		i = 0;
 		$('#xf_wd .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_wd[i] = $(this).html();
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_weels .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_weels[i] = $(this).html();
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_cabin .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_cabin[i] = $(this).html();
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_coling .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_coling[i] = $(this).html();
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_toplivo .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_toplivo[i] = $(this).html();
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_prdz .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_prdz[i] = $(this).html();
 				i++;
 			}
 		});
 		i = 0;
 		$('#xf_tip_obor .cbtn').each(function () {
 			if ($(this).hasClass('active')) {
 				xf_tip_obor[i] = $(this).html();
 				i++;
 			}
 		});
 		i = 0;
 		if (!cstart) cstart = 0;
 		xf_price_start = $('#xf_price .val1').html();
 		xf_price_end = $('#xf_price .val2').html();

console.log(xf_brand)

 		gf = 1;
 		nextBtn.css({
 			'text-indent': '-9999px',
 			'position': 'relative',
 			'margin': '4px 0 -10px',
 			backgroundColor: '#eee'
 		}).animate({
 			height: 3,
 			border: 0,
 			width: '100%'
 		}, 'fast', function () {
 			$(this).append('<span></span>').children('span').animate({
 				width: '50%'
 			}, 'slow');
 			$.get("/engine/ajax/filter.php", {
 					genre: genre,
 					genre_filter: 1,
 					xf_tip_obor: xf_tip_obor,
 					gf,
 					xf_prdz: xf_prdz,
 					xf_toplivo: xf_toplivo,
 					xf_coling: xf_coling,
 					xf_power: xf_power,
 					xf_brand: xf_brand,
 					xf_wd: xf_wd,
 					xf_weels: xf_weels,
 					xf_cabin: xf_cabin,
 					xf_price_start: xf_price_start,
 					xf_price_end: xf_price_end,
 					xf_cylinders: xf_cylinders,
 					cstart: cstart
 				},function (data) {
					$(".filteron").css('opacity', '1');

					 var mainData= '<div class="block_catalog">' + data + '</div>';
 					nextBtn.children('span').animate({
 						width: '100%'
 					}, 'slow', function () {
 						if (cstart > 0){
							$('#main_cont_1').append(mainData);
							split_register();} 
						 else {
							$('#dle-content').removeAttr('class');
							$('#dle-content').html(mainData);
							$(".button_still").addClass('filteron');
							split_register();
						 }
						 
 						$(this).parents('.navigation-button').fadeOut(200, function () {
 							$(this).remove()
 						});

 					});

				 }

 			);
 		});


 		return false;

 	});


 $(window).resize(function () {
 	move_Fvalue('#xf_price');

 });


 function eventFire(el, etype) {
 	if (el == undefined) {
 		console.log("елемент відсутній")
 	} else {

 		if (el.fireEvent) {
 			el.fireEvent('on' + etype);
 		} else {
 			var evObj = document.createEvent('MouseEvents');
 			evObj.initEvent(etype, true, false);
 			var canceled = !el.dispatchEvent(evObj);
 			if (canceled) {
 				// A handler called preventDefault.
 				console.log("automatic click canceled");
 			} else {
 				// None of the handlers called preventDefault.
 			}
 		};
 	};
 };