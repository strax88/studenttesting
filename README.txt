Приложение studenttesting построено на фреймворке Django 3.1.6 и упаковано через docker desktop (Engine 20.10.2, Compose 1.27.4)

Для запуска приложения необходимо иметь установленными git, docker и docker-compose.
#######################################################
#                                                     #
#                  Ссылки на ресурсы                  #
#  Git: https://git-scm.com/, https://github.com/     #
#  Docker, docker -compose: https://www.docker.com/   #
#                                                     #
#######################################################

существует два способа запуска приложения. Первый организован с использованием технологий Git.
Проблема данного способа заключается в том, что необходимо при первом запуске экспортировать начальные
данные в базу. Делается это автоматически, но после первого запуска необходимо отредактировать 
файл docker-compose.yml и повторно запустить контейнер.
После установки необходимых компонентов выполните следующее:
 - открыть консоль/командную строку (при работе с powershell были обнаружены проблемы)
 - ввести команду git clone https://github.com/strax88/studenttesting.git
 - перейти в каталог ./studenttesting (cd ./studenttesting)
 - выполнить команду docker-compose up
 - отредактировать файл docker-compose.yml:
	- закоментировать/удалить строку, содержащую комманду loaddata;
	- раскоментировать оставшиеся строки, содержащие 'command:'
 - выполнить команду docker-compose up
 - открыть браузер и перейти на сайт http://localhost:9000/

Второй способ запуска приложения организован через хранилище DockerHub.
Для запуска приложения необходимо:
 - в любом каталоге на компьютере создать файл docker-compose.yml со следующим содержанием:

#######################################################
version: "3.7"
services:
  web:
    image: strax88/studenttesting_web
    command: bash -c "python3 manage.py runserver 0.0.0.0:9000"
    ports:
      - 9000:9000
    depends_on:
      - db
  db:
    image: postgres:latest
    volumes:
      - postgres_data:/var/lib/postgresql/data/
    ports:
      - '5432'
    environment:
      - POSTGRES_USER=admin
      - POSTGRES_PASSWORD=12685
      - POSTGRES_DB=testing_db
  notify:
    image: strax88/studenttesting_web
    command: python3 manage.py process_tasks
    depends_on:
      - web
volumes:
  postgres_data:
#######################################################

 - открыть консоль/командную строку (при работе с powershell были обнаружены проблемы)
 - перейти в каталог с созданным файлом и выполнить команду docker-compose up

Тестовые учётные записи:
 - Учётная запись администратора: admin@example.com	| пароль: !QAZ1qaz
 - Студент 1: ivanovsr@mail.ru		| пароль: 111111
 - Студент 2: kononovkp@mai.ru		| пароль: 222222
 - Преподаватель 1: ivanovpg@yandex.ru	| пароль: 333333
 - Преподаватель 2: repinanv@google.com	| пароль: 444444

