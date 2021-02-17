BEGIN TRANSACTION;
INSERT INTO "studenttesting_result" VALUES (90,22,7,2,2,'2021-02-10 09:03:55.734550'),
 (91,17,8,2,2,'2021-02-10 09:03:55.734550'),
 (92,21,7,1,2,'2021-02-10 09:43:07.297103'),
 (93,17,8,1,2,'2021-02-10 09:43:07.297103');
INSERT INTO "studenttesting_question" VALUES (1,'Цель информатизации общества заключается в',1,1),
 (2,'В каком законе отображается объективность процесса информатизации общества',1,2),
 (3,'Данные об объектах, событиях и процессах, это',1,3),
 (4,'Информация это',1,4),
 (7,'Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию ресурсов предприятия посредством специализированного интегрированного пакета прикладного программного обеспечения, обеспечивающего общую модель данных и процессов для всех сфер деятельности – это…',2,2),
 (8,'НИОКР подразделяются на:',2,1);
INSERT INTO "background_task" VALUES (75,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:43.405878',5,NULL,NULL,0,NULL,'',NULL,NULL,NULL,NULL,'studenttesting.views.notify_administrator'),
 (104,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:54.453371',3,NULL,NULL,0,NULL,'','24148','2021-02-11 03:55:59.411183',NULL,NULL,'studenttesting.script.notify_administrator'),
 (109,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:56:18.335023',3,NULL,NULL,0,NULL,'','12772','2021-02-11 03:56:32.445762',NULL,NULL,'studenttesting.script.notify_administrator'),
 (116,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:11.673418',3,NULL,NULL,0,NULL,'','24568','2021-02-11 03:57:23.209727',NULL,NULL,'studenttesting.script.notify_administrator'),
 (146,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:48.224317',3,NULL,NULL,0,NULL,'','15348','2021-02-11 04:00:53.426433',NULL,NULL,'studenttesting.script.notify_administrator'),
 (147,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:54.212795',3,NULL,NULL,0,NULL,'','11164','2021-02-11 04:00:59.035713',NULL,NULL,'studenttesting.script.notify_administrator'),
 (148,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:01:01.950689',0,NULL,NULL,0,NULL,'','14948','2021-02-11 04:02:24.817769',NULL,NULL,'studenttesting.script.notify_administrator'),
 (149,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:02:27.716764',0,NULL,NULL,0,NULL,'','13912','2021-02-11 04:04:34.266443',NULL,NULL,'studenttesting.script.notify_administrator'),
 (150,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:04:37.176420',0,NULL,NULL,0,NULL,'','17464','2021-02-11 04:05:44.171346',NULL,NULL,'studenttesting.script.notify_administrator'),
 (151,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:05:47.074349',0,NULL,NULL,0,NULL,'','13368','2021-02-11 04:06:50.611851',NULL,NULL,'studenttesting.script.notify_administrator'),
 (152,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:45:29.028166',0,NULL,NULL,3,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (153,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:08:59.589200',0,NULL,NULL,1,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 37, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
TypeError: send_mail() got an unexpected keyword argument ''date''
','24828','2021-02-11 04:09:06.007654',NULL,NULL,'studenttesting.script.notify_administrator'),
 (154,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:30.171260',0,NULL,NULL,2,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (155,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:30.310493',0,NULL,NULL,2,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (156,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:30.406834',0,NULL,NULL,2,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (157,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:30.516834',0,NULL,NULL,2,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (158,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:30.623835',0,NULL,NULL,2,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (159,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:30.703835',0,NULL,NULL,2,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (160,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:09.759172',0,NULL,NULL,1,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
','21572','2021-02-11 04:50:03.891169',NULL,NULL,'studenttesting.script.notify_administrator'),
 (161,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:09.860169',0,NULL,NULL,1,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator'),
 (162,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:44:10.025174',0,NULL,NULL,1,NULL,'Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 29, in notify_administrator
    endword(len(value)),
NameError: name ''endword'' is not defined
',NULL,NULL,NULL,NULL,'studenttesting.script.notify_administrator');
INSERT INTO "background_task_completedtask" VALUES (1,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:33:39.152560',0,NULL,NULL,2,NULL,'Traceback (most recent call last):
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 34, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
NameError: name ''send_mail'' is not defined

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 36, in notify_administrator
    except BadHeaderError as e:
NameError: name ''BadHeaderError'' is not defined
','18288','2021-02-11 02:33:38.987105',NULL,NULL,'studenttesting.script.notify_administrator'),
 (2,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:33:44.290335',0,NULL,NULL,1,NULL,'','18288','2021-02-11 02:33:44.267340',NULL,NULL,'studenttesting.script.notify_administrator'),
 (3,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:33:44.428521',0,NULL,NULL,1,NULL,'','18288','2021-02-11 02:33:44.407547',NULL,NULL,'studenttesting.script.notify_administrator'),
 (4,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:33:54.525418',0,NULL,NULL,3,NULL,'Traceback (most recent call last):
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 34, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
NameError: name ''send_mail'' is not defined

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 36, in notify_administrator
    except BadHeaderError as e:
NameError: name ''BadHeaderError'' is not defined
','18288','2021-02-11 02:33:54.490425',NULL,NULL,'studenttesting.script.notify_administrator'),
 (5,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:40:58.929880',0,NULL,NULL,4,NULL,'Traceback (most recent call last):
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 34, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
NameError: name ''send_mail'' is not defined

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 36, in notify_administrator
    except BadHeaderError as e:
NameError: name ''BadHeaderError'' is not defined
','15100','2021-02-11 02:40:58.752878',NULL,NULL,'studenttesting.script.notify_administrator'),
 (6,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:40:58.998883',0,NULL,NULL,4,NULL,'Traceback (most recent call last):
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 34, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
NameError: name ''send_mail'' is not defined

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 36, in notify_administrator
    except BadHeaderError as e:
NameError: name ''BadHeaderError'' is not defined
','15100','2021-02-11 02:40:58.962906',NULL,NULL,'studenttesting.script.notify_administrator'),
 (7,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:40:59.075878',0,NULL,NULL,4,NULL,'Traceback (most recent call last):
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 34, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
NameError: name ''send_mail'' is not defined

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 36, in notify_administrator
    except BadHeaderError as e:
NameError: name ''BadHeaderError'' is not defined
','15100','2021-02-11 02:40:59.053880',NULL,NULL,'studenttesting.script.notify_administrator'),
 (8,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:40:59.139879',0,NULL,NULL,4,NULL,'Traceback (most recent call last):
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 34, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
NameError: name ''send_mail'' is not defined

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 36, in notify_administrator
    except BadHeaderError as e:
NameError: name ''BadHeaderError'' is not defined
','15100','2021-02-11 02:40:59.117875',NULL,NULL,'studenttesting.script.notify_administrator'),
 (9,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:40:59.292992',0,NULL,NULL,4,NULL,'Traceback (most recent call last):
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 34, in notify_administrator
    send_mail(f''{theme} от {email_from}'', message_data,
NameError: name ''send_mail'' is not defined

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:\Program Files (x86)\Python38-32\lib\site-packages\background_task\tasks.py", line 43, in bg_runner
    func(*args, **kwargs)
  File "C:\Users\strax\YandexDisk\Работа\Тестовые задания\Ирина - Alente\employment_task\studenttesting\script.py", line 36, in notify_administrator
    except BadHeaderError as e:
NameError: name ''BadHeaderError'' is not defined
','15100','2021-02-11 02:40:59.258019',NULL,NULL,'studenttesting.script.notify_administrator'),
 (10,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:41:04.424538',0,NULL,NULL,1,NULL,'','15100','2021-02-11 02:41:04.388540',NULL,NULL,'studenttesting.script.notify_administrator'),
 (11,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:41:39.653431',0,NULL,NULL,1,NULL,'','15100','2021-02-11 02:41:39.619408',NULL,NULL,'studenttesting.script.notify_administrator'),
 (12,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:42:23.782872',0,NULL,NULL,1,NULL,'','12796','2021-02-11 02:42:23.061881',NULL,NULL,'studenttesting.script.notify_administrator'),
 (13,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:43:24.698436',0,NULL,NULL,1,NULL,'','12796','2021-02-11 02:43:24.659437',NULL,NULL,'studenttesting.script.notify_administrator'),
 (14,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:43:36.559114',0,NULL,NULL,1,NULL,'','13788','2021-02-11 02:43:36.247114',NULL,NULL,'studenttesting.script.notify_administrator'),
 (15,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:44:24.048684',0,NULL,NULL,1,NULL,'','6808','2021-02-11 02:44:23.860686',NULL,NULL,'studenttesting.script.notify_administrator'),
 (16,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:44:29.165629',0,NULL,NULL,1,NULL,'','6808','2021-02-11 02:44:29.126655',NULL,NULL,'studenttesting.script.notify_administrator'),
 (17,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:44:29.300631',0,NULL,NULL,1,NULL,'','6808','2021-02-11 02:44:29.264639',NULL,NULL,'studenttesting.script.notify_administrator'),
 (18,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:45:40.622600',0,NULL,NULL,1,NULL,'','2552','2021-02-11 02:45:40.473604',NULL,NULL,'studenttesting.script.notify_administrator'),
 (19,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 02:45:45.766290',0,NULL,NULL,1,NULL,'','2552','2021-02-11 02:45:45.720312',NULL,NULL,'studenttesting.script.notify_administrator'),
 (20,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:42:54.081339',0,NULL,NULL,1,NULL,'','25140','2021-02-11 03:42:53.902799',NULL,NULL,'studenttesting.views.notify_administrator'),
 (21,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:42:54.229018',0,NULL,NULL,1,NULL,'','25140','2021-02-11 03:42:54.196736',NULL,NULL,'studenttesting.views.notify_administrator'),
 (22,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:42:54.342976',0,NULL,NULL,1,NULL,'','25140','2021-02-11 03:42:54.320478',NULL,NULL,'studenttesting.views.notify_administrator'),
 (23,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:42:54.406385',0,NULL,NULL,1,NULL,'','25140','2021-02-11 03:42:54.382627',NULL,NULL,'studenttesting.views.notify_administrator'),
 (24,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:42:54.514086',0,NULL,NULL,1,NULL,'','25140','2021-02-11 03:42:54.492305',NULL,NULL,'studenttesting.views.notify_administrator'),
 (25,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:42:54.624366',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:42:54.601301',NULL,NULL,'studenttesting.views.notify_administrator'),
 (26,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:42:59.704202',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:42:59.665225',NULL,NULL,'studenttesting.views.notify_administrator'),
 (27,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:04.859346',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:04.833345',NULL,NULL,'studenttesting.views.notify_administrator'),
 (28,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:09.960168',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:09.921145',NULL,NULL,'studenttesting.views.notify_administrator'),
 (29,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:15.125179',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:15.093184',NULL,NULL,'studenttesting.views.notify_administrator'),
 (30,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:20.232325',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:20.210322',NULL,NULL,'studenttesting.views.notify_administrator'),
 (31,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:25.371019',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:25.338024',NULL,NULL,'studenttesting.views.notify_administrator'),
 (32,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:30.546489',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:30.524700',NULL,NULL,'studenttesting.views.notify_administrator'),
 (33,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:35.721409',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:35.699425',NULL,NULL,'studenttesting.views.notify_administrator'),
 (34,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:40.860055',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:40.836052',NULL,NULL,'studenttesting.views.notify_administrator'),
 (35,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:46.004064',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:45.980698',NULL,NULL,'studenttesting.views.notify_administrator'),
 (36,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:51.122440',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:51.099432',NULL,NULL,'studenttesting.views.notify_administrator'),
 (37,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:43:56.257265',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:43:56.234781',NULL,NULL,'studenttesting.views.notify_administrator'),
 (38,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:44:01.358603',5,NULL,NULL,1,NULL,'','25140','2021-02-11 03:44:01.334613',NULL,NULL,'studenttesting.views.notify_administrator'),
 (39,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:46:08.203108',5,NULL,NULL,1,NULL,'','20116','2021-02-11 03:46:08.014117',NULL,NULL,'studenttesting.views.notify_administrator'),
 (40,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:46:13.368694',5,NULL,NULL,1,NULL,'','20116','2021-02-11 03:46:13.322706',NULL,NULL,'studenttesting.views.notify_administrator'),
 (41,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:46:13.468705',5,NULL,NULL,1,NULL,'','20116','2021-02-11 03:46:13.446730',NULL,NULL,'studenttesting.views.notify_administrator'),
 (42,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:46:18.630292',5,NULL,NULL,1,NULL,'','20116','2021-02-11 03:46:18.594279',NULL,NULL,'studenttesting.views.notify_administrator'),
 (43,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:46:23.724254',5,NULL,NULL,1,NULL,'','20116','2021-02-11 03:46:23.701329',NULL,NULL,'studenttesting.views.notify_administrator'),
 (44,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:49:44.160544',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:49:43.969967',NULL,NULL,'studenttesting.views.notify_administrator'),
 (45,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:49:49.346205',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:49:49.303044',NULL,NULL,'studenttesting.views.notify_administrator'),
 (46,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:49:54.499911',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:49:54.460913',NULL,NULL,'studenttesting.views.notify_administrator'),
 (47,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:49:59.638429',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:49:59.602428',NULL,NULL,'studenttesting.views.notify_administrator'),
 (48,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:04.809705',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:04.762697',NULL,NULL,'studenttesting.views.notify_administrator'),
 (49,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:09.900685',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:09.876684',NULL,NULL,'studenttesting.views.notify_administrator'),
 (50,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:15.038843',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:15.004844',NULL,NULL,'studenttesting.views.notify_administrator'),
 (51,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:20.160637',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:20.136634',NULL,NULL,'studenttesting.views.notify_administrator'),
 (52,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:25.258966',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:25.224976',NULL,NULL,'studenttesting.views.notify_administrator'),
 (53,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:30.370336',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:30.334836',NULL,NULL,'studenttesting.views.notify_administrator'),
 (54,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:35.545542',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:35.500524',NULL,NULL,'studenttesting.views.notify_administrator'),
 (55,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:40.653170',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:40.628795',NULL,NULL,'studenttesting.views.notify_administrator'),
 (56,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:50:45.763096',5,NULL,NULL,1,NULL,'','23804','2021-02-11 03:50:45.735098',NULL,NULL,'studenttesting.views.notify_administrator'),
 (57,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:17.178969',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:16.297972',NULL,NULL,'studenttesting.views.notify_administrator'),
 (58,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:23.383706',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:23.337702',NULL,NULL,'studenttesting.views.notify_administrator'),
 (59,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:23.531702',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:23.492709',NULL,NULL,'studenttesting.views.notify_administrator'),
 (60,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:28.665457',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:28.620471',NULL,NULL,'studenttesting.views.notify_administrator'),
 (61,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:33.802461',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:33.744462',NULL,NULL,'studenttesting.views.notify_administrator'),
 (62,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:38.969339',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:38.920334',NULL,NULL,'studenttesting.views.notify_administrator'),
 (63,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:44.085907',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:44.059910',NULL,NULL,'studenttesting.views.notify_administrator'),
 (64,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:49.249232',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:49.202236',NULL,NULL,'studenttesting.views.notify_administrator'),
 (65,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:54.327286',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:54.302306',NULL,NULL,'studenttesting.views.notify_administrator'),
 (66,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:51:59.494704',5,NULL,NULL,1,NULL,'','7968','2021-02-11 03:51:59.471723',NULL,NULL,'studenttesting.views.notify_administrator'),
 (67,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:04.933674',5,NULL,NULL,1,NULL,'','24140','2021-02-11 03:52:04.748682',NULL,NULL,'studenttesting.views.notify_administrator'),
 (68,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:10.051888',5,NULL,NULL,1,NULL,'','24140','2021-02-11 03:52:10.015911',NULL,NULL,'studenttesting.views.notify_administrator'),
 (69,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:15.170651',5,NULL,NULL,1,NULL,'','24140','2021-02-11 03:52:15.145650',NULL,NULL,'studenttesting.views.notify_administrator'),
 (70,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:19.643099',5,NULL,NULL,1,NULL,'','17944','2021-02-11 03:52:19.476096',NULL,NULL,'studenttesting.views.notify_administrator'),
 (71,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:24.784229',5,NULL,NULL,1,NULL,'','17944','2021-02-11 03:52:24.747217',NULL,NULL,'studenttesting.views.notify_administrator'),
 (72,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:29.985248',5,NULL,NULL,1,NULL,'','17944','2021-02-11 03:52:29.943247',NULL,NULL,'studenttesting.views.notify_administrator'),
 (73,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:35.123233',5,NULL,NULL,1,NULL,'','17944','2021-02-11 03:52:35.096234',NULL,NULL,'studenttesting.views.notify_administrator'),
 (74,'[[], {}]','eb14a957ce44981d5fa1ba4eb7c76ffa1a2d048f',NULL,0,'2021-02-11 03:52:40.237227',5,NULL,NULL,1,NULL,'','17944','2021-02-11 03:52:40.204227',NULL,NULL,'studenttesting.views.notify_administrator'),
 (75,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:53:21.151178',0,NULL,NULL,1,NULL,'','26300','2021-02-11 03:53:20.988622',NULL,NULL,'studenttesting.script.notify_administrator'),
 (76,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:06.746378',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:06.557388',NULL,NULL,'studenttesting.script.notify_administrator'),
 (77,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:11.834866',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:11.794865',NULL,NULL,'studenttesting.script.notify_administrator'),
 (78,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:17.043827',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:17.018837',NULL,NULL,'studenttesting.script.notify_administrator'),
 (79,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:22.205220',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:22.172237',NULL,NULL,'studenttesting.script.notify_administrator'),
 (80,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:27.384314',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:27.350828',NULL,NULL,'studenttesting.script.notify_administrator'),
 (81,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:32.495628',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:32.462918',NULL,NULL,'studenttesting.script.notify_administrator'),
 (82,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:37.684181',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:37.657182',NULL,NULL,'studenttesting.script.notify_administrator'),
 (83,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:42.867534',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:42.833532',NULL,NULL,'studenttesting.script.notify_administrator'),
 (84,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:43.038868',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:43.005869',NULL,NULL,'studenttesting.script.notify_administrator'),
 (85,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:48.195193',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:48.163626',NULL,NULL,'studenttesting.script.notify_administrator'),
 (86,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:48.304196',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:48.272200',NULL,NULL,'studenttesting.script.notify_administrator'),
 (87,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:48.402201',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:48.382207',NULL,NULL,'studenttesting.script.notify_administrator'),
 (88,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:53.484033',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:53.461353',NULL,NULL,'studenttesting.script.notify_administrator'),
 (89,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:53.608654',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:53.586681',NULL,NULL,'studenttesting.script.notify_administrator'),
 (90,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:58.763119',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:58.735331',NULL,NULL,'studenttesting.script.notify_administrator'),
 (91,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:54:58.896355',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:54:58.855114',NULL,NULL,'studenttesting.script.notify_administrator'),
 (92,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:03.985213',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:55:03.963207',NULL,NULL,'studenttesting.script.notify_administrator'),
 (93,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:04.032212',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:55:04.010209',NULL,NULL,'studenttesting.script.notify_administrator'),
 (94,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:09.110626',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:55:09.087649',NULL,NULL,'studenttesting.script.notify_administrator'),
 (95,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:09.218221',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:55:09.196670',NULL,NULL,'studenttesting.script.notify_administrator'),
 (96,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:09.328228',3,NULL,NULL,1,NULL,'','960','2021-02-11 03:55:09.306246',NULL,NULL,'studenttesting.script.notify_administrator'),
 (97,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:43.581302',3,NULL,NULL,1,NULL,'','24148','2021-02-11 03:55:40.420049',NULL,NULL,'studenttesting.script.notify_administrator'),
 (98,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:46.729172',3,NULL,NULL,1,NULL,'','24148','2021-02-11 03:55:43.705355',NULL,NULL,'studenttesting.script.notify_administrator'),
 (99,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:49.920463',3,NULL,NULL,1,NULL,'','24148','2021-02-11 03:55:46.880930',NULL,NULL,'studenttesting.script.notify_administrator'),
 (100,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:53.082099',3,NULL,NULL,1,NULL,'','24148','2021-02-11 03:55:50.045064',NULL,NULL,'studenttesting.script.notify_administrator'),
 (101,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:56.201356',3,NULL,NULL,1,NULL,'','24148','2021-02-11 03:55:53.148745',NULL,NULL,'studenttesting.script.notify_administrator'),
 (102,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:55:59.346181',3,NULL,NULL,1,NULL,'','24148','2021-02-11 03:55:56.304377',NULL,NULL,'studenttesting.script.notify_administrator'),
 (103,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:56:10.919541',3,NULL,NULL,1,NULL,'','12772','2021-02-11 03:56:03.761415',NULL,NULL,'studenttesting.script.notify_administrator'),
 (104,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:56:18.045051',3,NULL,NULL,1,NULL,'','12772','2021-02-11 03:56:11.000549',NULL,NULL,'studenttesting.script.notify_administrator'),
 (105,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:56:25.217224',3,NULL,NULL,1,NULL,'','12772','2021-02-11 03:56:18.156411',NULL,NULL,'studenttesting.script.notify_administrator'),
 (106,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:56:32.321083',3,NULL,NULL,1,NULL,'','12772','2021-02-11 03:56:25.277249',NULL,NULL,'studenttesting.script.notify_administrator'),
 (107,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:56:47.459178',3,NULL,NULL,1,NULL,'','24568','2021-02-11 03:56:40.303794',NULL,NULL,'studenttesting.script.notify_administrator'),
 (108,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:56:54.604348',3,NULL,NULL,1,NULL,'','24568','2021-02-11 03:56:47.570284',NULL,NULL,'studenttesting.script.notify_administrator'),
 (109,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:01.708899',3,NULL,NULL,1,NULL,'','24568','2021-02-11 03:56:54.670477',NULL,NULL,'studenttesting.script.notify_administrator'),
 (110,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:08.814352',3,NULL,NULL,1,NULL,'','24568','2021-02-11 03:57:01.773920',NULL,NULL,'studenttesting.script.notify_administrator'),
 (111,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:15.979008',3,NULL,NULL,1,NULL,'','24568','2021-02-11 03:57:08.943208',NULL,NULL,'studenttesting.script.notify_administrator'),
 (112,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:23.087400',3,NULL,NULL,1,NULL,'','24568','2021-02-11 03:57:16.055009',NULL,NULL,'studenttesting.script.notify_administrator'),
 (113,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:33.515484',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:57:26.351901',NULL,NULL,'studenttesting.script.notify_administrator'),
 (114,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:40.700574',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:57:33.656630',NULL,NULL,'studenttesting.script.notify_administrator'),
 (115,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:47.773854',0,NULL,NULL,1,NULL,'','15348','2021-02-11 03:57:40.751159',NULL,NULL,'studenttesting.script.notify_administrator'),
 (116,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:57:54.943787',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:57:47.909441',NULL,NULL,'studenttesting.script.notify_administrator'),
 (117,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:02.046845',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:57:55.024791',NULL,NULL,'studenttesting.script.notify_administrator'),
 (118,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:09.244614',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:02.202326',NULL,NULL,'studenttesting.script.notify_administrator'),
 (119,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:16.397143',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:09.350971',NULL,NULL,'studenttesting.script.notify_administrator'),
 (120,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:23.567733',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:16.519162',NULL,NULL,'studenttesting.script.notify_administrator'),
 (121,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:30.725252',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:23.683733',NULL,NULL,'studenttesting.script.notify_administrator'),
 (122,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:37.870709',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:30.825256',NULL,NULL,'studenttesting.script.notify_administrator'),
 (123,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:44.991593',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:37.948733',NULL,NULL,'studenttesting.script.notify_administrator'),
 (124,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:52.104355',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:45.069566',NULL,NULL,'studenttesting.script.notify_administrator'),
 (125,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:58:59.214512',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:52.186361',NULL,NULL,'studenttesting.script.notify_administrator'),
 (126,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:06.346443',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:58:59.303150',NULL,NULL,'studenttesting.script.notify_administrator'),
 (127,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:13.475066',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:06.442450',NULL,NULL,'studenttesting.script.notify_administrator'),
 (128,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:20.589220',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:13.552068',NULL,NULL,'studenttesting.script.notify_administrator'),
 (129,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:27.765093',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:20.714482',NULL,NULL,'studenttesting.script.notify_administrator'),
 (130,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:34.916860',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:27.868093',NULL,NULL,'studenttesting.script.notify_administrator'),
 (131,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:42.019288',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:34.991885',NULL,NULL,'studenttesting.script.notify_administrator'),
 (132,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:49.132064',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:42.095308',NULL,NULL,'studenttesting.script.notify_administrator'),
 (133,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 03:59:56.299192',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:49.268410',NULL,NULL,'studenttesting.script.notify_administrator'),
 (134,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:03.373290',3,NULL,NULL,1,NULL,'','15348','2021-02-11 03:59:56.342219',NULL,NULL,'studenttesting.script.notify_administrator'),
 (135,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:10.453220',3,NULL,NULL,1,NULL,'','15348','2021-02-11 04:00:03.417069',NULL,NULL,'studenttesting.script.notify_administrator'),
 (136,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:17.546521',3,NULL,NULL,1,NULL,'','15348','2021-02-11 04:00:10.512244',NULL,NULL,'studenttesting.script.notify_administrator'),
 (137,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:24.659708',3,NULL,NULL,1,NULL,'','15348','2021-02-11 04:00:17.637520',NULL,NULL,'studenttesting.script.notify_administrator'),
 (138,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:31.786446',3,NULL,NULL,1,NULL,'','15348','2021-02-11 04:00:24.749681',NULL,NULL,'studenttesting.script.notify_administrator'),
 (139,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:38.867610',3,NULL,NULL,1,NULL,'','15348','2021-02-11 04:00:31.843446',NULL,NULL,'studenttesting.script.notify_administrator'),
 (140,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:46.065410',3,NULL,NULL,1,NULL,'','15348','2021-02-11 04:00:39.036708',NULL,NULL,'studenttesting.script.notify_administrator'),
 (141,'[[], {}]','b3b8d7b0dd14f7a1234f7cdbee5e3476f4e4bfbc',NULL,0,'2021-02-11 04:00:53.274334',3,NULL,NULL,1,NULL,'','15348','2021-02-11 04:00:46.215407',NULL,NULL,'studenttesting.script.notify_administrator');
INSERT INTO "studenttesting_answer" VALUES (1,'сообщения, находящиеся в памяти компьютера;',0,4,1),
 (2,'сообщения, находящиеся в хранилищах данных;',0,4,1),
 (3,'предварительно обработанные данные, годные для принятия управленческих решений;',1,4,1),
 (4,'сообщения, зафиксированные на машинных носителях.',0,4,1),
 (5,'содержимое баз знаний;',0,3,1),
 (6,'необработанные сообщения, отражающие отдельные факты, процессы, события;',1,3,1),
 (7,'предварительно обработанная информация;',0,3,1),
 (8,'4 сообщения, находящиеся в хранилищах данных.',0,3,1),
 (9,'Закон убывающей доходности.',0,2,1),
 (10,'Закон циклического развития общества.',0,2,1),
 (11,'Закон “необходимого разнообразия”.',1,2,1),
 (12,'Закон единства и борьбы противоположностей.',0,2,1),
 (13,'справедливом распределении материальных благ;',0,1,1),
 (14,'удовлетворении духовных потребностей человека;',0,1,1),
 (15,'максимальном удовлетворении информационных потребностей отдельных граждан, их групп, предприятий, организаций и т. д. за счет повсеместного внедрения компьютеров и средств коммуникаций.',1,1,1),
 (16,'товарные НИОКР, Капитальные НИОКР',1,8,2),
 (17,'краткосрочные, среднесрочные',0,8,2),
 (18,'стратегически важные, потенциально интересные',0,8,2),
 (19,'объективные, субъективные',0,8,2),
 (20,'ЕАМ (Enterprise asset management)',0,7,2),
 (21,'ERP (Enterprise Resource Planning)',1,7,2),
 (22,'PLM (Product Lifecycle Management)',0,7,2),
 (23,'APS (American Physical Society)',0,7,2);
INSERT INTO "studenttesting_student" VALUES (1,'Иванов Сергей Романович','ivanovsr@mail.ru','111111','/media/avatar3_student_1.png','+79364667895'),
 (2,'Кононов Константин Петрович','kononovkp@mai.ru','222222',NULL,NULL);
INSERT INTO "studenttesting_menu" VALUES (1,'Главная','index',1,1),
 (2,'Моя страница','student',2,2),
 (3,'Профиль','teacher',3,3),
 (4,'Тесты','tests',4,2),
 (5,'Студенты','students',5,3),
 (6,'Обратная связь','feedback',6,2),
 (7,'История','history',7,2),
 (8,'Отчёты','reports',8,3),
 (9,'Выход','logout',99,1);
INSERT INTO "studenttesting_test" VALUES (1,'Информационные технологии в управлении'),
 (2,'Компьютерные технологии');
INSERT INTO "studenttesting_teacher" VALUES (1,'Иванов Пётр Геннадьевич','ivanovpg@yandex.ru','333333'),
 (2,'Репина Наталья Витальевна','repinanv@google.com','444444');
INSERT INTO "django_session" VALUES ('uk353qdl1gnezjeyxyugavmslqe8em59','.eJxVjEEOwiAQRe_C2hCgE-i4dO8ZyAxMpWogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzsur0uzGlh9Qd5DvVW9Op1XWZWe-KPmjX15bleTncv4NCvXzrYTIAPhgGl4L1DOAok_UeDQ4GCIERfRBhEkcYJgEYOVG2I0IwqN4fwNo3Sw:1l8jul:lbR19F208vZRTrjY-GpiMIkfy0vEpjbsUrbrMcmMoN8','2021-02-21 13:15:47.107427'),
 ('c5aeplloljickyxo3uf3vakynrtgb721','.eJxVjEEOwiAQRe_C2hCgE-i4dO8ZyAxMpWogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzsur0uzGlh9Qd5DvVW9Op1XWZWe-KPmjX15bleTncv4NCvXzrYTIAPhgGl4L1DOAok_UeDQ4GCIERfRBhEkcYJgEYOVG2I0IwqN4fwNo3Sw:1l8z3a:yUmISBocNjz7V_EjzlEgwu754wrPQdj1659vXucAP4U','2021-02-22 05:25:54.583325');
INSERT INTO "auth_user" VALUES (1,'pbkdf2_sha256$216000$r6JnhiN13euJ$l1cExQI+wawmIh6iW1bSlgD4PCfhR4g7b/D0Fu2qaVA=','2021-02-09 06:43:37.290243',1,'admin','','kstr88@mail.ru',1,1,'2021-02-07 08:34:19.891318',''),
 (2,'pbkdf2_sha256$216000$LVQuVOeTNZpt$MgEoIrcipDs6zTfZjcE0ZSRkpqAxU0HqV31PLgYb/Qk=',NULL,1,'admin2','','kstr88@mail.ru',1,1,'2021-02-07 08:35:05.571205','');
INSERT INTO "auth_permission" VALUES (1,1,'add_logentry','Can add log entry'),
 (2,1,'change_logentry','Can change log entry'),
 (3,1,'delete_logentry','Can delete log entry'),
 (4,1,'view_logentry','Can view log entry'),
 (5,2,'add_permission','Can add permission'),
 (6,2,'change_permission','Can change permission'),
 (7,2,'delete_permission','Can delete permission'),
 (8,2,'view_permission','Can view permission'),
 (9,3,'add_group','Can add group'),
 (10,3,'change_group','Can change group'),
 (11,3,'delete_group','Can delete group'),
 (12,3,'view_group','Can view group'),
 (13,4,'add_user','Can add user'),
 (14,4,'change_user','Can change user'),
 (15,4,'delete_user','Can delete user'),
 (16,4,'view_user','Can view user'),
 (17,5,'add_contenttype','Can add content type'),
 (18,5,'change_contenttype','Can change content type'),
 (19,5,'delete_contenttype','Can delete content type'),
 (20,5,'view_contenttype','Can view content type'),
 (21,6,'add_session','Can add session'),
 (22,6,'change_session','Can change session'),
 (23,6,'delete_session','Can delete session'),
 (24,6,'view_session','Can view session'),
 (25,7,'add_answer','Can add answer'),
 (26,7,'change_answer','Can change answer'),
 (27,7,'delete_answer','Can delete answer'),
 (28,7,'view_answer','Can view answer'),
 (29,8,'add_menu','Can add Пункт меню'),
 (30,8,'change_menu','Can change Пункт меню'),
 (31,8,'delete_menu','Can delete Пункт меню'),
 (32,8,'view_menu','Can view Пункт меню'),
 (33,9,'add_question','Can add question'),
 (34,9,'change_question','Can change question'),
 (35,9,'delete_question','Can delete question'),
 (36,9,'view_question','Can view question'),
 (37,10,'add_student','Can add student'),
 (38,10,'change_student','Can change student'),
 (39,10,'delete_student','Can delete student'),
 (40,10,'view_student','Can view student'),
 (41,11,'add_teacher','Can add teacher'),
 (42,11,'change_teacher','Can change teacher'),
 (43,11,'delete_teacher','Can delete teacher'),
 (44,11,'view_teacher','Can view teacher'),
 (45,12,'add_test','Can add test'),
 (46,12,'change_test','Can change test'),
 (47,12,'delete_test','Can delete test'),
 (48,12,'view_test','Can view test'),
 (49,13,'add_result','Can add result'),
 (50,13,'change_result','Can change result'),
 (51,13,'delete_result','Can delete result'),
 (52,13,'view_result','Can view result'),
 (53,14,'add_completedtask','Can add completed task'),
 (54,14,'change_completedtask','Can change completed task'),
 (55,14,'delete_completedtask','Can delete completed task'),
 (56,14,'view_completedtask','Can view completed task'),
 (57,15,'add_task','Can add task'),
 (58,15,'change_task','Can change task'),
 (59,15,'delete_task','Can delete task'),
 (60,15,'view_task','Can view task');
INSERT INTO "django_content_type" VALUES (1,'admin','logentry'),
 (2,'auth','permission'),
 (3,'auth','group'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (7,'studenttesting','answer'),
 (8,'studenttesting','menu'),
 (9,'studenttesting','question'),
 (10,'studenttesting','student'),
 (11,'studenttesting','teacher'),
 (12,'studenttesting','test'),
 (13,'studenttesting','result'),
 (14,'background_task','completedtask'),
 (15,'background_task','task');
INSERT INTO "django_admin_log" VALUES (1,'2021-02-07 11:25:24.354684','1','Главная','[{"added": {}}]',8,1,1),
 (2,'2021-02-07 11:26:00.567873','2','Моя страница','[{"added": {}}]',8,1,1),
 (3,'2021-02-07 11:26:19.917194','3','Профиль','[{"added": {}}]',8,1,1),
 (4,'2021-02-07 11:29:22.062159','4','Тесты','[{"added": {}}]',8,1,1),
 (5,'2021-02-07 11:35:54.224350','5','Студенты','[{"added": {}}]',8,1,1),
 (6,'2021-02-07 11:36:26.819432','6','Обратная связь','[{"added": {}}]',8,1,1),
 (7,'2021-02-07 11:36:53.925931','7','История','[{"added": {}}]',8,1,1),
 (8,'2021-02-07 11:37:02.113854','7','История','[{"changed": {"fields": ["\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]',8,1,2),
 (9,'2021-02-07 11:37:36.520949','8','Отчёты','[{"added": {}}]',8,1,1),
 (10,'2021-02-07 11:37:48.849086','8','Отчёты','[{"changed": {"fields": ["\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]',8,1,2),
 (11,'2021-02-07 11:42:38.683572','1','Главная','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (12,'2021-02-07 11:42:44.420022','2','Моя страница','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (13,'2021-02-07 11:42:51.277064','3','Профиль','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (14,'2021-02-07 11:42:59.279538','4','Тесты','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (15,'2021-02-07 11:43:12.389666','2','Моя страница','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (16,'2021-02-07 11:43:17.227362','3','Профиль','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (17,'2021-02-07 11:43:23.878191','4','Тесты','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (18,'2021-02-07 11:43:31.769263','5','Студенты','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (19,'2021-02-07 11:43:40.528541','6','Обратная связь','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (20,'2021-02-07 11:43:48.989819','6','Обратная связь','[]',8,1,2),
 (21,'2021-02-07 11:44:00.743288','7','История','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (22,'2021-02-07 11:44:05.284370','8','Отчёты','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (23,'2021-02-07 11:58:43.579059','1','Главная','[{"changed": {"fields": ["\u0421\u0441\u044b\u043b\u043a\u0430"]}}]',8,1,2),
 (24,'2021-02-07 13:20:18.537552','1','Иванов Сергей Романович','[{"added": {}}]',10,1,1),
 (25,'2021-02-07 13:20:58.666635','2','Кононов Константин Петрович','[{"added": {}}]',10,1,1),
 (26,'2021-02-07 13:22:49.065676','1','Иванов Пётр Геннадьевич','[{"added": {}}]',11,1,1),
 (27,'2021-02-07 13:23:30.696062','2','Репина Наталья Витальевна','[{"added": {}}]',11,1,1),
 (28,'2021-02-08 09:40:55.124373','1','Информационные технологии в управлении','[{"added": {}}, {"added": {"name": "question", "object": "\u0426\u0435\u043b\u044c \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0442\u0438\u0437\u0430\u0446\u0438\u0438 \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u0430 \u0437\u0430\u043a\u043b\u044e\u0447\u0430\u0435\u0442\u0441\u044f \u0432"}}, {"added": {"name": "question", "object": "\u0412 \u043a\u0430\u043a\u043e\u043c \u0437\u0430\u043a\u043e\u043d\u0435 \u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0430\u0435\u0442\u0441\u044f \u043e\u0431\u044a\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c \u043f\u0440\u043e\u0446\u0435\u0441\u0441\u0430 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0442\u0438\u0437\u0430\u0446\u0438\u0438 \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u0430"}}, {"added": {"name": "question", "object": "\u0414\u0430\u043d\u043d\u044b\u0435 \u043e\u0431 \u043e\u0431\u044a\u0435\u043a\u0442\u0430\u0445, \u0441\u043e\u0431\u044b\u0442\u0438\u044f\u0445 \u0438 \u043f\u0440\u043e\u0446\u0435\u0441\u0441\u0430\u0445, \u044d\u0442\u043e"}}, {"added": {"name": "question", "object": "\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f \u044d\u0442\u043e"}}]',12,1,1),
 (29,'2021-02-08 09:42:08.107731','4','Информация это','[{"added": {"name": "answer", "object": "\u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f, \u043d\u0430\u0445\u043e\u0434\u044f\u0449\u0438\u0435\u0441\u044f \u0432 \u043f\u0430\u043c\u044f\u0442\u0438 \u043a\u043e\u043c\u043f\u044c\u044e\u0442\u0435\u0440\u0430;"}}, {"added": {"name": "answer", "object": "\u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f, \u043d\u0430\u0445\u043e\u0434\u044f\u0449\u0438\u0435\u0441\u044f \u0432 \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0430\u0445 \u0434\u0430\u043d\u043d\u044b\u0445;"}}, {"added": {"name": "answer", "object": "\u043f\u0440\u0435\u0434\u0432\u0430\u0440\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u043d\u043d\u044b\u0435 \u0434\u0430\u043d\u043d\u044b\u0435, \u0433\u043e\u0434\u043d\u044b\u0435 \u0434\u043b\u044f \u043f\u0440\u0438\u043d\u044f\u0442\u0438\u044f \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0447\u0435\u0441\u043a\u0438\u0445 \u0440\u0435\u0448\u0435\u043d\u0438\u0439;"}}, {"added": {"name": "answer", "object": "\u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f, \u0437\u0430\u0444\u0438\u043a\u0441\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u044b\u0435 \u043d\u0430 \u043c\u0430\u0448\u0438\u043d\u043d\u044b\u0445 \u043d\u043e\u0441\u0438\u0442\u0435\u043b\u044f\u0445."}}]',9,1,2),
 (30,'2021-02-08 09:46:30.249379','3','Данные об объектах, событиях и процессах, это','[{"added": {"name": "answer", "object": "\u0441\u043e\u0434\u0435\u0440\u0436\u0438\u043c\u043e\u0435 \u0431\u0430\u0437 \u0437\u043d\u0430\u043d\u0438\u0439;"}}, {"added": {"name": "answer", "object": "\u043d\u0435\u043e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u043d\u043d\u044b\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f, \u043e\u0442\u0440\u0430\u0436\u0430\u044e\u0449\u0438\u0435 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0435 \u0444\u0430\u043a\u0442\u044b, \u043f\u0440\u043e\u0446\u0435\u0441\u0441\u044b, \u0441\u043e\u0431\u044b\u0442\u0438\u044f;"}}, {"added": {"name": "answer", "object": "\u043f\u0440\u0435\u0434\u0432\u0430\u0440\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u043d\u043d\u0430\u044f \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f;"}}, {"added": {"name": "answer", "object": "4 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f, \u043d\u0430\u0445\u043e\u0434\u044f\u0449\u0438\u0435\u0441\u044f \u0432 \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0430\u0445 \u0434\u0430\u043d\u043d\u044b\u0445."}}]',9,1,2),
 (31,'2021-02-08 09:47:09.425805','2','В каком законе отображается объективность процесса информатизации общества','[{"added": {"name": "answer", "object": "\u0417\u0430\u043a\u043e\u043d \u0443\u0431\u044b\u0432\u0430\u044e\u0449\u0435\u0439 \u0434\u043e\u0445\u043e\u0434\u043d\u043e\u0441\u0442\u0438."}}, {"added": {"name": "answer", "object": "\u0417\u0430\u043a\u043e\u043d \u0446\u0438\u043a\u043b\u0438\u0447\u0435\u0441\u043a\u043e\u0433\u043e \u0440\u0430\u0437\u0432\u0438\u0442\u0438\u044f \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u0430."}}, {"added": {"name": "answer", "object": "\u0417\u0430\u043a\u043e\u043d \u201c\u043d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u043e\u0433\u043e \u0440\u0430\u0437\u043d\u043e\u043e\u0431\u0440\u0430\u0437\u0438\u044f\u201d."}}, {"added": {"name": "answer", "object": "\u0417\u0430\u043a\u043e\u043d \u0435\u0434\u0438\u043d\u0441\u0442\u0432\u0430 \u0438 \u0431\u043e\u0440\u044c\u0431\u044b \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043b\u043e\u0436\u043d\u043e\u0441\u0442\u0435\u0439."}}]',9,1,2),
 (32,'2021-02-08 09:47:53.584838','1','Цель информатизации общества заключается в','[{"added": {"name": "answer", "object": "\u0441\u043f\u0440\u0430\u0432\u0435\u0434\u043b\u0438\u0432\u043e\u043c \u0440\u0430\u0441\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u0438\u0438 \u043c\u0430\u0442\u0435\u0440\u0438\u0430\u043b\u044c\u043d\u044b\u0445 \u0431\u043b\u0430\u0433;"}}, {"added": {"name": "answer", "object": "\u0443\u0434\u043e\u0432\u043b\u0435\u0442\u0432\u043e\u0440\u0435\u043d\u0438\u0438 \u0434\u0443\u0445\u043e\u0432\u043d\u044b\u0445 \u043f\u043e\u0442\u0440\u0435\u0431\u043d\u043e\u0441\u0442\u0435\u0439 \u0447\u0435\u043b\u043e\u0432\u0435\u043a\u0430;"}}, {"added": {"name": "answer", "object": "\u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u043e\u043c \u0443\u0434\u043e\u0432\u043b\u0435\u0442\u0432\u043e\u0440\u0435\u043d\u0438\u0438 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u043e\u043d\u043d\u044b\u0445 \u043f\u043e\u0442\u0440\u0435\u0431\u043d\u043e\u0441\u0442\u0435\u0439 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0445 \u0433\u0440\u0430\u0436\u0434\u0430\u043d, \u0438\u0445 \u0433\u0440\u0443\u043f\u043f, \u043f\u0440\u0435\u0434\u043f\u0440\u0438\u044f\u0442\u0438\u0439, \u043e\u0440\u0433\u0430\u043d\u0438\u0437\u0430\u0446\u0438\u0439 \u0438 \u0442. \u0434. \u0437\u0430 \u0441\u0447\u0435\u0442 \u043f\u043e\u0432\u0441\u0435\u043c\u0435\u0441\u0442\u043d\u043e\u0433\u043e \u0432\u043d\u0435\u0434\u0440\u0435\u043d\u0438\u044f \u043a\u043e\u043c\u043f\u044c\u044e\u0442\u0435\u0440\u043e\u0432 \u0438 \u0441\u0440\u0435\u0434\u0441\u0442\u0432 \u043a\u043e\u043c\u043c\u0443\u043d\u0438\u043a\u0430\u0446\u0438\u0439."}}]',9,1,2),
 (33,'2021-02-08 09:50:25.161375','2','Компьютерные технологии','[{"added": {}}, {"added": {"name": "question", "object": "\u0426\u0435\u043b\u044c \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0442\u0438\u0437\u0430\u0446\u0438\u0438 \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u0430 \u0437\u0430\u043a\u043b\u044e\u0447\u0430\u0435\u0442\u0441\u044f \u0432"}}, {"added": {"name": "question", "object": "\u0412 \u043a\u0430\u043a\u043e\u043c \u0437\u0430\u043a\u043e\u043d\u0435 \u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0430\u0435\u0442\u0441\u044f \u043e\u0431\u044a\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c \u043f\u0440\u043e\u0446\u0435\u0441\u0441\u0430 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0442\u0438\u0437\u0430\u0446\u0438\u0438 \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u0430"}}]',12,1,1),
 (34,'2021-02-08 09:54:38.885784','6','В каком законе отображается объективность процесса информатизации общества','',9,1,3),
 (35,'2021-02-08 09:54:38.893786','5','Цель информатизации общества заключается в','',9,1,3),
 (36,'2021-02-08 09:55:29.912825','2','Компьютерные технологии','[{"added": {"name": "question", "object": "\u041e\u0440\u0433\u0430\u043d\u0438\u0437\u0430\u0446\u0438\u043e\u043d\u043d\u0430\u044f \u0441\u0442\u0440\u0430\u0442\u0435\u0433\u0438\u044f \u0438\u043d\u0442\u0435\u0433\u0440\u0430\u0446\u0438\u0438 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0441\u0442\u0432\u0430 \u0438 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u0439, \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u044f \u0442\u0440\u0443\u0434\u043e\u0432\u044b\u043c\u0438 \u0440\u0435\u0441\u0443\u0440\u0441\u0430\u043c\u0438, \u0444\u0438\u043d\u0430\u043d\u0441\u043e\u0432\u043e\u0433\u043e \u043c\u0435\u043d\u0435\u0434\u0436\u043c\u0435\u043d\u0442\u0430 \u0438 \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u044f \u0430\u043a\u0442\u0438\u0432\u0430\u043c\u0438, \u043e\u0440\u0438\u0435\u043d\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u0430\u044f \u043d\u0430 \u043d\u0435\u043f\u0440\u0435\u0440\u044b\u0432\u043d\u0443\u044e \u0431\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u043e\u0432\u043a\u0443 \u0438 \u043e\u043f\u0442\u0438\u043c\u0438\u0437\u0430\u0446\u0438\u044e \u0440\u0435\u0441\u0443\u0440\u0441\u043e\u0432 \u043f\u0440\u0435\u0434\u043f\u0440\u0438\u044f\u0442\u0438\u044f \u043f\u043e\u0441\u0440\u0435\u0434\u0441\u0442\u0432\u043e\u043c \u0441\u043f\u0435\u0446\u0438\u0430\u043b\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u043e\u0433\u043e \u0438\u043d\u0442\u0435\u0433\u0440\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u043e\u0433\u043e \u043f\u0430\u043a\u0435\u0442\u0430 \u043f\u0440\u0438\u043a\u043b\u0430\u0434\u043d\u043e\u0433\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u043d\u043e\u0433\u043e \u043e\u0431\u0435\u0441\u043f\u0435\u0447\u0435\u043d\u0438\u044f, \u043e\u0431\u0435\u0441\u043f\u0435\u0447\u0438\u0432\u0430\u044e\u0449\u0435\u0433\u043e \u043e\u0431\u0449\u0443\u044e \u043c\u043e\u0434\u0435\u043b\u044c \u0434\u0430\u043d\u043d\u044b\u0445 \u0438 \u043f\u0440\u043e\u0446\u0435\u0441\u0441\u043e\u0432 \u0434\u043b\u044f \u0432\u0441\u0435\u0445 \u0441\u0444\u0435\u0440 \u0434\u0435\u044f\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438 \u2013 \u044d\u0442\u043e\u2026"}}, {"added": {"name": "question", "object": "\u041d\u0418\u041e\u041a\u0420 \u043f\u043e\u0434\u0440\u0430\u0437\u0434\u0435\u043b\u044f\u044e\u0442\u0441\u044f \u043d\u0430:"}}]',12,1,2),
 (37,'2021-02-08 09:56:09.522921','8','НИОКР подразделяются на:','[{"added": {"name": "answer", "object": "\u0442\u043e\u0432\u0430\u0440\u043d\u044b\u0435 \u041d\u0418\u041e\u041a\u0420, \u041a\u0430\u043f\u0438\u0442\u0430\u043b\u044c\u043d\u044b\u0435 \u041d\u0418\u041e\u041a\u0420"}}, {"added": {"name": "answer", "object": "\u043a\u0440\u0430\u0442\u043a\u043e\u0441\u0440\u043e\u0447\u043d\u044b\u0435, \u0441\u0440\u0435\u0434\u043d\u0435\u0441\u0440\u043e\u0447\u043d\u044b\u0435"}}, {"added": {"name": "answer", "object": "\u0441\u0442\u0440\u0430\u0442\u0435\u0433\u0438\u0447\u0435\u0441\u043a\u0438 \u0432\u0430\u0436\u043d\u044b\u0435, \u043f\u043e\u0442\u0435\u043d\u0446\u0438\u0430\u043b\u044c\u043d\u043e \u0438\u043d\u0442\u0435\u0440\u0435\u0441\u043d\u044b\u0435"}}, {"added": {"name": "answer", "object": "\u043e\u0431\u044a\u0435\u043a\u0442\u0438\u0432\u043d\u044b\u0435, \u0441\u0443\u0431\u044a\u0435\u043a\u0442\u0438\u0432\u043d\u044b\u0435"}}]',9,1,2),
 (38,'2021-02-08 09:56:47.396246','7','Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию р','[{"added": {"name": "answer", "object": "\u0415\u0410\u041c (Enterprise asset management)"}}, {"added": {"name": "answer", "object": "ERP (Enterprise Resource Planning)"}}, {"added": {"name": "answer", "object": "PLM (Product Lifecycle Management)"}}, {"added": {"name": "answer", "object": "APS (American Physical Society)"}}]',9,1,2),
 (39,'2021-02-08 10:05:03.846929','4','Тесты','[{"changed": {"fields": ["\u0421\u0441\u044b\u043b\u043a\u0430"]}}]',8,1,2),
 (40,'2021-02-09 07:02:32.746254','13','Данные об объектах, событиях и процессах, это: предварительно обработанная информация; - Неверно','',13,1,3),
 (41,'2021-02-09 07:02:32.753252','12','В каком законе отображается объективность процесса информатизации общества: Закон циклического развития общества. - Неверно','',13,1,3),
 (42,'2021-02-09 07:02:32.774252','11','Цель информатизации общества заключается в: справедливом распределении материальных благ; - Неверно','',13,1,3),
 (43,'2021-02-09 07:02:32.792252','10','Данные об объектах, событиях и процессах, это: содержимое баз знаний; - Неверно','',13,1,3),
 (44,'2021-02-09 07:02:32.811254','9','Цель информатизации общества заключается в: справедливом распределении материальных благ; - Неверно','',13,1,3),
 (45,'2021-02-09 07:02:32.833246','8','Данные об объектах, событиях и процессах, это: содержимое баз знаний; - Неверно','',13,1,3),
 (46,'2021-02-09 07:02:32.860256','7','Цель информатизации общества заключается в: справедливом распределении материальных благ; - Неверно','',13,1,3),
 (47,'2021-02-09 07:02:32.867254','6','Данные об объектах, событиях и процессах, это: содержимое баз знаний; - Неверно','',13,1,3),
 (48,'2021-02-09 07:02:32.886250','5','Цель информатизации общества заключается в: справедливом распределении материальных благ; - Неверно','',13,1,3),
 (49,'2021-02-09 07:02:32.905252','4','Данные об объектах, событиях и процессах, это: 4 сообщения, находящиеся в хранилищах данных. - Неверно','',13,1,3),
 (50,'2021-02-09 07:02:32.921246','3','Цель информатизации общества заключается в: удовлетворении духовных потребностей человека; - Неверно','',13,1,3),
 (51,'2021-02-09 07:02:32.927254','2','Данные об объектах, событиях и процессах, это: 4 сообщения, находящиеся в хранилищах данных. - Неверно','',13,1,3),
 (52,'2021-02-09 07:02:32.932252','1','Цель информатизации общества заключается в: удовлетворении духовных потребностей человека; - Неверно','',13,1,3),
 (53,'2021-02-09 08:03:03.971106','16','В каком законе отображается объективность процесса информатизации общества: Закон циклического развития общества. - Неверно','',13,1,3),
 (54,'2021-02-10 01:56:22.719094','9','Выход','[{"added": {}}]',8,1,1),
 (55,'2021-02-10 03:19:57.847382','71','Информация это: предварительно обработанные данные, годные для принятия управленческих решений; - Верно','',13,1,3),
 (56,'2021-02-10 03:19:57.854383','70','Данные об объектах, событиях и процессах, это: 4 сообщения, находящиеся в хранилищах данных. - Неверно','',13,1,3),
 (57,'2021-02-10 03:19:57.888385','69','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (58,'2021-02-10 03:19:57.909382','68','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (59,'2021-02-10 03:19:57.937382','67','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (60,'2021-02-10 03:19:57.960382','66','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (61,'2021-02-10 03:19:57.991383','65','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (62,'2021-02-10 03:19:58.017381','64','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (63,'2021-02-10 03:19:58.025385','63','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (64,'2021-02-10 03:19:58.032388','62','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (65,'2021-02-10 03:19:58.039389','61','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (66,'2021-02-10 03:19:58.047384','60','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (67,'2021-02-10 03:19:58.079390','59','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (68,'2021-02-10 03:19:58.104391','58','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (69,'2021-02-10 03:19:58.112382','57','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (70,'2021-02-10 03:19:58.118384','56','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (71,'2021-02-10 03:19:58.125387','55','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (72,'2021-02-10 03:19:58.131385','54','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (73,'2021-02-10 03:19:58.142381','53','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (74,'2021-02-10 03:19:58.148381','52','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (75,'2021-02-10 03:19:58.193385','51','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (76,'2021-02-10 03:19:58.214383','50','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (77,'2021-02-10 03:19:58.221383','49','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (78,'2021-02-10 03:19:58.228387','48','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (79,'2021-02-10 03:19:58.234384','47','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (80,'2021-02-10 03:19:58.261385','46','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (81,'2021-02-10 03:19:58.284384','45','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (82,'2021-02-10 03:19:58.306385','44','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (83,'2021-02-10 03:19:58.326377','43','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (84,'2021-02-10 03:19:58.350385','42','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (85,'2021-02-10 03:19:58.358384','41','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (86,'2021-02-10 03:19:58.364382','40','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (87,'2021-02-10 03:19:58.372384','39','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (88,'2021-02-10 03:19:58.400383','38','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (89,'2021-02-10 03:19:58.412386','37','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (90,'2021-02-10 03:19:58.436381','36','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (91,'2021-02-10 03:19:58.475383','35','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (92,'2021-02-10 03:19:58.494383','34','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (93,'2021-02-10 03:19:58.514386','33','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (94,'2021-02-10 03:19:58.535388','32','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (95,'2021-02-10 03:19:58.542406','31','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (96,'2021-02-10 03:19:58.548383','30','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (97,'2021-02-10 03:19:58.558388','29','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (98,'2021-02-10 03:19:58.567382','28','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (99,'2021-02-10 03:19:58.575385','27','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (100,'2021-02-10 03:19:58.581384','26','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (101,'2021-02-10 03:19:58.587384','25','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (102,'2021-02-10 03:19:58.594386','24','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (103,'2021-02-10 03:19:58.600381','23','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (104,'2021-02-10 03:19:58.607383','22','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (105,'2021-02-10 03:19:58.614384','21','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (106,'2021-02-10 03:19:58.626382','20','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (107,'2021-02-10 03:19:58.632386','19','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (108,'2021-02-10 03:19:58.639385','18','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (109,'2021-02-10 03:19:58.645385','17','В каком законе отображается объективность процесса информатизации общества: Закон циклического развития общества. - Неверно','',13,1,3),
 (110,'2021-02-10 03:19:58.651385','15','В каком законе отображается объективность процесса информатизации общества: Закон циклического развития общества. - Неверно','',13,1,3),
 (111,'2021-02-10 03:19:58.659385','14','Цель информатизации общества заключается в: максимальном удовлетворении информационных потребностей отдельных граждан, их групп, предприятий, организаций и т. д. за счет повсеместного внедрения компью','',13,1,3),
 (112,'2021-02-10 05:06:44.471995','76','Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию р','',13,1,3),
 (113,'2021-02-10 05:06:44.478004','75','Информация это: сообщения, находящиеся в памяти компьютера; - Неверно','',13,1,3),
 (114,'2021-02-10 05:06:44.496998','74','Данные об объектах, событиях и процессах, это: необработанные сообщения, отражающие отдельные факты, процессы, события; - Верно','',13,1,3),
 (115,'2021-02-10 05:06:44.511991','73','В каком законе отображается объективность процесса информатизации общества: Закон “необходимого разнообразия”. - Верно','',13,1,3),
 (116,'2021-02-10 05:06:44.529000','72','Цель информатизации общества заключается в: удовлетворении духовных потребностей человека; - Неверно','',13,1,3),
 (117,'2021-02-10 06:10:44.535737','4','Тесты','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (118,'2021-02-10 06:11:18.507699','7','История','[{"changed": {"fields": ["Role"]}}]',8,1,2),
 (119,'2021-02-10 07:31:00.870012','84','НИОКР подразделяются на:: стратегически важные, потенциально интересные - Неверно','',13,1,3),
 (120,'2021-02-10 07:31:00.876991','83','Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию р','',13,1,3),
 (121,'2021-02-10 08:39:58.149788','8','Отчёты','[{"changed": {"fields": ["\u0421\u0441\u044b\u043b\u043a\u0430"]}}]',8,1,2),
 (122,'2021-02-11 04:20:44.150049','8','НИОКР подразделяются на:','[{"changed": {"fields": ["Position"]}}]',9,1,2),
 (123,'2021-02-11 04:20:56.165025','7','Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию р','[{"changed": {"fields": ["Position"]}}]',9,1,2),
 (124,'2021-02-11 04:21:07.291307','4','Информация это','[{"changed": {"fields": ["Position"]}}]',9,1,2),
 (125,'2021-02-11 04:21:15.453437','3','Данные об объектах, событиях и процессах, это','[{"changed": {"fields": ["Position"]}}]',9,1,2),
 (126,'2021-02-11 04:21:25.546756','2','В каком законе отображается объективность процесса информатизации общества','[{"changed": {"fields": ["Position"]}}]',9,1,2),
 (127,'2021-02-11 04:21:32.913386','1','Цель информатизации общества заключается в','[{"changed": {"fields": ["Position"]}}]',9,1,2);
INSERT INTO "django_migrations" VALUES (1,'contenttypes','0001_initial','2021-02-07 08:29:37.275213'),
 (2,'auth','0001_initial','2021-02-07 08:29:37.315213'),
 (3,'admin','0001_initial','2021-02-07 08:29:37.363213'),
 (4,'admin','0002_logentry_remove_auto_add','2021-02-07 08:29:37.419216'),
 (5,'admin','0003_logentry_add_action_flag_choices','2021-02-07 08:29:37.465215'),
 (6,'contenttypes','0002_remove_content_type_name','2021-02-07 08:29:37.533215'),
 (7,'auth','0002_alter_permission_name_max_length','2021-02-07 08:29:37.561214'),
 (8,'auth','0003_alter_user_email_max_length','2021-02-07 08:29:37.597215'),
 (9,'auth','0004_alter_user_username_opts','2021-02-07 08:29:37.648215'),
 (10,'auth','0005_alter_user_last_login_null','2021-02-07 08:29:37.696215'),
 (11,'auth','0006_require_contenttypes_0002','2021-02-07 08:29:37.722263'),
 (12,'auth','0007_alter_validators_add_error_messages','2021-02-07 08:29:37.754216'),
 (13,'auth','0008_alter_user_username_max_length','2021-02-07 08:29:37.803215'),
 (14,'auth','0009_alter_user_last_name_max_length','2021-02-07 08:29:37.843219'),
 (15,'auth','0010_alter_group_name_max_length','2021-02-07 08:29:37.883219'),
 (16,'auth','0011_update_proxy_permissions','2021-02-07 08:29:37.905216'),
 (17,'auth','0012_alter_user_first_name_max_length','2021-02-07 08:29:37.965215'),
 (18,'sessions','0001_initial','2021-02-07 08:29:37.997218'),
 (19,'studenttesting','0001_initial','2021-02-07 08:29:38.089220'),
 (20,'studenttesting','0002_auto_20210207_1842','2021-02-07 11:42:17.076696'),
 (21,'studenttesting','0003_auto_20210207_2010','2021-02-07 13:10:39.330801'),
 (22,'studenttesting','0004_auto_20210207_2013','2021-02-07 13:13:43.618046'),
 (23,'studenttesting','0005_auto_20210207_2019','2021-02-07 13:19:28.118529'),
 (24,'studenttesting','0006_auto_20210208_1636','2021-02-08 09:36:42.439703'),
 (25,'studenttesting','0007_result_completion_date','2021-02-10 03:19:20.563668'),
 (26,'background_task','0001_initial','2021-02-11 02:07:54.144443'),
 (27,'background_task','0002_auto_20170927_1109','2021-02-11 02:07:54.244465'),
 (28,'studenttesting','0008_auto_20210211_1118','2021-02-11 04:18:14.016168');
COMMIT;
