package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APSwitchTabTwo extends APRelativeLayout
  implements View.OnClickListener
{
  private String a;
  private String b;
  private APButton c;
  private APButton d;
  private APSwitchTabTwo.TabSwitchListener e;

  public APSwitchTabTwo(Context paramContext)
  {
    this(paramContext, null);
  }

  public APSwitchTabTwo(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APSwitchTabTwo(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_switch_tab_two, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.subSwitchTab);
    this.a = localTypedArray.getString(1);
    this.b = localTypedArray.getString(5);
    localTypedArray.recycle();
  }

  public APButton getLeftBtn()
  {
    return this.c;
  }

  public APButton getRightBtn()
  {
    return this.d;
  }

  public APSwitchTabTwo.TabSwitchListener getmTabSwitchListener()
  {
    return this.e;
  }

  public void onClick(View paramView)
  {
    if ((paramView.equals(this.c)) && (this.e != null))
      this.e.tabSwitchListener(Boolean.valueOf(true), this.c);
    while (true)
    {
      this.c.setSelected(true);
      this.c.setClickable(false);
      this.d.setSelected(false);
      this.d.setClickable(true);
      return;
      if ((paramView.equals(this.d)) && (this.e != null))
      {
        this.e.tabSwitchListener(Boolean.valueOf(false), this.d);
        this.c.setSelected(false);
        this.c.setClickable(true);
        this.d.setSelected(true);
        this.d.setClickable(false);
        return;
      }
      if (this.e != null)
        this.e.tabSwitchListener(Boolean.valueOf(true), this.c);
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.c = ((APButton)findViewById(R.id.left_btn));
    this.d = ((APButton)findViewById(R.id.right_btn));
    if (this.a != null)
      this.c.setText(this.a);
    if (this.b != null)
      this.d.setText(this.b);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.c.setSelected(true);
    this.c.setClickable(false);
  }

  public void setLeftBtn(APButton paramAPButton)
  {
    this.c = paramAPButton;
  }

  public void setRightBtn(APButton paramAPButton)
  {
    this.d = paramAPButton;
  }

  public void setmTabSwitchListener(APSwitchTabTwo.TabSwitchListener paramTabSwitchListener)
  {
    this.e = paramTabSwitchListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSwitchTabTwo
 * JD-Core Version:    0.6.2
 */