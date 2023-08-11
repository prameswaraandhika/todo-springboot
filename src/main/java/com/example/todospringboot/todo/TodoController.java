package com.example.todospringboot.todo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("name")
public class TodoController {

    @Autowired
    private TodoService todoService;

    @RequestMapping("list-todos")
    public String listAllTodos(ModelMap model) {
        List<Todo> todos = todoService.findByUsername("Prameswara");
        model.addAttribute("todos", todos);
        return "listTodos";
    }

    @RequestMapping(value = "form-todo", method = RequestMethod.GET)
    public String showNewTodoPage(ModelMap model) {
        String username = model.get("name") != null ? model.get("name").toString() : "defaultUsername";
        model.put("todo", new Todo(0, username, "DefaultDesc", LocalDate.now(), false));
        return "formTodo";
    }

    @RequestMapping(value = "form-todo", method = RequestMethod.POST)
    public String addNewTodo(ModelMap model, @Valid Todo todo, BindingResult result) {

        if (result.hasErrors()) {
            return "formTodo";
        }

        String username = model.get("name") != null ? model.get("name").toString() : "defaultUsername";
        todoService.addTodo(username, todo.getDescription(), LocalDate.now().plusDays(1), false);
        return "redirect:list-todos";
    }

    @RequestMapping("delete-todo")
    public String deleteTodo(@RequestParam int id) {
        todoService.deleteTodoById(id);
        return "redirect:list-todos";
    }

    @RequestMapping("update-todo")
    public String showUpdateToPage(@RequestParam int id) {
        todoService.deleteTodoById(id);
        return "redirect:list-todos";
    }
}
