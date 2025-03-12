# Simple Todo

In this scenario, we’re designing a simple Todo application where users can create lists and manage the tasks within each list. The key idea is that each list is owned by a specific user, and all tasks in the list are implicitly owned by the same user via that relationship. This ensures that only the rightful owner can perform operations such as creating, updating, deleting, or even viewing tasks within their lists.

## Principals/Resources

### User (Principal)
**Role**: The end-user of the application. <br/>
**Ownership**: When a user creates a list, they become the owner of that list—and by extension, the tasks contained within it.<br/>
**Purpose**: This relationship is essential because it determines who has the authority to manage the tasks on a particular list.


### List (Resource)
**Structure**: A list is a container that holds multiple tasks.<br/>
**Owner Relationship**: Each list has an owner attribute that is associated with a specific user. This relationship is fundamental to controlling access.<br/>
**Usage**: Anyone can create a list (open access), but once created, only the list’s owner should be able to manage tasks within it.

### Task (Resource)
**Structure**: A task represents a single to-do item.<br/>
**Relationship to List**: Every task belongs to a list. Access to a task is controlled indirectly via the list’s ownership.<br/>
**Usage**: Since tasks are nested inside lists, their permissions are derived from the list’s owner.

## Actions

* createList: Any user can create a new list.
* createTask: Only the owner of a list can create a task inside that list.
* updateTask: Only the owner of the list to which the task belongs can update that task.
* deleteTask: Only the owner of the list can delete tasks from the list.
* viewTask: Only the owner of the list can view tasks within that list.