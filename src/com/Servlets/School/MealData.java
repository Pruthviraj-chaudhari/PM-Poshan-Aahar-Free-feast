package com.Servlets.School;

import java.util.*;

public class MealData {

	 	public static List<Map<String, Object>> mealList;

	    // Getter 
	    public static List<Map<String, Object>> getMealList() {
	        return mealList;
	    }

	    // Setter 
	    public static void setMealList(List<Map<String, Object>> mealList1) {
	        mealList = mealList1;
	    }
}
