/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author USER
 */
public class Score {
    private String nameStudent;
    private String nameSuject;
    private float active;
    private float pt1;
    private float pt2;
    private float project;
    private float finalExam;
    private float avg;

    public String getNameStudent() {
        return nameStudent;
    }

    public float getActive() {
        return active;
    }

    public void setActive(float active) {
        this.active = active;
    }

    public void setNameStudent(String nameStudent) {
        this.nameStudent = nameStudent;
    }

    public String getNameSuject() {
        return nameSuject;
    }

    public void setNameSuject(String nameSuject) {
        this.nameSuject = nameSuject;
    }

    public float getPt1() {
        return pt1;
    }

    public void setPt1(float pt1) {
        this.pt1 = pt1;
    }

    public float getPt2() {
        return pt2;
    }

    public void setPt2(float pt2) {
        this.pt2 = pt2;
    }

    public float getProject() {
        return project;
    }

    public void setProject(float project) {
        this.project = project;
    }

    public float getFinalExam() {
        return finalExam;
    }

    public void setFinalExam(float finalExam) {
        this.finalExam = finalExam;
    }

    public float getAvg() {
        return avg;
    }

    public void setAvg(float avg) {
        this.avg = avg;
    }

    
    
}
