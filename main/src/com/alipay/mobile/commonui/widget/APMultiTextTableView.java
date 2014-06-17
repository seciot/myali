package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.styleable;

public class APMultiTextTableView extends APTableView
{
  private String a;
  private String b;
  protected APTextView mLeftTextView2;
  protected APTextView mLeftTextView3;

  public APMultiTextTableView(Context paramContext)
  {
    this(paramContext, null);
  }

  public APMultiTextTableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APMultiTextTableView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.tableView);
    this.mLeftTextView2 = ((APTextView)findViewById(R.id.table_left_text_2));
    this.mLeftTextView3 = ((APTextView)findViewById(R.id.table_left_text_3));
    this.a = localTypedArray.getString(7);
    this.b = localTypedArray.getString(8);
    if (this.a != null)
      setLeftText2(this.a);
    if (this.b != null)
      setLeftText3(this.b);
  }

  public String getLeftText2()
  {
    return this.mLeftTextView2.getText().toString();
  }

  public String getLeftText3()
  {
    return this.mLeftTextView3.getText().toString();
  }

  public APTextView getLeftTextView3()
  {
    return this.mLeftTextView3;
  }

  public APTextView getmLeftTextView2()
  {
    return this.mLeftTextView2;
  }

  protected void setInnerLeftText(int paramInt)
  {
    super.setInnerLeftText(paramInt);
    if (this.a != null)
    {
      this.a = (this.a.substring(0, paramInt) + "...");
      setLeftText2(this.a);
    }
    if (this.b != null)
    {
      this.b = (this.b.substring(0, paramInt) + "...");
      setLeftText3(this.b);
    }
  }

  public void setLeftText2(String paramString)
  {
    if (this.mLeftTextView2.getVisibility() != 0)
      this.mLeftTextView2.setVisibility(0);
    this.mLeftTextView2.setText(paramString);
  }

  public void setLeftText3(String paramString)
  {
    if (this.mLeftTextView3.getVisibility() != 0)
      this.mLeftTextView3.setVisibility(0);
    this.mLeftTextView3.setText(paramString);
  }

  protected void setLeftTextVisibility(int paramInt)
  {
    super.setLeftTextVisibility(paramInt);
    this.mLeftTextView2.setVisibility(paramInt);
    this.mLeftTextView3.setVisibility(paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APMultiTextTableView
 * JD-Core Version:    0.6.2
 */