package com.codeclan.md;

import static org.junit.Assert.*;
import java.io.IOException;
import java.util.ArrayList;

import org.junit.Test;

public class APITest {
	@Test
    public void testMovieDetails() {
        APIRequest a = new APIRequest();
        String param = "Batman";
        String response = null;
		try {
			response = a.run("http://www.omdbapi.com/?s="+param);
			System.out.println(response);
		} catch (IOException e) {
			e.printStackTrace();
		}
        assertTrue(!response.equals(""));
    }
	
	@Test
	public void testUrlWithSpaces() throws IOException {
	    String title="The return of the king";
	    APIRequest a = new APIRequest();
	    String response = a.run("http://www.omdbapi.com/?s="+title);
	    System.out.println(response);
	    assertTrue(!response.equals(""));
	}
	
	@Test
	public void testSearchJsonParser() {
	    String json = "{\"Search\":[{\"Title\":\"The Dark Knight\",\"Year\":\"2008\",\"imdbID\":\"tt0468569\",\"Type\":\"movie\",\"Poster\":\"http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg\"},{\"Title\":\"The Dark Knight Rises\",\"Year\":\"2012\",\"imdbID\":\"tt1345836\",\"Type\":\"movie\",\"Poster\":\"http://ia.media-imdb.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_SX300.jpg\"}],\"totalResults\":\"2\",\"Response\":\"True\"}";
	    ArrayList<Movie> movies = MovieQuery.parseJSON(json);
	    System.out.println(movies);
	    assertTrue(movies.size() == 2);
	}
}
