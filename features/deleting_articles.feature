# language: ru

@admins-only
Функционал: Удаление статей
  Для того чтобы упростить работу со статическими (текстовыми) материалами на сайте
  Как администратор
  Я должен иметь возможность удалять их в специальном разделе
  
Предыстория:
  Допустим на сайте существует статья с заголовком "Какая-то умная статья"
  
  Допустим я нахожусь на главной странице панели администратора
  И перехожу в раздел администрирования статей
  
Сценарий: Удаление статьи 
  Когда я перехожу по ссылке "Delete" статьи "Какая-то умная статья"
  То я должен оказаться на странице редактирования статей
  И я должен увидеть сообщение об успехе
  Но я не должен видеть статью "Какая-то умная статья" в списке статей 