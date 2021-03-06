# language: ru

@admins-only
Функционал: Удаление лотов
  Для того чтобы упростить работу с лотами
  Как администратор сайта
  Я должен иметь возможность удалять их в специальном разделе

Предыстория:
  Допустим на сайт добавлены следующие лоты:
    | Title   | Type          |
    | Res #1  | Residential   |
    | Res #2  | Residential   |
    | Inv #1  | Investment    |
    | Inv #2  | Investment    |
    | Pl #1   | Plot          |
    | Pl #2   | Plot          |

Структура сценария:
  Допустим я нахожусь на главной странице панели администратора

  Когда я перехожу в раздел <admin_panel_section>
  То я должен видеть <should_see>

  Когда я перехожу по ссылке "Delete" <what_to_delete>
  То я должен увидеть сообщение об успехе
  И я не должен видеть <should_not_see_after_delete>
  Но я должен видеть <should_see_after_delete>

Примеры:
  | admin_panel_section             | should_see                                        | what_to_delete                            | should_see_after_delete    | should_not_see_after_delete                      |
  | предложений о жилье             | все сущуствующие предложения о жилье              | предложения о жилье "Res #1"              | "Res #2"                   | "Res #1" в списке предложений о жилье            |
  | предложений для инвестирования  | все сущуствующие предложения для инвестирования   | предложения для инвестирования "Inv #1"   | "Inv #2"                   | "Inv #1" в списке предложений для инвестирования |
  | предложений о продаже земли     | все сущуствующие предложения о продаже зеили      | предложения о земле "Pl #1"               | "Pl #2"                    | "Pl #1" в списке предложений о продаже земли     |