// only a list owner can view, update or delete a task
@id("list_owner_can_view_update_delete_task")
permit(
    principal,
    action in [SimpleTodo::Action::"viewTask", SimpleTodo::Action::"updateTask", SimpleTodo::Action::"deleteTask"],
    resource
) when {
    resource.belongs_to.owner == principal 
};

// only list owner can create a new task
@id("list_owner_can_create_task")
permit(
    principal,
    action in [SimpleTodo::Action::"createTask"],
    resource
) when {
    resource.owner == principal 
};

// anyone can create a new list
@id("anyone_can_create_list")
permit(
    principal,
    action in [SimpleTodo::Action::"createList"],
    resource
);