<?php
// Heading
$_['heading_title']           = 'Настройки';

// Text
$_['text_success']            = 'Настройки успешно изменены!';
$_['text_image_manager']      = 'Управление изображениями';
$_['text_browse']              = 'Просмотр файлов';
$_['text_clear']               = 'Очистить изображение';
$_['text_shipping']            = 'Адрес доставки';
$_['text_payment']             = 'Платёжный адрес';
$_['text_mail']                 = 'Mail';
$_['text_smtp']                 = 'SMTP';


$_['text_items']                   = 'Показы';
$_['text_product']                 = 'Продукты';
$_['text_voucher']                 = 'Ваучеры';
$_['text_tax']                     = 'Налоги';
$_['text_account']                 = 'Аккаунт';
$_['text_checkout']                = 'Чекаут';
$_['text_stock']                   = 'Склад';
$_['text_affiliate']               = 'Партнерство';
$_['text_return']                  = 'Возвраты';

// Entry
// Entry
$_['entry_product_count']          = 'Количество продуктов в категории:<br /><span class="help">Показывает количество продуктов в подкатегориях в пользовательской части в верхнем меню. Осторожно, увеличивает нагрузку на сервер при большом количестве подкатегорий!</span>';
$_['entry_voucher_min']            = 'Минимальная количество ваучеров:<br /><span class="help">Минимальное количество ваучеров для покупки.</span>';
$_['entry_voucher_max']            = 'Максимальное количество ваучеров:<br /><span class="help">Максимальное количество ваучеров дла покупки.</span>';
$_['entry_vat']                    = 'Проверка номера налога:<br /><span class="help">Проверяйте номер налога на http://ec.europa.eu service.</span>';
$_['entry_customer_online']        = 'Онлайн пользователи:<br /><span class="help">Считать количество пользователей online.</span>';
$_['entry_customer_group_display'] = 'Группы пользователей:<br /><span class="help">Отображать доступные группы пользователей во время регистрации.</span>';
$_['entry_order_edit']             = 'Редактирование заказа:<br /><span class="help">Количество дней в течении которого заказа может быть отредактирован. Поле обязательное потому что цены и скидки могут измениться, и заказ может стать некорректниым после редактирования.</span>';



$_['entry_fraud_detection']        = 'Использовать MaxMind систему обнаружения мошенников:<br /><span class="help">MaxMind сервис для обнаружения мошенников. Если у вас нет лицензионного ключа вы можете <a onclick="window.open(\'http://www.maxmind.com/?rId=opencart\');"><u>получить его здесь</u></a>. Как только вы его получите, скопируйте ключ в поле представленное ниже.</span>';
$_['entry_fraud_key']              = 'MaxMind лицензионный ключ:</span>';
$_['entry_fraud_score']            = 'MaxMind очки:<br /><span class="help">Высокие очки означают что заказ скорее всего мошеннический. Выставляйте очки между 0 и 100.</span>';
$_['entry_fraud_status']           = 'MaxMind статус ордера:<br /><span class="help">Заказы с высокими очками будут переведены в данный статус и автоматическая смена статуса будет отключена для данных заказов.</span>';

$_['entry_name']              = 'Название магазина:';
$_['entry_owner']             = 'Владелец магазина:';
$_['entry_address']           = 'Адрес магазина:';
$_['entry_email']               = 'E-Mail:';
$_['entry_telephone']         = 'Телефон:';
$_['entry_fax']               = 'Факс:';
$_['entry_title']             = 'Заголовок:';
$_['entry_meta_description']  = 'Мета-тег "Описание":';
$_['entry_layout']              = 'Схема по умолчанию:';
$_['entry_template']          = 'Шаблон магазина:';
$_['entry_country']           = 'Страна:';
$_['entry_zone']              = 'Регион / Область:';
$_['entry_language']          = 'Язык:';
$_['entry_admin_language']    = 'Язык администратора:';
$_['entry_currency']          = 'Валюта:<br /><span class="help">Изменение валюты по умолчанию. Необходимо очистить кэш браузера для просмотра изменений и сбрасывания cookie.</span>';
$_['entry_currency_auto']     = 'Автоматическое обновление валют:<br /><span class="help">Задать ежедневное автоматическое обновление валют.</span>';
$_['entry_length_class']      = 'Единица измерения:';
$_['entry_weight_class']      = 'Вес:';
$_['entry_catalog_limit'] 	  = 'Элементов на страницу (Витрина):<br /><span class="help">Количество отображаемых на странице элементов (товары, категории и т.п.)</span>';
$_['entry_admin_limit']   	  = 'Элементов на страницу (Админка):<br /><span class="help">Количество отображаемых на странице элементов (товары, категории, заказы, покупатели и т.п.)</span>';
$_['entry_tax']               = 'Отображать цены с налогом:';
$_['entry_tax_default']       = 'Использовать налоговый адрес магазина:<br /><span class="help">Использовать адрес магазина для вычисления налогов если пользователь не залогинен. Вы можете выбрать использование адреса магазина в качестве адреса доставки или платежа покупателя.</span>';
$_['entry_tax_customer']      = 'Использовать налоговый адрес покупателя:<br /><span class="help">Использовать дефолтный адрес покупателя, когда они залогинены, для подсчёта налогов. Вы можете выбрать использование выбранного по умолчанию адреса покупателя для адреса доставки или платежа покупателя.</span>';
$_['entry_invoice']           = 'Начальный № счета-фактуры:<br /><span class="help">Установите стартовый номер счета-фактуры.</span>';
$_['entry_invoice_prefix']    = 'Префикс счета-фактуры:<br /><span class="help">Установите префикс счета-фактуры. Пример: INV-2011-00</span>';
$_['entry_customer_group']    = 'Группа покупателей:<br /><span class="help">Группа покупателей по умолчанию.</span>';
$_['entry_customer_price']    = 'Показывать цены только залогиненным:<br /><span class="help">Показывать цены только зарегистрированнным клиентам.</span>';
$_['entry_customer_approval'] = 'Активация новых пользователей:<br /><span class="help">Не позволять входить новым клиентам под своим логином и паролем до одобрения аккаунта.</span>';
$_['entry_guest_checkout']    = 'Оформление заказа без регистрации:<br /><span class="help">Позволить клиентам оформлять заказы без регистрации Личного кабинета. Эта функция не будет доступна, если в корзине будут загружаемые в виде файла товары.</span>';
$_['entry_account']           = 'Подтверждение при регистрации:<br /><span class="help">Требовать подтверждение согласия с правилами при регистрации аккаунта.</span>';
$_['entry_checkout']          = 'Подтверждение при заказе:<br /><span class="help">Требовать подтверждение согласия с правилами при оформлении заказа.</span>';
$_['entry_affiliate']           = 'Условия партнерства:<br /><span class="help">Требовать подтверждение согласия с правилами при оформлении партнерского аккаунта.</span>';
$_['entry_commission']          = 'Партнерское вознаграждение (%):<br /><span class="help">Партнерское вознаграждение по умолчанию (%).</span>';
$_['entry_stock_display']     = 'Показывать остаток на складе:<br /><span class="help">Показывать остаток товаров на складе на странице товара.</span>';
$_['entry_stock_warning']     = 'Предупреждать о нехватке на складе:<br /><span class="help">Предупреждать на странице корзины о нехватке товара на складе, если товар закончился, но помечен, как имеющийся в наличии на складе. (Предупреждение всегда показывается, если товара нет в наличии).</span>';
$_['entry_stock_checkout']    = 'Заказ при нехватке на складе:<br /><span class="help">Разрешить клиентам оформлять заказ, если заказываемых товаров на данный момент нет на складе.</span>';
$_['entry_stock_status']      = 'Статус "Нет на складе":<br /><span class="help">Устанавливать по умолчанию статус "Нет на складе" при создании товара.</span>';
$_['entry_order_status']      = 'Статус заказа:<br /><span class="help">Статус заказа по умолчанию.</span>';
$_['entry_complete_status']     = 'Завершенный статус заказа:<br /><span class="help">После выставления данного статуса у заказа пользователю будет отправлено письмо для скачивания электронных товаров и подарочных сертификатов.</span>';
$_['entry_return_status']       = 'Статус возврата:<br /><span class="help">Данный статус будет присвоен заказу после процедуры возврата товара.</span>';
$_['entry_review']       	  = 'Разрешить отзывы:<br /><span class="help">Включает/выключает добавление новых отзывов и отображение существующих отзывов</span>';
$_['entry_download']          = 'Разрешить скачивание файлов:';
$_['entry_upload_allowed']    = 'Разрешенные для загрузки типы файлов:<br /><span class="help">Разрешенные для загрузки на сервер форматы файлов. Форматы разделяются запятыми.</span>';
$_['entry_cart_weight']       = 'Показывать вес на странице корзины:<br /><span class="help">Показывает вес заказанных товаров на странице корзины</span>';
$_['entry_logo']              = 'Логотип:';
$_['entry_icon']              = 'Иконка:<br /><span class="help">Должна быть в PNG 16px на 16px.</span>';
$_['entry_image_category']    = 'Размер изображения в списке категорий:';
$_['entry_image_thumb']       = 'Размер большого изображения товара:';
$_['entry_image_popup']       = 'Размер всплывающего изображения товара:';
$_['entry_image_product']     = 'Размер изображения в списке товаров:';
// $_['entry_image_manufacturer']  = 'Размер изображения в списке производителей:';
$_['entry_image_additional']  = 'Размер дополнительных изображений товаров:';
$_['entry_image_related']     = 'Размер изображения аналогичных товаров:';
$_['entry_image_compare']       = 'Размер изображения в списке сравнения:';
$_['entry_image_wishlist']      = 'Размер изображения в списке заметок:';
$_['entry_image_cart']        = 'Размер изображений товаров в корзине:';
$_['entry_mail_protocol']     = 'Почтовый протокол:<br /><span class="help">Выбирайте "Mail", и только в случае, когда этот способ не работает &mdash; SMTP.</span>';
$_['entry_mail_parameter']    = 'Параметры функции mail:<br /><span class="help">ОСТОРОЖНО. Не заполняйте поле, если не знаете, для чего оно. Когда используется "Mail", здесь могут быть указаны дополнительные параметры для sendmail (напр. "-femail@storeaddress.com").';
$_['entry_smtp_host']         = 'SMTP хост:';
$_['entry_smtp_username']     = 'SMTP логин:';
$_['entry_smtp_password']     = 'SMTP пароль:';
$_['entry_smtp_port']         = 'SMTP порт:';
$_['entry_smtp_timeout']      = 'SMTP таймаут:';
$_['entry_alert_mail']        = 'Оповещение о заказе по E-mail:<br /><span class="help">Оповестить владельца магазина о новом заказе.</span>';
$_['entry_account_mail']      = 'Оповещение о новом клиенте:<br /><span class="help">Оповестить владельца магазина о регистрации нового клиента.</span>';
$_['entry_alert_emails']      = 'Дополнительные адреса для оповещений:<br /><span class="help">Список дополнительных адресов для получения сообщений от системы. (Разделяются запятыми)</span>';
$_['entry_use_ssl']           = 'Использовать SSL:<br /><span class="help">Для использования SSL убедитесь что Ваш хостинг поддерживает SSL сертификат и пропишите SSL адреса в файле конфигурации.</span>';
$_['entry_seo_url']           = 'Включить SEO URL:<span class="help">Необходимо настроить файл .htaccess в корневом каталоге магазина</span>';

$_['entry_maintenance']       = 'Режим обслуживания:<br /><span class="help">Отключает отображение магазина клиентам. Им будет отображаться сообщение об обслуживании. После авторизации админом, магазин будет нормально отображаться.</span>';
$_['entry_encryption']        = 'Ключ шифрования:<br /><span class="help">Ключ, который будет использоваться для шифрования конфиденциальной информации при обработке заказов.</span>';
$_['entry_compression']       = 'Уровень сжатия:<br /><span class="help">Задайте значение от 0 до 9.</span>';
$_['entry_error_display']     = 'Показывать ошибки:';
$_['entry_error_log']         = 'Записывать ошибки:';
$_['entry_error_filename']    = 'Файл журнала ошибок:';
$_['entry_google_analytics']    = 'Код Google Analytics:<br /><span class="help">Войдите в Ваш <a onclick="window.open(\'http://www.google.com/analytics/\');"><u>Google Analytics аккаунт</u></a> и после настройки добавьте сюда код выданный Google Analytics.</span>';

// Error
$_['error_warning']			  = 'Внимательно проверьте форму на ошибки!';
$_['error_permission']        = 'У Вас нет прав для изменения настроек!';
$_['error_name']              = 'Название магазина должно быть от 3 до 32 символов!';
$_['error_owner']             = 'Имя владельца магазина должно быть от 3 до 64 символов!';
$_['error_address']           = 'Адрес магазина должен быть от 10 до 256 символов!';
$_['error_email']             = 'E-Mail адрес введен неверно!';
$_['error_telephone']         = 'Телефон должен быть от 3 до 32 символов!';
$_['error_title']             = 'Заголовок магазина должен быть от 3 до 32 символов!';
$_['error_limit']       	  = 'Не введены лимиты!';
$_['error_image_thumb']       = 'Необходимо установить размер большого изображения товара!';
$_['error_image_popup']       = 'Необходимо установить размер всплывающего изображения товара!';
$_['error_image_product']     = 'Необходимо установить размер изображения списка товаров!';
$_['error_image_category']    = 'Необходимо установить размер изображения списка категорий!';
$_['error_image_manufacturer']  = 'Необходимо установить размер изображения списка производителей!';
$_['error_image_additional']  = 'Необходимо установить размер дополнительных изображений товаров!';
$_['error_image_related']     = 'Необходимо установить размер изображения аналогичных товаров!';
$_['error_image_compare']       = 'Необходимо установить размер изображения списка сравнения!';
$_['error_image_wishlist']      = 'Необходимо установить размер изображения списка заметок!';
$_['error_image_cart']        = 'Необходимо установить размер изображений товаров в корзине!';
$_['error_error_filename']    = 'Необходимо ввести имя журнала ошибок!';
?>