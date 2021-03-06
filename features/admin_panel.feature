# language: ru

Функционал: Панель администратора
  Для того чтобы управлять сайтом
  Необходим раздел, содержащий ссылки на доступные разделы управления сайтом - панель администратора
  
@admins-only
Сценарий: Вход в панель администратора
  Допустим я нахожусь на главной странице
  Когда я перехожу по ссылке "Admin" расположенной в панели навигации
  
  То я должен оказаться на главной странице панели администратора
  И я должен видеть "Welcome to admin lounge..."

Сценарий: Обычные пользователи не должны иметь доступ в панель администратора
  Допустим я - не авторизованный пользователь
  И я нахожусь на главной странице
  
  Тогда я не должен ввидеть ссылку "Admin" в панели навигации
  
  Когда я пытаюсь открыть главную страницу панели администратора
  То я должен оказаться на странице входа в учётную запись