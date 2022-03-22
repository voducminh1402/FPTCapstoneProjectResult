/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fucapstoneresult.models;

/**
 *
 * @author VODUCMINH
 */
public class InstructorDTO {
    private String instructorID;
    private String instructorName;
    private String instructorImage;
    
    public InstructorDTO() {
    }

    public InstructorDTO(String instructorID, String instructorName, String instructorImage) {
        this.instructorID = instructorID;
        this.instructorName = instructorName;
        this.instructorImage = instructorImage;
    }

    public String getInstructorID() {
        return instructorID;
    }

    public void setInstructorID(String instructorID) {
        this.instructorID = instructorID;
    }

    public String getInstructorName() {
        return instructorName;
    }

    public void setInstructorName(String instructorName) {
        this.instructorName = instructorName;
    }

    public String getInstructorImage() {
        return instructorImage;
    }

    public void setInstructorImage(String instructorImage) {
        this.instructorImage = instructorImage;
    }

    @Override
    public String toString() {
        return "InstructorDTO{" + "instructorID=" + instructorID + ", instructorName=" + instructorName + ", instructorImage=" + instructorImage + '}';
    }

}
