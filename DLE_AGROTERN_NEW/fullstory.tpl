<section class="card_product_">
	<div class="main_width">
		<div class="main_content flex_betwen">
			<div class="slider">
				<div class="fotorama" data-width="100%" data-maxheight="550" data-allowfullscreen="native"
					data-fit="contain" data-autoplay="true" data-loop="true" data-nav="thumbs">

					[xfvalue_slide_img]

				</div>
			</div>
			<div class="content_card">
				<div class="title">
					<h1>
						<span>{title}</span>

				</div>
				<div class="manufacture">
					<ul>
						<li>Производитель: <b>[xfvalue_brand]</b></li>
						[xfgiven_on-sale]<li><b><i class="fas fa-check"></i> В наличии</b></li>[/xfgiven_on-sale]
						[xfnotgiven_on-sale]<li><b><i class="fas fa-check"></i> Нет в наличии</b></li>
						[/xfnotgiven_on-sale]
					</ul>
				</div>
				<div class="slider_responsive none">
					<div class="">
						<div class="fotorama" data-width="100%"  data-height="320" data-allowfullscreen="native"
							data-fit="contain" data-autoplay="true" data-loop="true" >

							[xfvalue_slide_img]

						</div>
					</div>
				</div>
				<div class="price_card">
					<div class="card">
						<div class="price">
							<ul>
								<li>Цена:</li>
								<li><b> <span class="price_val">[xfvalue_price] </span>
										грн</b></li>
							</ul>
						</div>
						<div class="card_buttons_price">
							<div href="{full-link}" class="basket_click " data-goodsId="{news-id}"
								data-goodsimg="[xfvalue_image_url_main_img]" data-goodsPrice="[xfvalue_price]"
								data-goodsTitle="{title}">
								<span>В корзину</span>
							</div>
							<div class="one_click">
								<span>Купить в один клик</span>
							</div>
						</div>
					</div>
					<div class="specifications_list none two_block_spec">
						<div class="titles">
							<h2>
								Краткие характеристики
							</h2>
						</div>
						<div class="list">
							<div class="short_desk">
									{short-story}
							</div>


							
						</div>
					</div>
					<div class="services_list">
						<ul>
							<li><a href="/oplata-i-dostavka.html">Оплата и доставка</a></li>
							<li>Купить в кредит</li>
							<li><a href="/garantija.html">Гарантии</a> </li>
						</ul>
					</div>
				</div>
				<div class="specifications_list">
					<div class="titles">
						<h2>
							Краткие характеристики
						</h2>
					</div>
					<div class="list">

							<div class="short_desk">
									{short-story}
							</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="tabs_container_main">
	<div class="main_width">
		<div class="main_tabs_container">
			<div class="tabs">
				<div class="main_menu_tabs flex">
					<div id="desc_tab_ttl" class="tubs_item-description">
						<h2 class='tabs-item-title'>
							Описание
						</h2>
					</div>
					<div id="spec_tab_ttl" class="tubs_item-specifications active_tabs">
						<h2 class='tabs-item-title'>
							Характеристики
						</h2>
					</div>
				</div>
			</div>
			<div id="tab_spec" class="tabs_open_specifications flex_betwen">

				<div class="one_block_tabs_specifications one_block">

					{full-story}

				</div>
			</div>
			<div id="tab_desc" class="tabs_open_specifications flex_betwen" style="display:none;">

				<div class="one_block_tabs_specifications one_block">

						
						[xfvalue_description]

				</div>
			</div>
			<br>
			<!--<div class="hint">
				<p>
					Всплывающий текст с <br>
					обьснениями параметрами
				</p>
			</div>-->
		</div>
	</div>
</section>
<section class="modal">
	<div class="main_width">
		<div class="title_modal">
			<h1>
				Похожие модели
			</h1>
		</div>
		<div class="catalog_stock">


			{custom category="{category-id}" navigation="no" from="0" limit="4" fixed="no" order="rand" sort="desc"	cache="yes"}

		</div>
	</div>
</section>


<script>
	function split_register() {
		$('.price_val').each(function () {
			var price = $(this).text();
			//console.log(price);
			var metamorf = price.replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ');
			$(this).text(metamorf);
		});

		$('.price_val_ss').each(function () {
			var price = $(this).text();
			//console.log(price);
			var metamorf = price.replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ');
			$(this).text(metamorf);
		});
	}

	split_register();
</script>

<div id="popup{news-id}" class="main_pop-ap_window">
	<div class="pop-ap_window">
		<i id="close{news-id}" class="fas fa-times "></i>
		<div class="width-pop-ap">
			<h3>Заказать <br> {title} </h3>
			<p class="description">
				Наши специалисты свяжутся с Вами
				в течении 15 минут
			</p>
			<form class="ajax_form">
				<!-- Hidden Required Fields -->
				<input type="hidden" name="project_name" value="AGROTERN">
				<input type="hidden" name="admin_email" value="agroternua@gmail.com">
				<input type="hidden" name="form_subject" value="Покупка з AGROTERN">
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
	let cli = document.querySelector('.one_click'),
		popcli = document.getElementById('popup{news-id}'),
		closepopcli = document.getElementById('close{news-id}');

	cli.addEventListener('click', function () {
		document.body.scrollTop = document.documentElement.scrollTop = 0;
		popcli.classList.add('active-pop_ap');
		document.body.style.overflow = 'hidden';
	});
	closepopcli.addEventListener('click', function () {
		popcli.classList.remove('active-pop_ap');
		document.body.style.overflow = '';
	});

	$('#cat_yrl_fls').text('{title}');
	let myurl = window.location.pathname;
	let urlarr = myurl.split('/');
	$('#cat_url_ttl').attr("href", '/' + urlarr[1] + '/');

$('#desc_tab_ttl').click(function (e) { 
	if ($(this).hasClass('active_tabs')) {
		$(this).removeClass('active_tabs');
		$('#spec_tab_ttl').addClass('active_tabs');
		$("#tab_desc").slideToggle();	
	$("#tab_spec").slideToggle();
	}else{
		$(this).addClass('active_tabs');
		$('#spec_tab_ttl').removeClass('active_tabs');
		$("#tab_spec").slideToggle();
	$("#tab_desc").slideToggle();
	}	
});
$('#spec_tab_ttl').click(function (e) { 
	if ($(this).hasClass('active_tabs')) {
		$(this).removeClass('active_tabs');
		$('#desc_tab_ttl').addClass('active_tabs');
		$("#tab_spec").slideToggle();
		$("#tab_desc").slideToggle();	
	
	}else{
		$(this).addClass('active_tabs');
		$('#desc_tab_ttl').removeClass('active_tabs');
		$("#tab_desc").slideToggle();
		$("#tab_spec").slideToggle();	
	}	
});


</script>