package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.styleable;

public class APRadioTableView extends APAbsTableView
  implements View.OnClickListener
{
  private APToggleButton a;
  private boolean b;
  private APAbsTableView.OnSwitchListener c;

  public APRadioTableView(Context paramContext)
  {
    this(paramContext, null);
  }

  public APRadioTableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APRadioTableView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.tableView);
    this.a = ((APToggleButton)findViewById(R.id.table_toggleButton));
    this.b = localTypedArray.getBoolean(13, false);
    if (this.b)
    {
      this.a.setVisibility(0);
      setArrowImageVisibility(4);
      this.a.setOnClickListener(this);
      setEnabled(false);
    }
    if (this.changeBackgroud)
      setOnClickListener(this);
  }

  public APAbsTableView.OnSwitchListener getSwitchListener()
  {
    return this.c;
  }

  public APToggleButton getToggleButton()
  {
    return this.a;
  }

  public APToggleButton getmToggleButton()
  {
    return this.a;
  }

  public void onClick(View paramView)
  {
    if ((paramView.equals(this.a)) && (this.c != null))
      this.c.onSwitchListener(this.a.isChecked(), this.a);
  }

  public void setOnSwitchListener(APAbsTableView.OnSwitchListener paramOnSwitchListener)
  {
    this.c = paramOnSwitchListener;
  }

  public void setmToggleButton(APToggleButton paramAPToggleButton)
  {
    this.a = paramAPToggleButton;
  }

  public void showToggleButton(boolean paramBoolean)
  {
    this.a.setVisibility(0);
    this.a.setChecked(paramBoolean);
    this.a.setOnClickListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APRadioTableView
 * JD-Core Version:    0.6.2
 */