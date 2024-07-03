# <img src="/assets/app_icons/light/app_logo_light.png" width=50 alt="logo"> DementiApp - ToDO-like для тех, кто вечно забывает таски

#### Ссылка на загрузку (Android):  https://disk.yandex.ru/d/vMg7j3Fiep1cIw

## Features:
### Экран "Мои дела"

<img src="/assets/app_samples/todo_list_sample.png" alt="ToDo list" width="400"/> 
<br>

Данный экран предоставляет информацию о списке дел: выполненных/невыполненных, срочных/несрочных. Есть возможность фильтровать задачи на предмет готовности, отмечать задачи выполненными, отмечать задачи невыполненными, а также их удалять. Присутствует кнопка + для добавления новых задач.

### Экран "Добавления/Редактирования дела"

<img src="/assets/app_samples/todo_create_sample.png" alt="ToDo create" width="400"/>  

Данный экран предоставляет интерфейс для добавления/редактирования дел. Есть возможность написать задачу, выбрать для нее приоритет (default: no), а также опционально задать deadline. В случае, если происходит редактирование уже существующей задачи, появляется возможность ее удалить.

#### Реализованные фичи:
* UI
* State-manager: BLoC
* Local datasource: SQFlite
* Remote datasource: Dio
* Localization: intl
* File-structure: faeture-first
* Architechture: clean