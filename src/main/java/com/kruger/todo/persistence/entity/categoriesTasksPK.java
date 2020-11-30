package com.kruger.todo.persistence.entity;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class categoriesTasksPK implements Serializable {
    @Column(name = "category_id")
    private Integer category_id;
    @Column(name = "task_id")
    private Integer task_id;

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public Integer getTask_id() {
        return task_id;
    }

    public void setTask_id(Integer task_id) {
        this.task_id = task_id;
    }
}
