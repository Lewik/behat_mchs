#language: ru
Функционал: Проверка заполнения и согласования закупки у единственного поставщика
  Сценарий: Проверка заполнения и согласования закупки у единственного поставщика

    #Вход
    Допустим я на странице "http://debug.pokosmos.local/#auth/login"
    И заполняю поле "Логин" значением "Заказчик1"
    И заполняю поле "Пароль" значением "1234567"
    И нажимаю "Вход"
    Тогда я на странице "http://debug.pokosmos.local/#po/procedure/my"

    #Открытие формы заявки
    Допустим выбираю меню "Планирование"
    И выбираю меню "Новая закупка"
    Тогда я на странице "http://debug.pokosmos.local/#po/procedure/new"

    #Общие сведения
    И записываю "php $value = 'Тестовое наименование закупки у единственного поставщика ' . time();" в "?наименованиеЗакупки"
    И заполняю поле "Наименование закупки" значением "?наименованиеЗакупки"
    И выбираю "У единственного поставщика" в поле "Способ определения поставщика"
    И выбираю "Часть 4 статьи 2 - если международным договором РФ установлены иные правила." в поле "Основание для размещения закупки у единственного поставщика (исполнителя,подрядчика)" с автодополнением
    И выбираю "Отдел суперпользователей" в поле "Отдел"
    И заполняю поле типа телефон "Телефон контактного лица" значением "7-925-0692544"
    И заполняю поле "Адрес эл. почты контактного лица" значением "test@tester.ru"
    И заполняю поле "Фамилия контактного лица" значением "Тестовых"
    И заполняю поле "Имя контактного лица" значением "Тест"
    И заполняю поле "Отчество контактного лица" значением "Тестович"
    И заполняю поле "Планируемый срок исполнения" значением "12.2014"
    И выбираю "Не требуется, т.к. план-график еще не опубликован" в поле "Обоснование внесения изменений"

    #Лот 1
    И перехожу во вкладку "Лот 1"
    И заполняю поле "Предмет контракта (лота)" значением "Тестовый предмет"
    #И заполняю поле "Описание объекта закупки" значением "Тестовое описание закупки"
    И выбираю "15.62.1 Производство кукурузного масла" в поле "Код ОКВЭД" с автодополнением
    И выбираю "01.11.13.131 Зерно зубовидной кукурузы и кукурузы прочих сортов" в поле "Код ОКПД" с автодополнением
    И выбираю "ШТ" в поле "Единица измерения" с автодополнением
    И заполняю поле "Цена за единицу, руб" значением "123"
    И заполняю поле "Количество" значением "321"
    И заполняю поле "Количество товара (объем поставки) в 2014 году исполнения контракта" значением "321"
    И выбираю "Федеральная космическая программа" в поле "Цель осуществления закупки"

    #Финансирование
    И перехожу во вкладку "Финансирование"
    И выбираю "Федеральный бюджет" в поле "Источник Финансирования"
    И выбираю "2014" в поле "Год финансирования"
    И выбираю "25901050201010000180" в поле "Код бюджетной классификации" с автодополнением
    И заполняю поле "Сумма, руб" значением "39 483,00"

    #Особенности размещения
    И перехожу во вкладку "Особенности размещения"

    #Условия контракта
    И перехожу во вкладку "Условия контракта"
    И заполняю поле "Срок действия контракта" значением "Тестовый срок действия контракта"
    И заполняю поле "Размер аванса (% от цены контракта)" значением "5"
    #И заполняю поле "Этапы оплаты" значением "Тестовые этапы оплаты"
    И заполняю поле "Минимально необходимые требования, предъявляемые к предмету контракта" значением "Тестовые минимально необходимые требования"
    #И заполняю поле "Периодичность поставки" значением "Тестовая периодичность поставки"
    #И заполняю поле "Сроки поставки товара или завершения работы, либо график оказания услуг" значением "Тестовые сроки поставки товара"
    #И заполняю поле "Требование о наличии лицензии (в соответствии с ФЗ-99)" значением "Тестовые требования"
    #И заполняю поле "Сведения о включенных (невключенных) в цену товаров, работ, услуг расходах, в том числе расходах на перевозку, страхование, уплату таможенных пошлин, налогов, сборов и других обязательных платежей" значением "Тестовые сведения"
    #И заполняю поле "Требования к сроку и (или) объему предоставления гарантий качества товара, работ, услуг, к обслуживанию товара, к расходам на эксплуатацию товара (при необходимости)" значением "Тестовые требования к сроку"


#    #Требования к обеспечению не требуются для этого способа
#    И перехожу во вкладку "Требования к обеспечению"
#    И в филдсете "Требование обеспечения заявки" заполняю поле "Доля (% от начальной цены контракта)" значением "5"
#    #И в филдсете "Требование обеспечения заявки" заполняю поле "Сроки и порядок внесения денежных средств" значением "Тестовые сроки"
#    #И в филдсете "Требование обеспечения заявки" выбираю в поле "Название банка" значение "ОПЕРУ-1 БАНКА РОССИИ"
#    И в филдсете "Требование обеспечения исполнения контракта" заполняю поле "Доля (% от начальной цены контракта)" значением "5"
#    #И в филдсете "Требование обеспечения исполнения контракта" заполняю поле "Условия обеспечения контракта" значением "Тестовые условия"
#    #И в филдсете "Требование обеспечения исполнения контракта" выбираю в поле "Название банка" значение "ОПЕРУ-1 БАНКА РОССИИ"


    И нажимаю "Отправить на согласование"
    И нажимаю "OK"
    И нажимаю "Подписать"
    И нажимаю "OK"

    #Сейчас на На согласовании у начальника отдела ТУ

    И в гриде нахожу строку со значением "?наименованиеЗакупки" в столбце "Наименование закупки" и нажимаю операцию "Рассмотреть"
    И нажимаю "Согласовать"
    И нажимаю "Подписать"
    И нажимаю "OK"


    #На визировании у начальника управления ТУ
    И в гриде нахожу строку со значением "?наименованиеЗакупки" в столбце "Наименование закупки" и нажимаю операцию "Рассмотреть"
    И нажимаю "Согласовать"
    И нажимаю "Подписать"
    И нажимаю "OK"

    #На согласовании начальника ОП УКС
    И в гриде нахожу строку со значением "?наименованиеЗакупки" в столбце "Наименование закупки" и нажимаю операцию "Рассмотреть"
    И нажимаю "Согласовать"
    И нажимаю "Подписать"
    И нажимаю "OK"
    И жду "2" секунд
    #И в гриде нахожу строку со значением "?наименованиеЗакупки" в столбце "Наименование закупки" и нажимаю операцию "Просмотреть закупку"
    #И жду "10000" секунд