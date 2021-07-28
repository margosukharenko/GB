# 2. Пользователь вводит время в секундах.
# Переведите время в часы, минуты и секунды и выведите в формате чч:мм:сс.
# Используйте форматирование строк.
import datetime

second = int(input("Введите кол-во секунд >>>"))

date = str(datetime.timedelta(seconds=second))

print(date)

print(f"{second // 3600}:{second % 3600 // 60}:{second % 3600 % 60}")
