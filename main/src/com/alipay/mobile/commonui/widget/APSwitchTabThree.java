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

public class APSwitchTabThree extends APRelativeLayout
  implements View.OnClickListener
{
  private String a;
  private String b;
  private APButton c;
  private APButton d;
  private APButton e;
  private String f;
  private APSwitchTabThree.TabSwitchThreeListener g;

  public APSwitchTabThree(Context paramContext)
  {
    this(paramContext, null);
  }

  public APSwitchTabThree(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APSwitchTabThree(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_switch_tab_three, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.subSwitchTab);
    this.a = localTypedArray.getString(1);
    this.b = localTypedArray.getString(5);
    this.f = localTypedArray.getString(3);
    localTypedArray.recycle();
  }

  public APButton getLeftBtn()
  {
    return this.c;
  }

  public APButton getMiddleBtn()
  {
    return this.e;
  }

  public APButton getRightBtn()
  {
    return this.d;
  }

  public APSwitchTabThree.TabSwitchThreeListener getmTabSwitchListener()
  {
    return this.g;
  }

  public void onClick(View paramView)
  {
    if ((paramView.equals(this.c)) && (this.g != null))
      this.g.tabSwitchListener(1, this.c);
    while (true)
    {
      this.c.setSelected(true);
      this.c.setClickable(false);
      this.d.setSelected(false);
      this.d.setClickable(true);
      this.e.setSelected(false);
      this.e.setClickable(true);
      return;
      if ((paramView.equals(this.d)) && (this.g != null))
      {
        this.g.tabSwitchListener(3, this.d);
        this.c.setSelected(false);
        this.c.setClickable(true);
        this.d.setSelected(true);
        this.d.setClickable(false);
        this.e.setSelected(false);
        this.e.setClickable(true);
        return;
      }
      if ((paramView.equals(this.e)) && (this.g != null))
      {
        this.g.tabSwitchListener(2, this.d);
        this.e.setSelected(true);
        this.e.setClickable(false);
        this.c.setSelected(false);
        this.c.setClickable(true);
        this.d.setSelected(false);
        this.d.setClickable(true);
        return;
      }
      if (this.g != null)
        this.g.tabSwitchListener(1, this.c);
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.c = ((APButton)findViewById(R.id.left_btn));
    this.d = ((APButton)findViewById(R.id.right_btn));
    this.e = ((APButton)findViewById(R.id.center_btn));
    if (this.a != null)
      this.c.setText(this.a);
    if (this.b != null)
      this.d.setText(this.b);
    if (this.f != null)
      this.e.setText(this.f);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.c.setSelected(true);
    this.c.setClickable(false);
  }

  public void setLeftBtn(APButton paramAPButton)
  {
    this.c = paramAPButton;
  }

  public void setMiddleBtn(APButton paramAPButton)
  {
    this.e = paramAPButton;
  }

  public void setRightBtn(APButton paramAPButton)
  {
    this.d = paramAPButton;
  }

  public void setmTabSwitchListener(APSwitchTabThree.TabSwitchThreeListener paramTabSwitchThreeListener)
  {
    this.g = paramTabSwitchThreeListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSwitchTabThree
 * JD-Core Version:    0.6.2
 */