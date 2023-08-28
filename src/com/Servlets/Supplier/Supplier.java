package com.Servlets.Supplier;

public class Supplier {

	public static int sup_id;
	public static String name;
	public static String contact;
	public static String username;
	public static String password;
	
	public static int getSup_id() {
		return sup_id;
	}
	public static void setSup_id(int sup_id) {
		Supplier.sup_id = sup_id;
	}
	public static String getName() {
		return name;
	}
	public static void setName(String name) {
		Supplier.name = name;
	}
	public static String getContact() {
		return contact;
	}
	public static void setContact(String contact) {
		Supplier.contact = contact;
	}
	public static String getUsername() {
		return username;
	}
	public static void setUsername(String username) {
		Supplier.username = username;
	}
	public static String getPassword() {
		return password;
	}
	public static void setPassword(String password) {
		Supplier.password = password;
	}
	
}
