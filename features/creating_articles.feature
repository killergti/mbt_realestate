# language: ru

@under_construction

Функционал: Создание статей
  Для того чтобы упростить процесс добавления новых статических (текстовых) материалов на сайт
  Администратор должен иметь возможность делать это через специальную форму

Сценарий: Добавление новой статьи
  
  Допустим я - администратор сайта
  И нахожусь на странице добавления новых статей
  
  Когда я заполняю поля формы добавления статьи следующими данными:
  
  | Название    | Тестовая статья                   |
  | Текст       | Какой-то интересный текст статьи  |                             
  | Позиция     | 1                                 |
  
  То я должен увидеть сообщение об успехе
  

  