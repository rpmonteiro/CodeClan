package example.codeclan.com.hellofrog;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;

/**
 * Created by sandy on 26/04/2016.
 */
public class AmphibianDetails extends AppCompatActivity {
    TextView mNameText;
    TextView mSpeciesText;
    TextView mMediaText;
    TextView mNumLegsText;
    ImageView mPictureImageView;

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

        Intent intent = getIntent();
        Bundle extras = intent.getExtras();

        String name = extras.getString("name");
        String species = extras.getString("species");
        String numLegs = extras.getString("numberOfLegs");
        String media = extras.getString("media");
        String imageUrl = extras.getString("imageUrl");

        Picasso picasso = Picasso.with(this);
        RequestCreator image = picasso.load(imageUrl);
        image.into(mPictureImageView);

        mNameText.setText(name);
        mSpeciesText.setText(species);
        mMediaText.setText(media);
        mNumLegsText.setText(numLegs);

    }
}
