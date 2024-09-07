package org.zavatra.todoj1.API;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zavatra.todoj1.classes.ToDo;
import org.zavatra.todoj1.methods.SQLMethods;

import java.util.List;

@RestController
public class endpoints {
    @GetMapping("/")
    public String hello() {
        return "hello";
    }
    @GetMapping("/todos")
    public List<ToDo> getToDos(){
        return (SQLMethods.selectAll());
    }
}
