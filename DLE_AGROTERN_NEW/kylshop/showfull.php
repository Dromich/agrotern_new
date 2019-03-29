<?php
/**
 * =================================
 * @copyright (c) 2015 Kylaksizov.ru
 * @link http://kylaksizov.ru/
 * =================================
 * @version 0.0.1
 * =================================
 * работа с полной новостью
 * =================================
 **/

if( ! defined( 'DATALIFEENGINE' ) ) {
	die( "Hacking attempt!" );
}

if(isset($_GET["newsid"]) && ctype_digit($_GET["newsid"])) $news_id = trim($_GET["newsid"]);

#######################################
#   получаем инфу из определённой новости
$row = $db -> super_query( "SELECT id, date, category, xfields, title, alt_name FROM " . PREFIX . "_post WHERE id={$news_id} LIMIT 1");

// массив с доп-полями
$xfields = xfieldsdataload( $row['xfields'] );

#######################################
#   получаем url новости
if( $config['allow_alt_url'] ) {
    if( $config['seo_type'] == 1 OR $config['seo_type'] == 2  ) {
        if( $row['category'] and $config['seo_type'] == 2 ) {
            $full_link = $config['http_home_url'] . get_url( $row['category'] ) . "/" . $row['id'] . "-" . $row['alt_name'] . ".html";
        } else {
            $full_link = $config['http_home_url'] . $row['id'] . "-" . $row['alt_name'] . ".html";
        }
    } else {
        $full_link = $config['http_home_url'] . date( 'Y/m/d/', $row['date'] ) . $row['alt_name'] . ".html";
    }
} else {
    $full_link = $config['http_home_url'] . "index.php?newsid=" . $row['id'];
}
#   получаем url новости end
#######################################

#######################################
#   если пользователь авторизован
if($is_logged == "1" || $kylshop_config["guest_allow"] == true){

    if($is_logged != "1" && isset($_COOKIE["tmp_name"])){

        $is_buy = $dle_api -> load_table ( PREFIX."_kylshop_buy", "*", "tmp_name='{$_COOKIE["tmp_name"]}' and news_id LIKE '%{$news_id}%'", true, 0, 1);

    } else{

        $is_buy = $dle_api -> load_table ( PREFIX."_kylshop_buy", "*", "name='{$member_id["name"]}' and news_id LIKE '%{$news_id}%' and email='{$member_id["email"]}'", true, 0, 1);

    }

    if($is_buy !== false && $is_buy[0]["status"] !== "0"){ // если купил товар

        if($is_buy[0]["status"] == "1"){
            # показываем товар пользователю
            $tpl->result['content'] = str_replace ( "[kylshop]", '<b class="your_goods">Ваш товар:</b><br>', $tpl->result['content'] );
            $tpl->result['content'] = str_replace ( "[/kylshop]", '', $tpl->result['content'] );
        } else if($is_buy[0]["status"] == "m"){
            # показываем товар пользователю
            $status_m = '<span class="kylshop_show_m"><b>Статус покупки:</b> на модерации.</span>';
            $tpl->result['content'] = preg_replace( "'\[kylshop](.*?)\[/kylshop\]'si", $status_m , $tpl->result['content'] );
        } else{
            # показываем товар пользователю
            $status_undefined = '<span class="kylshop_show_m"><b>Статус покупки:</b> неизвестно! Обратитесь к администратору сайта.</span>';
            $tpl->result['content'] = preg_replace( "'\[kylshop](.*?)\[/kylshop\]'si", $status_undefined , $tpl->result['content'] );
        }

    } else{ // если не купил товар
    
        //require_once ENGINE_DIR . '/modules/kylshop/privat-24.php';

        $webmoney_settings = $dle_api -> load_table (PREFIX."_kylshop_settings", 'settings', 'name="webmoney"', true, 0, 1);
        $_WM = unserialize($webmoney_settings[0]["settings"]);

        $description = base64_encode($xfields["goods_description"]); // название товара, вернее его описание для оплаты

        $count_orders = file_get_contents(ENGINE_DIR . '/modules/kylshop/count_orders.txt'); // номер покупки

     
        $form_buy = '<div class="payment_buttons">
		<a id="by_btn'.$news_id.'" href="'.$full_link.'" class="add_to_cart " data-goodsId="'.$news_id.'" data-goodsimg="'.$xfields["main_img"].'" data-goodsPrice="'.(float)$xfields["price"].'" data-goodsTitle="'.$row['title'].'">В корзину</a>
        </div>';
        // getCurrency((float)$xfields["price"], 'RUB', 'UAH')
        $tpl->result['content'] = preg_replace( "'\[kylshop](.*?)\[/kylshop\]'si", $form_buy , $tpl->result['content'] );
    }

#######################################
#   если гость
} else{

    $info_logged = '<div class="kylshop_no_logged">Что бы купить товар, необходимо <a href="'.$config["http_home_url"].'index.php?do=register">зарегистрироваться</a>.</div>';

    // заменяем скрытые блоки на информацию о том, что нужно зарегистрироваться
    $tpl->result['content'] = preg_replace( "'\[kylshop](.*?)\[/kylshop\]'si", $info_logged, $tpl->result['content'] );
}
#    если гость end
#######################################

//echo '<pre>';
//print_r($rows_buy);
//echo '</pre>';

?>