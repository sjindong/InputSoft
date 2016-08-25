package com.keanbin.pinyinime;

import com.keanbin.pinyinime.R;
import android.content.Context;
import android.content.res.Resources;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;

public class SpacePerferenceBottom extends Preference {

	public SpacePerferenceBottom(Context context, AttributeSet attrs,
			int defStyleAttr, int defStyleRes) {
		super(context, attrs, defStyleAttr, defStyleRes);
	}

	public SpacePerferenceBottom(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
	}

	public SpacePerferenceBottom(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public SpacePerferenceBottom(Context context) {
		super(context);
	}
	
	@Override
    protected View onCreateView(ViewGroup parent) {
        Resources res=getContext().getResources();
        View v=super.onCreateView(parent);
        v.setLayoutParams(new AbsListView.LayoutParams(AbsListView.LayoutParams.MATCH_PARENT, (int) res.getDimension(R.dimen.space_perference_height_bottom)));
		v.setBackgroundColor(res.getColor(android.R.color.white));
		return v;
    }

}
