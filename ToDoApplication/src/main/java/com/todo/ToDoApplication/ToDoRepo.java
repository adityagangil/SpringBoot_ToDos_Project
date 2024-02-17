package com.todo.ToDoApplication;

import org.springframework.data.repository.CrudRepository;
import com.todo.ToDoApplication.ToDo;

public interface ToDoRepo extends CrudRepository<ToDo, Integer> {

}
