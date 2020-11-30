package com.kruger.todo.persistence.entity;

import javax.persistence.Table;

@Entity
@Table(name = "tasks")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "task_id")
    private Integer taskId;
    @Column(name = "task_description")
    private String taskDescription;
    @Column(name = "task_completed")
    private boolean taskCompleted;
    @Column(name = "task_deleted")
    private boolean taskDeleted;
    @Column()
}
