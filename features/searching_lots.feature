# language: ru

Функционал: Поиск лотов
  Для того чтобы привлекать новых клиентов 
  Пользователи должны иметь возможность искать лоты, используя форму поиска

Предыстория:
  Допустим на сайте размещены следующие лоты:
    
    | Title     | Type          | Location  | Price | Lot Internal Type   |

    | Res #1    | Residential   | Larnaca   | 1000  | detached_house      |
    | Res #2    | Residential   | Nicosia   | 2000  | detached_house      |
    | Res #3    | Residential   | Famagusta | 3000  | apartment           |
    | Res #4    | Residential   | Larnaca   | 2500  | semi_detached       |
    | Res #5    | Residential   | Larnaca   | 3500  | town_house          |

    | Inv #1    | Investment    | Paphos    | 1000  | detached_house      |
    | Inv #2    | Investment    | Limassol  | 2000  | apartment           |
    | Inv #3    | Investment    | Larnaca   | 3000  | town_house          |

    | Pl #1     | Plot          | Larnaca   | 1000  | plot                |
    | Pl #2     | Plot          | Nicosia   | 2000  | land                |
    | Pl #3     | Plot          | Paphos    | 3000  | land                |


Структура сценария: Поиск лота используя форму на главной странице

  Допустим я - обычный пользователь сайта
  И я нахожусь на главной странице

  Когда я заполняю поля формы поиска лотов следующими значениями:
    | I want to   | <action>      |
    | Where       | <location>    |
    | Price from  | <price_from>  |
    | Price to    | <price_to>    |

  То я должен оказаться на странице результатов поиска лотов
  И результаты поиска <search_results>

Примеры:
  | action              | location | price_from | price_to | search_results                                           |
  | Find a residence    | All      | Min        | Max      | должны содержать все предложения о жилье                 |
  | Invest money        | All      | Min        | Max      | должны содержать все предложения для инвестирования      |
  | Buy a plot or land  | All      | Min        | Max      | должны содержать все предложения о покупке земли         |

  | Find a residence    | Nicosia  | Min        | Max      | должны содержать только следующие предложения о жилье: Res #2   |
  | Find a residence    | Larnaca  | Min        | Max      | должны содержать только следующие предложения о жилье: Res #1, Res #4, Res #5 |
  | Find a residence    | Larnaca  | 1000       | 2500     | должны содержать только следующие предложения о жилье: Res #1, Res #4 |
  | Find a residence    | All      | 3000       | Max      | должны содержать только следующие предложения о жилье: Res #3, Res #5 |
  | Find a residence    | All      | 5000       | Max      | не должны содержать ни одного предложения о жилье        |



Структура сценария: Применение фильтров к результатам поиска

  Допустим я - обычный пользователь сайта
  И я нахожусь на главной странице

  Когда я выбираю "<action>" в поле "I want to" формы поиска лотов
  И отправляю её
  То я должен оказаться на странице результатов поиска лотов
  И результаты поиска <search_results_wo_filter>

  Когда я применяю поисковой фильтр "<search_filter>"
  То результаты поиска <search_results_with_filter>

Примеры:

  | action              | search_results_wo_filter                            | search_filter   | search_results_with_filter                                                    |   

  | Find a residence    | должны содержать все предложения о жилье            | Detached House  | должны содержать только следующие предложения о жилье: Res #1, Res #2         |
  | Find a residence    | должны содержать все предложения о жилье            | Apartment       | должны содержать только следующие предложения о жилье: Res #3                 |
  | Find a residence    | должны содержать все предложения о жилье            | Semi Detached   | должны содержать только следующие предложения о жилье: Res #4                 |
  | Find a residence    | должны содержать все предложения о жилье            | Town House      | должны содержать только следующие предложения о жилье: Res #5                 |
  | Find a residence    | должны содержать все предложения о жилье            | All             | должны содержать все предложения о жилье                                      |

  | Invest money        | должны содержать все предложения для инвестирования | Detached House  | должны содержать только следующие предложения для инвестирования: Inv #1      |
  | Invest money        | должны содержать все предложения для инвестирования | Apartment       | должны содержать только следующие предложения для инвестирования: Inv #2      |
  | Invest money        | должны содержать все предложения для инвестирования | Town House      | должны содержать только следующие предложения для инвестирования: Inv #3      |
  | Invest money        | должны содержать все предложения для инвестирования | All             | должны содержать все предложения для инвестирования                           |

  | Buy a plot or land  | должны содержать все предложения о покупке земли    | Plot            | должны содержать только следующие предложения о покупке земли: Pl #1          |
  | Buy a plot or land  | должны содержать все предложения о покупке земли    | Land            | должны содержать только следующие предложения о покупке земли: Pl #2, Pl #3   |
  | Buy a plot or land  | должны содержать все предложения о покупке земли    | All             | должны содержать все предложения о покупке земли                              |

Сценарий: Последовательное применение фильтров к результатам поиска
  Допустим я - обычный пользователь сайта
  И я нахожусь на главной странице

  Когда я отправляю форму поиска лотов
  То я должен оказаться на странице результатов поиска лотов
  И результаты поиска должны содержать все предложения о жилье

  Когда я применяю поисковой фильтр "Detached House"
  То результаты поиска должны содержать только следующие предложения о жилье: Res #1, Res #2

  Когда я применяю поисковой фильтр "Apartment"
  То результаты поиска должны содержать только следующие предложения о жилье: Res #3

  Когда я сбрасываю поисковой фильтр
  То результаты поиска должны содержать все предложения о жилье