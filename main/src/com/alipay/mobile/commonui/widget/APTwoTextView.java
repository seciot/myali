package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APTwoTextView extends APLinearLayout
{
  private String a;
  private float b;
  private int c;
  private String d;
  private float e;
  private int f;
  APTextView mLeftTextView;
  APTextView mRightTextView;

  public APTwoTextView(Context paramContext)
  {
    super(paramContext);
  }

  public APTwoTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_two_text_view, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TwoTextView);
    this.a = localTypedArray.getString(0);
    this.b = localTypedArray.getDimension(2, 16.0F);
    this.c = localTypedArray.getColor(1, -16777216);
    this.d = localTypedArray.getString(3);
    this.e = localTypedArray.getDimension(5, 16.0F);
    this.f = localTypedArray.getColor(4, -16777216);
    localTypedArray.recycle();
  }

  public APTextView getLeftTextView()
  {
    return this.mLeftTextView;
  }

  public APTextView getRightTextView()
  {
    return this.mRightTextView;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.mLeftTextView = ((APTextView)findViewById(R.id.leftText));
    this.mRightTextView = ((APTextView)findViewById(R.id.rightText));
    setLeftText(this.a);
    setLeftTextSize(this.b);
    setLeftTextColor(this.c);
    setRightText(this.d);
    setRightTextSize(this.e);
    setRightTextColor(this.f);
  }

  public void setLeftText(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString)))
      this.mLeftTextView.setText(paramString);
  }

  public void setLeftTextColor(int paramInt)
  {
    this.mLeftTextView.setTextColor(paramInt);
  }

  public void setLeftTextSize(float paramFloat)
  {
    if (paramFloat > 0.0F)
      this.mLeftTextView.setTextSize(paramFloat);
  }

  public void setRightText(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString)))
      this.mRightTextView.setText(paramString);
  }

  public void setRightTextColor(int paramInt)
  {
    this.mRightTextView.setTextColor(paramInt);
  }

  public void setRightTextSize(float paramFloat)
  {
    if (paramFloat > 0.0F)
      this.mRightTextView.setTextSize(paramFloat);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APTwoTextView
 * JD-Core Version:    0.6.2
 */