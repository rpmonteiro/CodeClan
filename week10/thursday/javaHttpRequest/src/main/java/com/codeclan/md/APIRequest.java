package com.codeclan.md;

import java.io.IOException;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class APIRequest {
	
	OkHttpClient client = new OkHttpClient();

	String run(String url) throws IOException {
		Request request = new Request.Builder()
			.url(url)
			.build();
		
		Response response = client.newCall(request).execute();
		return response.body().string();
	}
}