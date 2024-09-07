package org.zavatra.todoj1.classes;

import lombok.*;

import java.time.LocalDate;
import java.util.Date;

@AllArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class ToDo {
    private int id;
    private String title;
    private String description;
    private importance importance;
    private Date creationDate;
    private Date deadline;
    private Date executionDate;
    private status status;
}
