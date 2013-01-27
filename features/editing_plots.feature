# language: ru

@admins-only
Функционал: Редактирование предложений о продаже земли
  Для того чтобы упростить работу с предложениями о продаже земли
  Как администратор
  Я должен иметь возможность редактировать их в специальном разделе
  
Предыстория:
  Допустим на сайте размещено преложение о продаже земли "Test plot offer"

  Допустим я нахожусь на главной странице панели администратора
  И перехожу в раздел предложений о продаже земли
  
Сценарий: Редактирование существующего предложения
  Когда я перехожу по ссылке "Edit" предложения о земле "Test plot offer"
  То я должен оказаться на странице редактирования этого предложения о земле
  
  Когда я изменяю название предложения на "New plot offer title"
  И оставляю остальные поля формы без изменений
  
  То я должен оказаться на странице этого предложения о земле панели администратора
  Но его название должно измениться на "New plot offer title"
  
@with-attachments
Сценарий: Добавление фотографий к предложению
  Допустим я перехожу на страницу предложения о земле "Test plot offer" панели администратора
  
  Когда я перехожу по ссылке "Manage Pictures"
  То я должен оказаться на странице редактирования фотографий этого предложения о земле
  
  Когда я добавляю фотографию "spec/fixtures/test_picture.jpg"
  То я должен увидеть сообщение об успехе
  И фотография "test_picture.jpg" должна появиться в списке фотографий
  
@with-attachments
Сценарий: Удаление фотографии предложения
  Допустим к предложению о земле прикреплена фотография "test_picture.jpg"
  
  Когда я перехожу на страницу редактирования фотографий этого предложения о земле
  И выбираю фотографию "test_picture.jpg" в списке фотографий
  И нажимаю "Delete Selected"
  
  То я должен оказаться на странице редактирования фотографий предложения о земле "Test plot offer"
  И я должен увидеть сообщение об успехе
  Но я не должен видеть удалённой фотографии  