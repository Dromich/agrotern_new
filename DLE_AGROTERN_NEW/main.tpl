<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	{headers}

	<link rel="shortcut icon" href="{THEME}/img/favicon/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="{THEME}/img/favicon/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="{THEME}/img/favicon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="{THEME}/img/favicon/apple-touch-icon-114x114.png">
	<!-- icons font -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
		integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	<!-- font -->
	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- style -->
	<link media="screen" href="{THEME}/css/kylshop.css" type="text/css" rel="stylesheet">
	<link media="screen" href="{THEME}/css/engine.css" type="text/css" rel="stylesheet">
	[not-available=showfull]
	<link rel="stylesheet" type="text/css" href="{THEME}/css/style.css">
	<!-- responsive -->
	[/not-available]

	[not-available=main]
<link rel="stylesheet" href="{THEME}/css/media_cat.css">
<!--Медія для каталогу є конфлікт на майні -->
	[/not-available]
	
	<link rel="stylesheet" type="text/css" href="{THEME}/css/media.css">

	[available=showfull]
	<link rel="stylesheet" type="text/css" href="{THEME}/css/style_fls.css">
	<link rel="stylesheet" type="text/css" href="{THEME}/css/media_fls.css">

	[/available]

	<meta name="viewport" content="width=device-width" />
</head>
{AJAX}
<body>
	<header>
		<div class="main_width">
			<div class="responsive nones">
				<div class="responsive_menu flex_betwen">
					<div class="icon_menu">
						<i class="fas fa-bars" id="bars"></i>
						<i class="fas fa-times" id="times"></i>
					</div>
					<div class="search_basket_icon">

						<div id="mobsearch"><i class="fas fa-search"></i></div>
						<div class="mobil_goods"><span></span> <img src="{THEME}/img/icon_basket_responsive.png" alt="basket"></div>
					</div>
					[available=showfull]
					<div class="back">
						<p> <a id="go_catalog" href="#">	<i class="fas fa-long-arrow-alt-left"></i> В каталог</a></p>
					</div>
					[/available]
					[available=cat|static|cart|search]
					<div class="back">
						<p> <a id="go_catalog" href="/">	<i class="fas fa-long-arrow-alt-left"></i> Назад</a></p>
					</div>
					[/available]

				</div>
				<div class="responsive_menu-open nones">
					<div class="main_menu_open">
							[not-desktop]
						<div class="search">
								<form id="quicksearch" method="post">
										<input name="do" value="search" type="hidden">
										<input name="subaction" value="search" type="hidden">
										<input id="story" name="story" placeholder="Введите слово для поиска" autocomplete="off" type="text">
							<button type="submit"></button>
										<!--<div class="sblock">
											<input id="story" name="story" placeholder="Введите слово для поиска" autocomplete="off" type="text">
											<button id="sw" type="submit"><span class="fa fa-search "></span></button>
										</div>-->
									</form>
						</div>
						[/not-desktop]
						<div class="main_list-responsive">
							<div class="list_category" style="background-color: #141d2b;">

									
								<ul>
									<li><a href="/mototraktory/"> Мототракторы <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/minitraktory/">Минитракторы <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/motobloki/">Мотоблоки <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/generatory/">Навесное оборудование <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/navesnoe-oborudovanie/">Генераторы <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/svarochnoe-oborudovanie/">Снегоуборочные машины <i class="fas fa-chevron-right"></i></a></li>
								</ul>							
									
								<ul style="margin-top: 50px; display: block; width: 100%;">
									<li><a href="/o-nas.html">О нас <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/oplata-i-dostavka.html">Доставка и оплата<i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/garantija.html">Гарантия <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/kontaktnaja-informacija.html">Контакты <i class="fas fa-chevron-right"></i></a></li>
									<li><a href="/sotrudnichestvo.html">Сотрудничество <i class="fas fa-chevron-right"></i></a></li>
								</ul>
								<div class="menu_responsive">
									<div style="background-color: #141d2b;">
										<div id="consult_mob" class="buttons_copyS">
											<span>
												<a href="#box">Заказать консультацию</a>
											</span>
										</div>
										<div class="phone">
											<ul>
												<li><a href="tel:(068)382-32-82">
														<p>(068) 382-32-82</p>
													</a></li>
												<li><a href="tel:(093)382-32-82">
														<p>(093) 382-32-82</p>
													</a></li>
											</ul>
										</div>
										<div class="days_work">
											<ul>
												<li>Пн-Пт: 8:00-22:00</li>
												<li>Сб-Вс: 8:00-20:00</li>
											</ul>
										</div>
										<div class="location none">
											<ul>
												<li>г.Киев, улича Васильковская 1</li>
												<li style="color: #fff;">центральный офис компании</li>
											</ul>
										</div>
										<div class="email_responsive">
											<ul>
												<li class="email">agroternua@gmail.com</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container_main">
				<div class="container_main-menu">
					<div class="logo">
						<a href="/"> <img src="{THEME}/img/logo.png" class="logo-" alt="logo"></a>
						<div class="phone none">
							<ul>
								<li><a href="tel:(068)382-32-82"><b>(068) 382-32-82</b></a></li>
								<li><a href="tel:(093)382-32-82"><b>(093) 382-32-82</b></a></li>
							</ul>
						</div>
					</div>
					<div class="main_container_menu">
						<div class="menu">
							<div>
								<ul class="flex">
									<li><a href="/o-nas.html">О нас</a></li>
									<li><a href="/oplata-i-dostavka.html">Доставка и оплата</a></li>
									<li><a href="/garantija.html">Гарантия</a></li>
									<li><a href="/sotrudnichestvo.html">Сотрудничество</a></li>
									<li><a href="/kontaktnaja-informacija.html">Контакты</a></li>
									<li><a href="#box" class="pop_ap"><b>Заказать консультацию</b></a></li>
								</ul>
							</div>
						</div>
						<div class="line"></div>
						<div class="container_main-two flex">
								[desktop]
							<div class="search">
									<form id="quicksearch" method="post">
											<input name="do" value="search" type="hidden">
											<input name="subaction" value="search" type="hidden">
											<input id="story" name="story" placeholder="Введите слово для поиска" autocomplete="off" type="text">
								<button type="submit"></button>
											<!--<div class="sblock">
												<input id="story" name="story" placeholder="Введите слово для поиска" autocomplete="off" type="text">
												<button id="sw" type="submit"><span class="fa fa-search "></span></button>
											</div>-->
										</form>

								
							</div>
							[/desktop]
							<div class="phone">
								<ul>
									<li><a href="tel:(068)382-32-82"><b>(068) 382-32-82</b></a></li>
									<li><a href="tel:(093)382-32-82"><b>(093) 382-32-82</b></a></li>
								</ul>
							</div>
							<div class="days_work">
								<ul>
									<li><b>Пн-Пт: 8:00-22:00</b></li>
									<li><b>Сб-Вс: 8:00-20:00</b></li>
								</ul>
							</div>
							{cart}
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<section class="slider_main back_slider">
		<h2 style="display: none;">%%%</h2>
		<div class="main_width">
			<div class="category_menu">
				<ul>
					<li id="mototraktor" ><a href="/mototraktory/">Мототракторы</a></li>
					<li id="minitraktor"><a href="/minitraktory/">Минитракторы</a></li>
					<li id="motoblok"><a href="/motobloki/">Мотоблоки</a></li>
					<li id="generator"><a href="/generatory/">Генераторы</a></li>
					<li id="dop_oborudov"><a href="/navesnoe-oborudovanie/">Навесное оборудование</a></li>
					<li  id="svrka"><a href="/svarochnoe-oborudovanie/">Сварочное оборудование</a></li>
				</ul>
			</div>
			<!-- hover menu -->
			
		{include file="hover_menu.tpl"}
			<!-- end hover menu -->
			<!-- pop-ap window -->
			<div class="main_pop-ap_window">
				<div class="pop-ap_window">
					<i class="fas fa-times close_window"></i>
					<div class="width-pop-ap">
						<h3>Заказать консультацию</h3>
						<p class="description">
							Наши специалисты свяжутся с Вами
							в течении 15 минут
						</p>
						<form class="ajax_form" action="">

							<!-- Hidden Required Fields -->
			<input type="hidden" name="project_name" value="AGROTERN">
			<input type="hidden" name="admin_email" value="agroternua@gmail.com">
			<input type="hidden" name="form_subject" value="Консультация">
			<!-- END Hidden Required Fields -->
							<p>Ваше имя: </p>
							<input type="text" class="enter_name">
							<p>Контактный телефон: </p>
							<input type="text" class="enter_phone">
							<button type="submit">Заказать</button>
						</form>
					</div>
				</div>
			</div>
			<!-- end pop-ap window -->


			
			[available=main]
			<div class="slider">
				<div class="slide">
					<!-- <img src="img/slide.png" alt="slide"> -->
				</div>
				<div class="pages">
					<div class="element_pages"></div>
					<div class="element_pages actvie_pages"></div>
					<div class="element_pages"></div>
				</div>
			</div>
			[/available]
			[available=showfull]
			{speedbar}
			[/available]
			
		</div>
	</section>

	[available=cart|search]
	<section class="catalog">
		<div class="main_width">
				<div id="main_cont_1" class="">
						{info}{content}
				</div>
			
		</div>
	</section>
	[/available]

	[available=showfull|static]
	{info}{content}
	[/available]

	[available=main]
	{include file="main_content.tpl"}
	[/available]

	[available=cat]
	{include file="mai_cat.tpl"}
	[/available]

	<footer>
		<div class="main_footer">
			<div class="navigation_main">
				<div class="main_width flex">
					<div class="logo">
						<img src="{THEME}/img/logo.png" alt="logo">
					</div>
					<div class="navigation flex_betwen">
						<div class="phone">
							<ul>
								<li><a href="tel:(068)382-32-82"><b>(068) 382-32-82</b></a></li>
								<li><a href="tel:(093)382-32-82"><b>(093) 382-32-82</b></a></li>
							</ul>
						</div>
						<div class="days_work">
							<ul>
								<li><b>Пн-Пт: 8:00-22:00</b></li>
								<li><b>Сб-Вс: 8:00-20:00</b></li>
							</ul>
						</div>
						<div class="location">
							<ul>
								<li><b>г.Киев, улича Васильковская 1</b></li>
								<li>центральный офис компании</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="main_width">
				<div class="containers__ flex_betwen">
					<div class="block_content">
						<div>
							<p>
								Компания «Agrotern» основана в 2008 году и, на данный момент, это самая крупная компания
								по реализации сельскохозяйственной техники на рынке Украины. В ассортименте
								интернет-магазина Вы найдете продукцию только самых надежных торговых марок, таких как
								Garden Scout, Forte, DW, Shifeng, Claus, DongFeng, Xingtai, Foton, Jinma, Файтер, Булат,
								ДТЗ и множество других.
							</p>
							<p>
								Покупая в интернет-магазине «Agrotern», Вы можете быть уверены в качестве представленной
								продукции - весь товар поставляется напрямую от ведущих производителей Мира.
							</p>
						</div>
						<div class="full_description">
							<a href="#box">Читать полностью <i class="fas fa-caret-right"></i></a>
						</div>
						<div id="consult_footer1" class="buttons">
							<span>
								<a href="#box">Заказать консультацию</a>
							</span>
						</div>
					</div>
					<div class="block_ul">
						<ul>
							<li class="first">Мототракторы</li>
							<li>Garden Scout</li>
							<li>Shifeng</li>
							<li>Булат</li>
							<li>Файтер</li>
							<li>Forte</li>
							<li>DW</li>
							<li>Добрыня </li>
							<li>Claus</li>
							<li>Витязь</li>
							<li>Lider</li>
							<li>ДТЗ</li>
						</ul>
					</div>
					<div class="block_ul-two">
						<ul>
							<li class="first">Минитракторы</li>
							<li>Shifeng</li>
							<li>Булат</li>
							<li>DW</li>
							<li>ДТЗ</li>
							<li>DongFeng</li>
							<li>Foton</li>
							<li>Jinma</li>
							<li>Mitsubishi</li>
							<li>SOLIS</li>
							<li>WUZHENG</li>
							<li>Xingtai</li>
							<li>Zoomlion</li>
							<li>МТЗ(Belarus)</li>
						</ul>
					</div>
					<div class="block_ul-three">
						<ul>
							<li class="first">Мотоблоки</li>
							<li class="to">Навесное оборудование</li>
							<li class="to">Генераторы</li>
							<li class="to">Снегоуборочные машины</li>
						</ul>

						<ul>
							<li class="to">О нас</li>
							<li class="to">Доставка и оплата</li>
							<li class="to">Гарантия</li>
							<li class="to">Контакты</li>
							<li class="to">Сотрудничество</li>

							<li class="si">по вопросам сотрудничества</li>
							<li class="email">agroternua@gmail.com</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="main_end">
				<div class="main_width">
					<div class="end flex_betwen">
						<div class="year">
							<p>
								© 2012—2018 AGROTERN Все права защищены
							</p>
						</div>
						<div class="visa flex">
							<div>
								<p>
									Принимаем к оплате:
								</p>
							</div>
							<div>
								<img src="{THEME}/img/icon_visa.png" alt="visa">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_responsive none" id="nones">
			<div id="consult_footer2"class="buttons_copyS">
				<span>
					<a href="#box">Заказать консультацию</a>
				</span>
			</div>
			<div class="block_responsive">
				<div class="phone">
					<ul>
						<li><a href="tel:(068)382-32-82">
								<p>(068) 382-32-82</p>
							</a></li>
						<li><a href="tel:(093)382-32-82">
								<p>(093) 382-32-82</p>
							</a></li>
					</ul>
				</div>
				<div class="days_work">
					<ul>
						<li>Пн-Пт: 8:00-22:00</li>
						<li>Сб-Вс: 8:00-20:00</li>
					</ul>
				</div>
				<div class="location none">
					<ul>
						<li>г.Киев, улича Васильковская 1</li>
						<li style="color: #fff;">центральный офис компании</li>
					</ul>
				</div>
				<div class="email_responsive">
					<ul>
						<li class="email">agroternua@gmail.com</li>
					</ul>
				</div>
				<div class="visa">
					<div>
						<p>
							Принимаем к оплате:
						</p>
					</div>
					<div>
						<img src="{THEME}/img/icon_visa.png" alt="visa">
					</div>
				</div>
				<div class="year">
					<p>
						<span>© 2012—2018 AGROTERN</span>
						<span>Все права защищены</span>
					</p>
				</div>
			</div>
		</div>
	</footer>

	<div class="hidden">
		
	
			<form id="teleform">
				<!-- Hidden Required Fields -->
				<input type="hidden" name="project_name" value="AGROTERN">
				<input type="hidden" name="admin_email" value="agroternua@gmail.com">
				<input type="hidden" name="form_subject" value="Покупка з AGROTERN">
				<!-- END Hidden Required Fields -->
	
				<input id="costumer_name" type="hidden" name="Ім'я замовника">
				<input id="costumer_phone" type="hidden" name="Телефон">
				<input id="deliver_tupe" type="hidden" name="Спосіб доставки">
				<input id="payy_tupe" type="hidden" name="Спосіб оплати">
				<input id="teleform_total" type="hidden" name="Загальна вартість замовлення">
			</form>
	
	
		</div>

	<script type="text/javascript">
	

		// pop-ap window
		let message = document.querySelector('.pop_ap'),
			pop = document.querySelector('.main_pop-ap_window'),
			close = document.querySelector('.close_window'),
			consult_mob = document.getElementById('consult_mob'),
			consult_footer1 = document.getElementById('consult_footer1'),
			consult_footer2 = document.getElementById('consult_footer2'),
			mobsearch = document.getElementById('mobsearch');


			mobsearch.addEventListener('click', function () {
			main_menu_response.classList.add('active_responsive-menu');
			open_menu.style.display = 'none';
			close_menu.style.display = 'block';
		});


			consult_mob.addEventListener('click', function () {
			pop.classList.add('active-pop_ap');
			document.body.style.overflow = 'hidden';
		});

		consult_footer1.addEventListener('click', function () {
			document.body.scrollTop = document.documentElement.scrollTop = 0;
			pop.classList.add('active-pop_ap');
			document.body.style.overflow = 'hidden';
		});

		consult_footer2.addEventListener('click', function () {
			document.body.scrollTop = document.documentElement.scrollTop = 0;
			pop.classList.add('active-pop_ap');
			document.body.style.overflow = 'hidden';
		});
		
		
		
			message.addEventListener('click', function () {
			pop.classList.add('active-pop_ap');
			document.body.style.overflow = 'hidden';
		});
		

		
		close.addEventListener('click', function () {
			pop.classList.remove('active-pop_ap');
			document.body.style.overflow = '';
		});

		// open menu responsive
		let main_menu_response = document.querySelector('.main_menu_open'),
			open_menu = document.querySelector('#bars'),
			close_menu = document.querySelector('#times');

		open_menu.addEventListener('click', function () {
			main_menu_response.classList.add('active_responsive-menu');
			open_menu.style.display = 'none';
			close_menu.style.display = 'block';
		});
		close_menu.addEventListener('click', function () {
			main_menu_response.classList.remove('active_responsive-menu');
			open_menu.style.display = 'block';
			close_menu.style.display = 'none';
		});
		// end menu responsive
	</script>
	[available=showfull|static|search]
	<script>
		$('#dle-content').removeAttr('class');
	</script>

	[/available]
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	[available=showfull]
	<script>

let globalurl = window.location.pathname;
	let gurlarr = globalurl.split('/');
	$('#go_catalog').attr("href", '/' + gurlarr[1] + '/');		
	
	</script>
	[/available]
	[not-available=showfull]

	<script type="text/javascript">
  $(document).ready(function () {
	var nextPage = 2
	$(".button_still").click(function (event) {

		event.preventDefault();

		
		

		if(!$(".button_still").hasClass("filteron")){
			if (nextPage !== undefined) {
			$.ajax({
				url: window.location.pathname+'page/' +	nextPage, //для категорій потрібно вивсети спочатку шорт урл категорії
				success: function (data) {

					$('#ajax-next-page').remove();
					let ajxcont = '<div class="block_catalog">' + $('#dle-content', data).html() + '</div>';
					$('#main_cont_1').append(

						ajxcont

					);
					nextPage++
					//console.log(nextPage);
					split_register();
				},
				error: function (data) {
					$(".button_still").remove();
					

				}
			})
		}
		}else{
		
			if($('.navigation-button').length == 0){
	
	$(".filteron").css('opacity', '0.3');
}
$('#filter-next').click();
			console.log("filteron")
		}

	


	});	
	function split_register() {
		
		$('.price').each(function () {
	var price = $(this).text();
	//console.log(price);
	var metamorf = price .replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 ');
	$(this).text(metamorf);	
	});
	}
	
	split_register();
});
//console.log(window.location.pathname)
	</script>

[/not-available]
[available=cat]
<script type="text/javascript" src="{THEME}/js/filter.js"></script>
[/available]

	<link rel="stylesheet" href="{THEME}/js/fotorama/fotorama.css">
	<script src="{THEME}/js/fotorama/fotorama.js"></script>
	<script type="text/javascript" src="{THEME}/js/kylshop.js"></script>
	<script type="text/javascript" src="{THEME}/js/common.js"></script>
	

</body>

</html>