package com.alipay.mobile.commonui.widget;

import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.mobile.ui.R.drawable;
import java.util.ArrayList;

class APShareSelectDialog$ShareSelectView$2 extends BaseAdapter
{
  APShareSelectDialog$ShareSelectView$2(APShareSelectDialog.ShareSelectView paramShareSelectView)
  {
  }

  public int getCount()
  {
    return APShareSelectDialog.ShareSelectView.access$100(this.this$0).size();
  }

  public Object getItem(int paramInt)
  {
    return APShareSelectDialog.ShareSelectView.access$100(this.this$0).get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = new LinearLayout(this.this$0.getContext());
    localLinearLayout.setOrientation(1);
    ImageView localImageView = new ImageView(this.this$0.getContext());
    localImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    Resources localResources = this.this$0.getResources();
    int i = (int)TypedValue.applyDimension(1, 42.0F, localResources.getDisplayMetrics());
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(i, i);
    localLayoutParams1.gravity = 1;
    localLayoutParams1.bottomMargin = ((int)TypedValue.applyDimension(1, 6.0F, localResources.getDisplayMetrics()));
    localImageView.setLayoutParams(localLayoutParams1);
    localImageView.setImageResource(R.drawable.selector_share_item);
    localImageView.setBackgroundResource(APShareSelectDialog.ShareSelectView.access$300(this.this$0, ((Integer)APShareSelectDialog.ShareSelectView.access$100(this.this$0).get(paramInt)).intValue()));
    localImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    localLinearLayout.addView(localImageView);
    TextView localTextView = new TextView(this.this$0.getContext());
    localTextView.setTextColor(-1);
    localTextView.setTextSize(1, 14.0F);
    localTextView.setSingleLine();
    localTextView.setGravity(49);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams2.bottomMargin = ((int)TypedValue.applyDimension(1, 14.0F, localResources.getDisplayMetrics()));
    localTextView.setLayoutParams(localLayoutParams2);
    localTextView.setText(APShareSelectDialog.ShareSelectView.access$400(this.this$0, ((Integer)APShareSelectDialog.ShareSelectView.access$100(this.this$0).get(paramInt)).intValue()));
    localLinearLayout.addView(localTextView);
    return localLinearLayout;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APShareSelectDialog.ShareSelectView.2
 * JD-Core Version:    0.6.2
 */