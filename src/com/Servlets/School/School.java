package com.Servlets.School;

import java.util.ArrayList;

public class School {
	public static int id;
	public static String name;
	public static String username;
	public static ArrayList<Integer> studentId;
	public static ArrayList<String> studentNames;
	public static ArrayList<Integer> studentAttendance;
	public static ArrayList<Integer> studentWeight;
	public static ArrayList<Integer> studentHeight;
	
	public static int getId() {
		return id;
	}
	public static void setId(int id) {
		School.id = id;
	}
	public static String getName() {
		return name;
	}
	public static void setName(String name) {
		School.name = name;
	}
	public static String getUsername() {
		return username;
	}
	public static void setUsername(String username) {
		School.username = username;
	}
	public static ArrayList<Integer> getStudentId() {
		return studentId;
	}
	public static void setStudentId(ArrayList<Integer> studentId) {
		School.studentId = studentId;
	}
	public static ArrayList<String> getStudentNames() {
		return studentNames;
	}
	public static void setStudentNames(ArrayList<String> studentNames) {
		School.studentNames = studentNames;
	}
	public static ArrayList<Integer> getStudentAttendance() {
		return studentAttendance;
	}
	public static void setStudentAttendance(ArrayList<Integer> studentAttendance) {
		School.studentAttendance = studentAttendance;
	}
	public static ArrayList<Integer> getStudentWeight() {
		return studentWeight;
	}
	public static void setStudentWeight(ArrayList<Integer> studentWeight) {
		School.studentWeight = studentWeight;
	}
	public static ArrayList<Integer> getStudentHeight() {
		return studentHeight;
	}
	public static void setStudentHeight(ArrayList<Integer> studentHeight) {
		School.studentHeight = studentHeight;
	}
	
}
