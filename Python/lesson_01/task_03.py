# 3. Узнайте у пользователя число n.
# Найдите сумму чисел n + nn + nnn.
# Например, пользователь ввёл число 3. Считаем 3 + 33 + 333 = 369.

n = int(input("Введите число n >>> "))

sum_n = n + (n * 10 + n) + (n * 100 + n * 10 + n)

print(f"n + nn + nnn = {sum_n}")