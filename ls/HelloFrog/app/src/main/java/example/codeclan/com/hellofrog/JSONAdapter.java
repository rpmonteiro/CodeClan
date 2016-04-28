package example.codeclan.com.hellofrog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Created by sandy on 27/04/2016.
 */
public class JSONAdapter extends BaseAdapter {

    private JSONArray mJSONArray;
    private LayoutInflater mLayoutInflater;
    private Context mContext;

    public JSONAdapter(Context context, LayoutInflater inflater)
    {
        mJSONArray = new JSONArray();
        mLayoutInflater = inflater;
        mContext = context;
    }

    public int getCount() {
       return mJSONArray.length();
    }

    public Object getItem(int position) {
        return mJSONArray.optJSONObject(position);
    }

    public long getItemId(int position) {
        return position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {

        ViewHolder holder;

        JSONObject jsonObject = (JSONObject)getItem(position);

        if (convertView == null) {
            convertView = mLayoutInflater.inflate(R.layout.row_listitem, null);
            holder = new ViewHolder();
            holder.thumbnailImageView = (ImageView) convertView.findViewById(R.id.img_thumbnail);
            holder.nameTextView = (TextView) convertView.findViewById(R.id.text_name);
            holder.speciesTextView = (TextView) convertView.findViewById(R.id.text_species);

            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }

        if (jsonObject.has("imageUrl")) {
            String imageUrl = jsonObject.optString("imageUrl");

            Picasso picasso = Picasso.with(mContext);
            RequestCreator image = picasso.load(imageUrl);
            image.into(holder.thumbnailImageView);
        }

        if (jsonObject.has("name")) {
            String name = jsonObject.optString("name");
            holder.nameTextView.setText(name);
        }

        if (jsonObject.has("species")) {
            String species = jsonObject.optString("species");
            holder.speciesTextView.setText(species);
        }

        return convertView;
    }

    public void updateData(JSONArray jsonArray) {
        mJSONArray = jsonArray;
        notifyDataSetChanged();
    }

    private static class ViewHolder {
        public ImageView thumbnailImageView;
        public TextView nameTextView;
        public TextView speciesTextView;
    }
}







