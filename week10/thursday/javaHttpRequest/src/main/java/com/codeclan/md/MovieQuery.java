package com.codeclan.md;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class MovieQuery {

    private String queryUrl;

    public MovieQuery(String queryUrl) {
        this.queryUrl = queryUrl;
    }

    public ArrayList<Movie> submitQuery() throws IOException {
        APIRequest r = new APIRequest();
        String json = r.run(queryUrl);
        ArrayList<Movie> results = parseJSON(json);
        return results;
    }

    public static ArrayList<Movie> parseJSON(String json) {
        ArrayList<Movie> results = new ArrayList<>();
        JSONParser jsonParser = new JSONParser();
        Movie m;
        try {
            JSONObject obj = (JSONObject) jsonParser.parse(json);
            JSONArray movies = (JSONArray) obj.get("Search");
            Iterator<JSONObject> movieObjects = movies.iterator();
            while(movieObjects.hasNext()) {
                m = Movie.parseMovieJSON(movieObjects.next());
                results.add(m);
            }
        } catch (ParseException e) {
            System.err.println("Unable to parse JSON {"+json+"}: "+e.getMessage());
        }
        return results;
    }
}