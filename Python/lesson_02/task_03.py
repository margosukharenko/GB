# 3. Пользователь вводит месяц в виде целого числа от 1 до 12.
# Сообщить к какому времени года относится месяц (зима, весна, лето, осень).
# Напишите решения через list и через dict.

number_month = int(input("Введите номер месяца от 1 до 12: "))

seasons_list = ['Зима', 'Весна', 'Лето', 'Осень']
seasons_dict = {1 : 'Зима', 2 : 'Весна', 3 : 'Лето', 4 : 'Осень'}

if number_month == 1 or number_month == 12 or number_month == 2:
    print(seasons_dict.get(1))
    print(seasons_list[0])
elif number_month == 3 or number_month == 4 or number_month == 5:
    print(seasons_dict.get(2))
    print(seasons_list[1])
elif number_month == 6 or number_month == 7 or number_month == 8:
    print(seasons_dict.get(3))
    print(seasons_list[2])
elif number_month == 9 or number_month == 10 or number_month == 11:
    print(seasons_dict.get(4))
    print(seasons_list[3])
else:
    print("Такого месяца нет")

# seasons_list = ['Зима', 'Зима', 'Весна', 'Весна', 'Весна', 'Лето', 'Лето', 'Лето', 'Осень', 'Осень', 'Осень', 'Зима']
# seasons_dict = {'Зима': [12, 1, 2], 'Весна': [3, 4, 5], 'Лето': [6, 7, 8], 'Осень': [9, 10, 11]}
#
# print(f"Время года - {seasons_list[number_month-1]}")
#
# bool_b = True
#
# for key, value in seasons_dict.items():
#     if number_month in value:
#         bool_b = False
#         print(f"Время года - {key}")
#         break
#
# if bool_b:
#     print("Такого месяца нет")
