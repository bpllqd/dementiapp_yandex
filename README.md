# DementiApp - приложение ToDO-like для тех, кто вечно забывает таски

#### Ссылка на загрузку (Android):  

## Features:
#### Экран "Мои дела"

<img src="/assets/app_samples/todo_list_sample.png" alt="ToDo list" width="400"/> 
<br>

Данный экран предоставляет информацию о списке дел: выполненных/невыполненных, срочных/несрочных. Экран начинается с SliverPersistanceHeader, который дает title, количество выполненных дел а также кнопку-фильтр для показа/скрытия выполненных дел. Далее идет список задач, реализованный через SliverList и Dismissible. Есть возможность отмечать дело выполненным через чекбокс или по свайпу вправо, свайпом влево можно удалить таску из списка. В самом конце списка присутствует кнопка "Новое", навигирующая пользователя на экран "Добавления дел". Также присутствует FloatingActionButton, навигирующая на экран "Добавления дел".

#### Экран "Добавления/Редактирования дела"

<img src="/assets/app_samples/todo_create_sample.png" alt="ToDo create" width="400"/>  

Данный экран предоставляет интерфейс для добавления/редактирования дел. Он состоит из MaterialTextField, куда пользователь вносит описание дела, выпадающее меню с выбором приоритета для дела, свитч даты дедлайна с календарем, а также кнопки удаления дела. В шапке присутсвуют элементы для выхода из экрана и для сохранения и выхода из экрана.