package example.codeclan.com.hellofrog;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;

import java.util.ArrayList;

/**
 * Created by sandy on 26/04/2016.
 */
public class AmphibianDetails extends AppCompatActivity {
    TextView mNameText;
    TextView mSpeciesText;
    TextView mMediaText;
    TextView mNumLegsText;
    ImageView mPictureImageView;
    Button mAddFavouriteButton;
    AmphibianList mFavourites;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_details);
        Log.d("HelloFrog:", "AmphibianDetails.onCreate called");

        mNameText = (TextView) findViewById(R.id.text_name);
        mSpeciesText = (TextView)findViewById(R.id.text_species);
        mMediaText = (TextView) findViewById(R.id.text_media);
        mNumLegsText = (TextView) findViewById(R.id.text_legs);
        mPictureImageView = (ImageView) findViewById(R.id.img_amphibian);
        mAddFavouriteButton = (Button) findViewById(R.id.add_favourite_button);

        Intent intent = getIntent();
        Bundle extras = intent.getExtras();

        final String name = extras.getString("name");
        final String species = extras.getString("species");
        String numLegs = extras.getString("numberOfLegs");
        String media = extras.getString("media");
        String imageUrl = extras.getString("imageUrl");

        ArrayList<Amphibian> favourites =
                (ArrayList<Amphibian>) intent.getSerializableExtra("favourites");
        mFavourites = new AmphibianList(favourites);

        Picasso picasso = Picasso.with(this);
        RequestCreator image = picasso.load(imageUrl);
        image.into(mPictureImageView);

        mNameText.setText(name);
        mSpeciesText.setText(species);
        mMediaText.setText(media);
        mNumLegsText.setText(numLegs);


        mAddFavouriteButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.d("HelloFrog", name + " is to be added to favourites");
                Log.d("HelloFrog: ", "Favourites contains " + mFavourites.length() + " entries");
                for (Amphibian a : mFavourites.getList()) {
                    Log.d("HelloFrog: ", a.toString());
                }

                Amphibian newFavourite = new Amphibian(name, species);
                mFavourites.add(newFavourite);

                Intent intent = new Intent();
                intent.putExtra("favourites", mFavourites.getList());
                setResult(RESULT_OK, intent);
            }
        });
    }

    public static AmphibianList getFavourites(Intent intent) {
        ArrayList<Amphibian> favourites =
                (ArrayList<Amphibian>) intent.getSerializableExtra("favourites");
        return new AmphibianList(favourites);
    }
}
