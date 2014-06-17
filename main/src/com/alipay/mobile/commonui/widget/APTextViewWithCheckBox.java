package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APTextViewWithCheckBox extends APRelativeLayout
{
  public static final int BOTTOM = 18;
  public static final int CENTER = 19;
  public static final int NORMAL = 16;
  public static final int TOP = 17;
  private APTextView a;
  private APCheckBox b;
  private int c;
  private boolean d;
  private String e;

  public APTextViewWithCheckBox(Context paramContext)
  {
    super(paramContext);
  }

  public APTextViewWithCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(R.layout.ap_textview_with_checkbox, this);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TextViewWithCheckBox);
    this.c = localTypedArray.getInt(1, 16);
    this.d = localTypedArray.getBoolean(0, false);
    this.e = localTypedArray.getString(2);
    localTypedArray.recycle();
  }

  public String getLeftText()
  {
    return this.a.getText().toString();
  }

  public APTextView getLeftTextView()
  {
    return this.a;
  }

  public APCheckBox getRightCheckBox()
  {
    return this.b;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((APTextView)findViewById(R.id.leftText));
    this.b = ((APCheckBox)findViewById(R.id.rightCheckBox));
    if (this.d)
      this.b.setChecked(true);
    while (true)
    {
      if (this.e != null)
        this.a.setText(this.e);
      setShowType(this.c);
      return;
      this.b.setChecked(false);
    }
  }

  public void setLeftText(String paramString)
  {
    this.a.setText(paramString);
  }

  public void setLeftTextView(APTextView paramAPTextView)
  {
    this.a = paramAPTextView;
  }

  public void setRightCheckBox(APCheckBox paramAPCheckBox)
  {
    this.b = paramAPCheckBox;
  }

  public void setShowType(int paramInt)
  {
    this.c = paramInt;
    switch (paramInt)
    {
    default:
      return;
    case 16:
      setBackgroundResource(R.drawable.table_normal_selector);
      return;
    case 17:
      setBackgroundResource(R.drawable.table_top_selector);
      return;
    case 18:
      setBackgroundResource(R.drawable.table_bottom_selector);
      return;
    case 19:
    }
    setBackgroundResource(R.drawable.table_center_selector);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APTextViewWithCheckBox
 * JD-Core Version:    0.6.2
 */