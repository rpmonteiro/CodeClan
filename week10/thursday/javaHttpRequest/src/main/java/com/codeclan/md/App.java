package com.codeclan.md;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) throws IOException
    {
	    String query = "http://www.omdbapi.com/?s="+"Lord of the rings";
	    MovieQuery movieQuery = new MovieQuery(query);
	    ArrayList<Movie> finalResult = movieQuery.submitQuery();
	    
	    for(Movie movie : finalResult) {
	    	System.out.print(movie.getTitle() + " ");
	    	System.out.print(movie.getYear() + " ");
	    	System.out.print(movie.getType() + " \n");
	    }
    }
}
