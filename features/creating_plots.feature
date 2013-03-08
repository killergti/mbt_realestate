# language: ru

@admins-only
Функционал: Создание предложений о продаже земли
  Для того чтобы упростить работу с предложениями о продаже земли
  Как администратор сайта
  Я должен иметь возможность добавлять их в специальном разделе
  
Сценарий: Добавление нового предложения о продаже земли
  Допустим я нахожусь на главной странице панели администратора
  И перехожу в раздел предложений о продаже земли
  
  Когда я перехожу по ссылке "New Plot"
  То я должен оказаться на странице добавления нового предложения о продаже земли
  Когда я заполняю поля формы следующими данными:
    | Название                | Test plot offer                       |
    | Месторасположение       | Larnaca                               |
    | Широта                  | 34.919972                             |
    | Долгота                 | 33.631916                             |
    | Тип земли               | plot                                  |
    | Площадь территории      | 340                                   |
    | Стоимость               | 850000                                |
    | Описание                | Описание земельного участка           | 

  То я должен оказаться на странице предложения о продаже земли "Test plot offer" панели администратора
  И я должен видеть сообщение об успехе