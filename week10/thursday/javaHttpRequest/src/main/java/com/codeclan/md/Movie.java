package com.codeclan.md;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class Movie {
	
    public enum Type { MOVIE, SERIES, EPISODE }

	private String title;
    private String year;
    private String imdbId;
    private String posterUrl;
	private Type type;

    public Movie(String title, String year, String imdbId, Type type, String posterUrl ) {
        this.title = title;
        this.year = year;
        this.imdbId = imdbId;
        this.type = type;
        this.posterUrl = posterUrl;
    }
    
    public static Movie parseMovieJSON(String json) {
        JSONParser jsonParser = new JSONParser();
        Movie m = null;
        try {
            JSONObject obj = (JSONObject) jsonParser.parse(json);
            m = parseMovieJSON(obj);
        } catch (ParseException e) {
            System.err.println("Unable to parse JSON {"+json+"}: "+e.getMessage());
        }
        return m;
    }
    
    public static Movie parseMovieJSON(JSONObject obj) {
        String title = "", imdbId = "", posterUrl = "", year = "";
        Type type = Type.MOVIE;
		try {
            title = (String) obj.get("Title");
            imdbId = (String) obj.get("imdbID");
            posterUrl = (String) obj.get("Poster");
            year = (String) obj.get("Year");
            String typeValue = ((String) obj.get("Type"));
            if (typeValue.equals("movie")) { 
                type = Type.MOVIE; 
            } else if (typeValue.equals("series")) {
                type = Type.SERIES;
            } else if (typeValue.equals("episode")) {
                type = Type.EPISODE;
            } else { 
                throw new UnknownTypeException("Unknown Type Found: "+typeValue);
            }
        } catch (UnknownTypeException e) {
            System.err.println(e.getMessage());
        }
        return new Movie(title, year, imdbId, type, posterUrl);
    }

	protected String getTitle() {
		return title;
	}

	protected String getYear() {
		return year;
	}

	protected Type getType() {
		return type;
	}
    
}
