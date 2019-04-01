<?php
/**
 * =================================
 * @copyright (c) 2015 Kylaksizov.ru
 * @link http://kylaksizov.ru/
 * =================================
 * @version 0.0.1
 * =================================
 * info: Страница корзины
 * =================================
 **/

if( ! defined( 'DATALIFEENGINE' ) ) {
    die( "Hacking attempt!" );
}

include ('engine/api/api.class.php');

// корзина
require_once ENGINE_DIR . '/modules/kylshop/config.php';

$tpl -> load_template( 'kylshop/cart.tpl' );


$main_settings = $dle_api -> load_table (PREFIX."_kylshop_settings", 'settings', 'name="main"', true, 0, 1);

$_MS = unserialize($main_settings[0]["settings"]);


#	Если пользователь авторизован
if($is_logged == "1" || $kylshop_config["guest_allow"] == true){

    if(!isset($_GET["page"])){ // первая страница корзины

		$cont = '
		
		
		<h1>Мой заказ</h1><a href="#" class="cartClear">очистить</a>
		
		
		<table class="listing-cart staticCart">
			<tr>
				<th>Нименование</th>
				<th width="70">Количество</th>
				<th width="90">Цена / 1 шт.</th>
			</tr>
		</table>
		<div class="totalGoods">Всего: <b>0</b><span> грн.</span></div>';

        $field = '';

        if($kylshop_config["form"] == true){

            if($kylshop_config["form_fields"]){

                $form_fields = json_decode($kylshop_config["form_fields"]);

                foreach ($form_fields as $key => $form_field) {

                    $fields_type = explode("|", $key);

                    // замена на существующие данные авторизированного пользователя
                    $replace_value = explode("=", $fields_type[1]);
                    if(!empty($replace_value[1])){

                        // Тут происходит замена
                        $input_name = $replace_value[0];

                        $input_value = str_replace(array("user_id", "user_name", "user_email", "user_ip"), array($member_id["user_id"], $member_id["name"], $member_id["email"], $_SERVER["REMOTE_ADDR"]), $replace_value[1]);
                        //$input_value = $replace_value[1];

                    } else{

                        $input_name = $fields_type[1];
                        $input_value = "";
                    }
                   

                    if(!empty($fields_type[3])) $fields_type[3] = " " . $fields_type[3];
                    else $fields_type[3] = "";

                    if($fields_type[0] == "text" || $fields_type[0] == "number" || $fields_type[0] == "email" || $fields_type[0] == "tel" || $fields_type[0] == "password" || $fields_type[0] == "hidden"){
                        $field .= '<span class="one_field"><input type="'.$fields_type[0].'" name="'.$input_name.'" id="kylshop_field_'.$input_name.'" placeholder="'.$form_field.'" value="'.$input_value.'"'.$fields_type[3].'></span>';
                    } else if($fields_type[0] == "select"){
                        $options = explode("*", $form_field);
                        $field .= '<span class="one_field"><select name="'.$input_name.'" id="kylshop_field_'.$input_name.'">';
                        foreach ($options as $option) {
                            $field .= '<option value="'.$option.'">'.$option.'</option>';
                        }
                        $field .= '</select></span>';
                    } else if($fields_type[0] == "checkbox" || $fields_type[0] == "radio"){
                        $field .= '<label class="one_field"><input type="'.$fields_type[0].'" name="'.$input_name.'" id="kylshop_field_'.$input_name.'" value="'.$form_field.'"'.$fields_type[3].'> '.$form_field.'</label>';
                    } else if($fields_type[0] == "textarea"){
                        $field .= '<textarea name="'.$input_name.'" id="kylshop_field_'.$input_name.'" placeholder="'.$form_field.'"'.$fields_type[3].'>'.$input_value.'</textarea>';
                    }
                }
                $field .= '<div class="clr"></div>';
            }
        }

        //$field = str_replace(array("{}"), array(), $field);

        if($_MS["online_payments"] == "on") $button_name = 'Перейти к оплате';
        else $button_name = 'Оформить заказ';

		$cont .= '<div class="action_button_cart ">
		<h3>Детали заказа</h3>
            <form id="cart_form"  method="POST" action="'.$config["http_home_url"].'?do=cart&page=payments">
				'.$field.'
				
                <input type="hidden" name="productsIds" id="my_products" value="0" required>
                <input type="hidden" name="productsAmount" id="productsAmount" value="0" required>
			
				
				<div id="deliv_tupe">
				<h4>Доставка</h4>			
				<p>
				<input class="delivery_item" name="delivery_id" id="delivery_id_1" value="Самовывоз со склада" type="radio">
				Самовывоз со склада 
			</p>
			<p>
				<input class="delivery_item" name="delivery_id" id="delivery_id_2" value="Служба доставки Новая Почта" type="radio">
				Служба доставки \'Новая Почта\'
				</p>
				<p>
				<input class="delivery_item" name="delivery_id" id="delivery_id_3" value="Служба доставки Интайм" type="radio">
				Служба доставки \'Интайм\'
				</p>
				<p>
				<input class="delivery_item" name="delivery_id" id="delivery_id_4" value="Служба доставки Деливери" type="radio">
				Служба доставки \'Деливери\'				
				</p>
				<p>
				<input class="delivery_item" name="delivery_id" id="delivery_id_5" value="Служба доставки Meest-express" type="radio">
				Служба доставки \'Meest-express\'
				</p>
				<p>
				<input class="delivery_item" name="delivery_id" id="delivery_id_6" value="Нашим транспортом" type="radio">
				Нашим транспортом
				</p>
				</div>
				<div id="pay_tupe">
				<h4>Оплата</h4>
				<input class="pay_item" name="pay_item_id" id="pay_item_id_1" value="Оплата наличными " type="radio">
				Оплата наличными 
			</p>
			<p>
				<input class="pay_item" name="pay_item_id" id="pay_item_id_2" value="Наложенный платеж" type="radio">
				Наложенный платеж
				</p>
				<p>
				<input class="pay_item" name="pay_item_id" id="pay_item_id_3" value="Безналичный платеж" type="radio">
				Безналичный платеж
				</p>
				</div>
<div id="cart_form_subm" class="btn_buy">'.$button_name.'</div>
				<!--input type="submit" class="btn_buy" value="'.$button_name.'"-->
            </form>
		</div>
		';
    }

    if(isset($_GET["page"]) && $_GET["page"] == "payments"){ // первая страница корзины

        require_once(ENGINE_DIR . '/modules/kylshop/payments.php');

    }

    $content = '<div id="staticCart">'.$cont.'</div>';
}

############################################
#	Если ГОСТЬ
else{

    $content = '<p>Пожалуйста авторизуйтесь, что бы купить товары на нашем сайте.</p>';
}

$tpl -> set('{listing-goods}', $content);

$tpl -> compile( 'content' );
$tpl -> clear();

?>