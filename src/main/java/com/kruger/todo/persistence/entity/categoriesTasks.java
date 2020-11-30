package com.kruger.todo.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "categories_tasks")
public class categoriesTasks {
    @EmbeddedId
    private categoriesTasksPK id;

    @ManyToOne
    @JoinColumn(name = "category_id", insertable = false, updatable = false)
    private Category category;
    @ManyToone
    @JoinColumn(name = "task_id", insertable = false, updatable = false)
    private Task task;

}
