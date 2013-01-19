# language: ru

@admins-only @require-seed-data
Функционал: Добавление новых предложений о жилье
  Для того чтобы упростить работу с предложениями о жилье
  Как администратор
  Я должен иметь возможность добавлять их в специальном разделе
  
Сценарий: Добавление нового предложения
  Допустим я нахожусь на главной странице панели администратора
  И перехожу в раздел предложений о жилье
  
  Когда я перехожу по ссылке "New Residential"
  То я должен оказаться на странице добавления предложения о жилье
  Когда я заполняю поля формы следующими данными:
    | Название                | East Beach, Limassol                  |
    | Месторасположение       | Larnaca                               |
    | Широта                  | 34.919972                             |
    | Долгота                 | 33.631916                             |
    | Расстояние до моря      | 300                                   |
    | Тип жилья               | detached_house                        |
    | Стоимость               | 850000                                |
    | Нотариальный акт готов  | v                                     |
    | Площадь дома            | 213                                   |
    | Площадь веранды         | 100                                   |
    | Площадь территории      | 523                                   |
    | Количество этажей       | 2                                     |
    | Количество спален       | 3                                     |
    | Число ванных комнат     | 3                                     |
    | Парковочных мест        | 2                                     |
    | Частный бассейн         | v                                     |
    | Общественный бассейн    |                                       | 

  То я должен оказаться на странице предложения о жилье "East Beach, Limassol" панели администратора
  И я должен видеть сообщение об успехе