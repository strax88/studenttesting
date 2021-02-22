Приложение studenttesting построено на фреймворке Django 3.1.6 и упаковано через docker desktop (Engine 20.10.2, Compose 1.27.4)

Для запуска приложения необходимо иметь установленными git, docker и docker-compose.
#######################################################
#                                                     #
#                  Ссылки на ресурсы                  #
#  Git: https://git-scm.com/, https://github.com/     #
#  Docker, docker -compose: https://www.docker.com/   #
#                                                     #
#######################################################

После установки необходимых компонентов выполните следующее:
 - открыть консоль/командную строку (при работе с powershell были обнаружены проблемы)
 - ввести команду git clone https://github.com/strax88/studenttesting.git
 - перейти в каталог ./studenttesting (cd ./studenttesting)
 - выполнить команду docker-compose up
 - открыть браузер и перейти на сайт http://localhost:9000/

Тестовые учётные записи:
 - Учётная запись администратора: admin@example.com	| пароль: !QAZ1qaz
 - Студент 1: ivanovsr@mail.ru		| пароль: 111111
 - Студент 2: kononovkp@mai.ru		| пароль: 222222
 - Преподаватель 1: ivanovpg@yandex.ru	| пароль: 333333
 - Преподаватель 2: repinanv@google.com	| пароль: 444444

