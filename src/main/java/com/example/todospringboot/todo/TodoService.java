package com.example.todospringboot.todo;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    private static int todosCount = 1;

    static {
        todos.add(new Todo(todosCount++, "Prameswara", "Java Swing GUI", LocalDate.now().plusYears(1), false));
        todos.add(new Todo(todosCount++, "Prameswara", "Java Libgdx Game Development", LocalDate.now().plusYears(2),
                false));
        todos.add(new Todo(todosCount++, "Prameswara", "Java Spring", LocalDate.now().plusDays(4), false));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }

    public void addTodo(String username, String description, LocalDate targetDate, boolean done) {
        todos.add(new Todo(todosCount++, username, description, targetDate, done));
    }

    public void deleteTodoById(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        todos.removeIf(predicate);
    }

    public Todo findById(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        Todo todo = todos.stream().filter(predicate).findFirst().get();
        return todo;
    }

    public void updateTodo(@Valid Todo todo) {
        deleteTodoById(todo.getId());
        todos.add(todo);
    }
}
