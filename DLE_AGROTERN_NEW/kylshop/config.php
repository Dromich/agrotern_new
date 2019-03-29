<?php
/**
 * =================================
 * @copyright (c) 2015 Kylaksizov.ru
 * @link http://kylaksizov.ru/
 * =================================
 * @version 0.0.1
 * =================================
 * info: 
 * =================================
 **/

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}

$kylshop_config = array(

    // валюта
	"currency" => 'USD',
    // валюта
	"ccy" => 'руб.',
    // название кнопки
	"submit" => 'Перейти к оплате',
	"send_theme" => 'Новая покупка',

    // количество заказов на странице
	"limit_orders" => 15,

	"freekassa_id" => '',
	"secret_word1" => '',
	"secret_word2" => '',

    // разрешить гостью покупку товара
	"guest_allow" => 1,

    // показывать форму
	"form" => 1,

    // текст после оформления заказа
	"text_after_offer" => '<h1>Спасибо за заказ</h1>
	<script>
	localStorage.clear();
	setTimeout(() => {
		location.href = "/";
	}, 6000);
	</script>
	
	',

    // поля формы
	"form_fields" => '{"text|name=user_name|Имя покупателя:|required":"Ваше имя:","text|tele|Телефон|required":"Ваш телефон","hidden|ip=user_ip|IP покупателя:|":"","textarea|comment|Комментарий к заказу:|":"Ваш комментарий:"}',

);