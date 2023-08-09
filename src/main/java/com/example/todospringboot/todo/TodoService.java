package com.example.todospringboot.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    static {
        todos.add(new Todo(1, "Prameswara", "Java Swing", LocalDate.now().plusYears(1), false));
        todos.add(new Todo(2, "Prameswara", "Java Libgdx", LocalDate.now().plusYears(2), false));
        todos.add(new Todo(3, "Prameswara", "Java Spring", LocalDate.now().plusDays(4), false));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }
}
