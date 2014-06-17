package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APRepaymentStatusView extends APRelativeLayout
  implements View.OnClickListener
{
  private APRepaymentStatusView.OnSwitchListener a;
  private APTextView b;
  private APTextView c;
  private APTextView d;
  private APTextView e;
  private APTextView f;
  private APImageView g;
  private APToggleButton h;
  private APImageView i;
  private int j;
  private boolean k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;

  public APRepaymentStatusView(Context paramContext)
  {
    this(paramContext, null);
  }

  public APRepaymentStatusView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APRepaymentStatusView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_repaymentstatus_layout, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RepaymentStatusView);
    this.j = localTypedArray.getInt(8, 16);
    this.k = localTypedArray.getBoolean(6, true);
    this.l = localTypedArray.getString(1);
    this.m = localTypedArray.getString(2);
    this.n = localTypedArray.getString(3);
    this.o = localTypedArray.getString(4);
    this.p = localTypedArray.getString(5);
    localTypedArray.recycle();
  }

  public View getChildView(APRepaymentStatusView.ViewID paramViewID)
  {
    return findViewById(paramViewID.getId());
  }

  public Drawable getLeftImage()
  {
    return this.i.getDrawable();
  }

  public String getLeftText()
  {
    return this.b.getText().toString();
  }

  public String getLeftText2()
  {
    return this.c.getText().toString();
  }

  public String getRightText()
  {
    return this.d.getText().toString();
  }

  public String getRightText2()
  {
    return this.e.getText().toString();
  }

  public String getRightText3()
  {
    return this.f.getText().toString();
  }

  public APRepaymentStatusView.OnSwitchListener getSwitchListener()
  {
    return this.a;
  }

  public void hideLeftImage()
  {
    this.i.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    if ((paramView.equals(this.h)) && (this.a != null))
      this.a.onSwitchListener(this.h.isChecked(), this.h);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.b = ((APTextView)findViewById(R.id.table_left_text));
    this.c = ((APTextView)findViewById(R.id.table_left_text_2));
    this.d = ((APTextView)findViewById(R.id.table_right_text));
    this.e = ((APTextView)findViewById(R.id.table_right_text_2));
    this.f = ((APTextView)findViewById(R.id.table_right_text_3));
    this.g = ((APImageView)findViewById(R.id.table_arrow));
    this.h = ((APToggleButton)findViewById(R.id.table_toggleButton));
    this.i = ((APImageView)findViewById(R.id.repayment_iconView));
    if (this.k)
    {
      this.g.setVisibility(0);
      switch (this.j)
      {
      default:
      case 16:
      case 17:
      case 18:
      case 19:
      }
    }
    while (true)
    {
      if (this.l != null)
        setLeftText(this.l);
      if (this.m != null)
        setLeftText2(this.m);
      if (this.n != null)
        setRightText(this.n);
      if (this.o != null)
        setRightText(this.o);
      if (this.p != null)
        setRightText(this.p);
      return;
      this.g.setVisibility(8);
      break;
      setBackgroundResource(R.drawable.table_normal_selector);
      continue;
      setBackgroundResource(R.drawable.table_top_selector);
      continue;
      setBackgroundResource(R.drawable.table_bottom_selector);
      continue;
      setBackgroundResource(R.drawable.table_center_selector);
    }
  }

  public void setArrowGone()
  {
    this.g.setVisibility(4);
  }

  public void setArrowVisible()
  {
    this.g.setVisibility(0);
  }

  public void setLeftImage(int paramInt)
  {
    this.i.setVisibility(0);
    this.i.setBackgroundResource(paramInt);
  }

  public void setLeftImage(Bitmap paramBitmap)
  {
    this.i.setVisibility(0);
    this.i.setImageBitmap(paramBitmap);
  }

  public void setLeftImage(Drawable paramDrawable)
  {
    this.i.setVisibility(0);
    this.i.setImageDrawable(paramDrawable);
  }

  public void setLeftText(String paramString)
  {
    if (this.b.getVisibility() != 0)
      this.b.setVisibility(0);
    this.b.setText(paramString);
  }

  public void setLeftText2(String paramString)
  {
    if (this.c.getVisibility() != 0)
      this.c.setVisibility(0);
    this.c.setText(paramString);
  }

  public void setOnSwitchListener(APRepaymentStatusView.OnSwitchListener paramOnSwitchListener)
  {
    this.a = paramOnSwitchListener;
  }

  public void setRightText(String paramString)
  {
    if (this.d.getVisibility() != 0)
      this.d.setVisibility(0);
    this.d.setText(paramString);
  }

  public void setRightText2(String paramString)
  {
    if (this.e.getVisibility() != 0)
      this.e.setVisibility(0);
    this.e.setText(paramString);
  }

  public void setRightText3(String paramString)
  {
    if (this.f.getVisibility() != 0)
      this.f.setVisibility(0);
    this.f.setText(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APRepaymentStatusView
 * JD-Core Version:    0.6.2
 */