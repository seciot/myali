package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.res.Resources;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import com.alipay.mobile.alipassapp.R.dimen;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.androidquery.AQuery;
import java.util.List;

public class BoardingpassPrimaryFieldLayout extends AlipassInfoFieldLayout
{
  private APImageView mExpImage;
  boolean mIsFirstAjust = true;
  private String mLeftValue;
  private APTextView mLeftValueAPTextView;
  private String mRightValue;
  private APTextView mRightValueAPTextView;
  private View mRootView;

  public BoardingpassPrimaryFieldLayout(Context paramContext)
  {
    super(paramContext);
  }

  public BoardingpassPrimaryFieldLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void AjustAPTextView(APTextView paramAPTextView, String paramString)
  {
    if ((paramAPTextView != null) && (paramString != null) && (paramAPTextView.getLineCount() > 2))
    {
      int i = paramAPTextView.getLayout().getLineEnd(1);
      paramAPTextView.setText(paramAPTextView.getText().subSequence(0, i - 3) + "...");
    }
  }

  private float getTextSize(AlipassInfo.EinfoFields paramEinfoFields, APTextView paramAPTextView)
  {
    if ((paramEinfoFields.getLabel() == null) || (paramEinfoFields.getLabel().trim().length() == 0))
    {
      paramAPTextView.setVisibility(8);
      return this.mContext.getResources().getDimension(R.dimen.alipass_boardingpass_primary_value_small);
    }
    return this.mValueTextSize;
  }

  public void refresh(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo, ActivityApplication paramActivityApplication)
  {
    if (paramList == null)
      return;
    removeAllViews();
    Context localContext = getContext();
    String str = paramDisplayInfo.getExp();
    if (this.mRootView == null)
    {
      this.mRootView = LayoutInflater.from(localContext).inflate(R.layout.sub_alipass_boardingpass_frontview_primary, null);
      addView(this.mRootView);
    }
    if ((paramList.size() > 0) && (paramList.get(0) != null))
    {
      AlipassInfo.EinfoFields localEinfoFields2 = (AlipassInfo.EinfoFields)paramList.get(0);
      APTextView localAPTextView2 = (APTextView)this.mRootView.findViewById(R.id.left_label);
      localAPTextView2.setText(localEinfoFields2.getLabel());
      localAPTextView2.setTextColor(this.mlabelTextColor);
      localAPTextView2.setTextSize(0, this.mlableTextSize);
      this.mLeftValueAPTextView = ((APTextView)this.mRootView.findViewById(R.id.left_value));
      this.mLeftValue = localEinfoFields2.getValue();
      this.mLeftValueAPTextView.setText(this.mLeftValue);
      this.mLeftValueAPTextView.setTextColor(a.a(localContext, localEinfoFields2));
      this.mLeftValueAPTextView.setTextSize(0, getTextSize(localEinfoFields2, localAPTextView2));
      if ((this.mLeftValue != null) && (this.mLeftValue.length() > 0))
      {
        int j = a.getBundle(localEinfoFields2.getType());
        if (j > 0)
          this.mLeftValueAPTextView.setCompoundDrawablesWithIntrinsicBounds(localContext.getResources().getDrawable(j), null, null, null);
        this.mLeftValueAPTextView.setOnClickListener(new a(localContext, localEinfoFields2.getType(), localEinfoFields2.getValue(), paramActivityApplication));
      }
    }
    if ((paramList.size() > 1) && (paramList.get(1) != null))
    {
      AlipassInfo.EinfoFields localEinfoFields1 = (AlipassInfo.EinfoFields)paramList.get(1);
      APTextView localAPTextView1 = (APTextView)this.mRootView.findViewById(R.id.right_label);
      localAPTextView1.setText(localEinfoFields1.getLabel());
      localAPTextView1.setTextColor(this.mlabelTextColor);
      localAPTextView1.setTextSize(0, this.mlableTextSize);
      this.mRightValueAPTextView = ((APTextView)this.mRootView.findViewById(R.id.right_value));
      this.mRightValue = localEinfoFields1.getValue();
      this.mRightValueAPTextView.setText(this.mRightValue);
      this.mRightValueAPTextView.setTextColor(a.a(localContext, localEinfoFields1));
      this.mRightValueAPTextView.setTextSize(0, getTextSize(localEinfoFields1, localAPTextView1));
      if ((this.mRightValue != null) && (this.mRightValue.length() > 0))
      {
        int i = a.getBundle(localEinfoFields1.getType());
        if (i > 0)
          this.mRightValueAPTextView.setCompoundDrawablesWithIntrinsicBounds(localContext.getResources().getDrawable(i), null, null, null);
        this.mRightValueAPTextView.setOnClickListener(new a(localContext, localEinfoFields1.getType(), localEinfoFields1.getValue(), paramActivityApplication));
      }
    }
    if ((str != null) && (str.length() > 0))
    {
      this.mExpImage = ((APImageView)findViewById(R.id.exp_icon));
      this.mExpImage.setVisibility(0);
      ((AQuery)new AQuery(this.mRootView).id(this.mExpImage)).image(str);
    }
    this.mIsFirstAjust = true;
    getViewTreeObserver().addOnGlobalLayoutListener(new ap(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.BoardingpassPrimaryFieldLayout
 * JD-Core Version:    0.6.2
 */