<div class="card_product">
	<div class="event">
		[xfgiven_novinka]<span class="new">Новинка</span>[/xfgiven_novinka]
		[xfgiven_hitman]<span class="stockE" style="background-color: #eb133c;">Скидка</span>[/xfgiven_hitman]
		
				
	</div>
	[full-link]
	<div class="name_product one " style="background: url('[xfvalue_image_url_main_img]');background-repeat:no-repeat;background-size:contain;max-height:260px;background-position:top center;">
		<b>
			<span>{title}</span>
			<!--span>T240 FPK</span-->
		</b>
		<span class="manufacture">[xfvalue_brand]</span>
	</div>
	[/full-link]

	<div class="buy_price">
			
		<span class="stock" [xfnotgiven_new_price]style="opacity: 0;"[/xfnotgiven_new_price]>[xfvalue_price] грн </span>
		
		[xfnotgiven_new_price]<span class="price price_val_ss">[xfvalue_price] грн</span>[/xfnotgiven_new_price]
		[xfgiven_new_price]<span class="price price_val_ss">[xfvalue_new_price] грн</span>[/xfgiven_new_price]

		<div href="{full-link}" class="in_garbage basket_click" data-goodsId="{news-id}"
		data-goodsimg="[xfvalue_image_url_main_img]"
		[xfgiven_new_price] data-goodsPrice="[xfvalue_new_price]" [/xfgiven_new_price]
		[xfnotgiven_new_price] data-goodsPrice="[xfvalue_price]"  [/xfnotgiven_new_price]
		 data-goodsTitle="{title}" >
			<span>В корзину</span>
		</div>
	</div>
	<div id="onecli{news-id}" class="buy_click">
		<span>Купить в 1 клик</span>
	</div>
</div>


<div id="popup{news-id}" class="main_pop-ap_window">
		<div class="pop-ap_window">
			<i id="close{news-id}" class="fas fa-times  "></i>
			<div class="width-pop-ap">
				<h3>Заказать <br> {title} </h3>
				<p class="description">
					Наши специалисты свяжутся с Вами
					в течении 15 минут
				</p>
				<form class="ajax_form" >
					<!-- Hidden Required Fields -->
			<input type="hidden" name="project_name" value="AGROTERN">
			<input type="hidden" name="admin_email" value="agroternua@gmail.com">
			<input type="hidden" name="form_subject" value="Покупка {title}">
			<!-- END Hidden Required Fields -->
					<p>Ваше имя: </p>
					<input type="text" class="enter_name" required>
					<p>Контактный телефон: </p>
					<input type="text" class="enter_phone" required>
					<button type="submit">Заказать</button>
				</form>
			</div>
		</div>
	</div>

	<script>

		$("#onecli{news-id}").click(function (e) { 
			e.preventDefault();

$('#popup{news-id}').addClass('active-pop_ap');
$('html, body').animate({scrollTop: 0}, 700);
			
		});

		$('#close{news-id}').click(function (e) { 
			$('#popup{news-id}').removeClass('active-pop_ap');	
			
		});
			
				
			</script>