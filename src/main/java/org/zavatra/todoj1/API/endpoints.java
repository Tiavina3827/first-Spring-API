package org.zavatra.todoj1.API;

import org.springframework.web.bind.annotation.*;
import org.zavatra.todoj1.classes.ToDo;
import org.zavatra.todoj1.methods.SQLMethods;

import java.util.List;

import static org.zavatra.todoj1.methods.SQLMethods.selectByKeyword;

@RestController
public class endpoints {
    @GetMapping("/")
    public String hello() {
        return "Les différents endpoints possible:  /todos ;  /todos/{id} ;  /todos/{Keyword}/{Value}  " ;
    }
    @GetMapping("/todos")
    public List<ToDo> getToDos(){
        return (SQLMethods.selectAll());
    }
    @GetMapping("/todos/{id}")
    public ToDo getToDo(@PathVariable int id){
        return (SQLMethods.selectById(id));
    }
    @GetMapping("/todos/{Keyword}/{Value}")
    public List<ToDo> getToDosByQuery(@PathVariable String Keyword, @PathVariable String Value){
        return selectByKeyword(Keyword, Value);
    }

}
