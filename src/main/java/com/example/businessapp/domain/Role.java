package com.example.businessapp.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private boolean createIssue;

    private boolean allIssues;

    private boolean reportedByMe;

    private boolean assignedToMe;

    private boolean users;

    private boolean configuration;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isCreateIssue() {
        return createIssue;
    }

    public void setCreateIssue(boolean createIssue) {
        this.createIssue = createIssue;
    }

    public boolean isAllIssues() {
        return allIssues;
    }

    public void setAllIssues(boolean allIssues) {
        this.allIssues = allIssues;
    }

    public boolean isReportedByMe() {
        return reportedByMe;
    }

    public void setReportedByMe(boolean reportedByMe) {
        this.reportedByMe = reportedByMe;
    }

    public boolean isAssignedToMe() {
        return assignedToMe;
    }

    public void setAssignedToMe(boolean assignedToMe) {
        this.assignedToMe = assignedToMe;
    }

    public boolean isUsers() {
        return users;
    }

    public void setUsers(boolean users) {
        this.users = users;
    }

    public boolean isConfiguration() {
        return configuration;
    }

    public void setConfiguration(boolean configuration) {
        this.configuration = configuration;
    }

}
