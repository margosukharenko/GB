Вступление
-----------

Прикладываю в качестве описания проекта мною же созданное БФТ на работе
Данный проект не реализован еще и захотелось создать базу данных самостоятельно
Следовательно все написано самостоятельно
В рабочей БД есть общие таблицы - пользователи и структура. Но в рамках курсовой работы они были изменены под данный проект 


Краткое описание
----------------
На работе имеется множество офисов
В каждом офисе может быть несколько пунктов выдачи подарков
Есть ответственные за пункты выдачи, которые выдают подарки сотрудникам на день рождения
Сотрудник самостоятельно приходит за подарком
Необходимо вести учет количества подарков на пунктах выдачи 
Присутствуют лимиты для пунктов выдачи.
Минимальный лимит - оповещение администраторам о том, что необходимо пополнить запасы
Максимальный лимит - больше данного лимита нельзя заказывать подарки на пункт выдачи. Обязывает ответственных списывать подарки
Можно делать заказы на пополнение количества подарков в пункте выдачи
Когда сотрудник приходит за подарком, он выбирает подарок из тех, что имеется в наличии. Система списывает на сотрудника подарок в размере 1 шт с пункта выдачи, к которому подошел сотрудник.
В системе реализовано несколько отчетов. Информация по ним выводится в рамках данного проекта


Отступление
-----------

В БФТ имеется код для получения заказа. Данный функционал не представлен в данном проекте