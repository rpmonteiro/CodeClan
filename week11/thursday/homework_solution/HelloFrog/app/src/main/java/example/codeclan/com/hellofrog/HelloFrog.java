package example.codeclan.com.hellofrog;


import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.JsonHttpResponseHandler;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Created by sandy on 25/04/2016.
 */
public class HelloFrog extends AppCompatActivity {

    private static final String API_URL = "http://cc-amphibian-api.herokuapp.com/";
    private static final int REQUEST_CODE_FAVOURITES = 0;

    ListView mListView;

    JSONAdapter mJSONAdapter;
    AmphibianList mFavourites;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        Log.d("HelloFrog:", "onCreate called");
        super.onCreate(savedInstanceState);
        mFavourites = new AmphibianList();

        setContentView(R.layout.activity_main);

        mListView = (ListView) findViewById(R.id.amphibian_list_view);

        mJSONAdapter = new JSONAdapter(this, getLayoutInflater());
        fetchAmphibians();
        mListView.setAdapter(mJSONAdapter);

        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                JSONObject jsonObject =(JSONObject) mJSONAdapter.getItem(position);
                Log.d("HelloFrog: ", jsonObject.toString());

                Intent intent = new Intent(HelloFrog.this, AmphibianDetails.class);
                intent.putExtra("name", jsonObject.optString("name"));
                intent.putExtra("species", jsonObject.optString("species"));
                intent.putExtra("media", jsonObject.optString("media"));
                intent.putExtra("numberOfLegs", jsonObject.optString("numberOfLegs"));
                intent.putExtra("imageUrl", jsonObject.optString("imageUrl"));
                intent.putExtra("favourites", mFavourites.getList());

                startActivityForResult(intent, REQUEST_CODE_FAVOURITES);
            }
        });

    }

    private void fetchAmphibians() {
        AsyncHttpClient client = new AsyncHttpClient();

        client.get(API_URL, new JsonHttpResponseHandler() {
            @Override
            public void onSuccess(JSONObject jsonObject) {
                Log.d("HelloFrog: ", jsonObject.toString());
                JSONArray data = jsonObject.optJSONArray("Amphibians");
                if (data != null) {
                    mJSONAdapter.updateData(data, mFavourites);
                } else {
                    Log.e("HelloFrog: ", "No data found :-(");
                }
            }

            @Override
            public void onFailure(int statusCode, Throwable throwable, JSONObject error) {
                Log.e("HelloFrog:", "Failure: " + statusCode + " " + throwable.getMessage());
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Log.d("HelloFrog", "onActivityResult Started");

        if (resultCode != RESULT_OK) {
            return;
        }

        if (requestCode == REQUEST_CODE_FAVOURITES) {
            if (data == null) {
                return;
            }

            mFavourites = AmphibianDetails.getFavourites(data);
        }
        Log.d("HelloFrog", "Fetching the damn frogs again...");
        fetchAmphibians();
    }
}











