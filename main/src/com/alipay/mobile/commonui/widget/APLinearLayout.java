package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class APLinearLayout extends LinearLayout
  implements APViewGroupInterface
{
  public APLinearLayout(Context paramContext)
  {
    super(paramContext);
  }

  public APLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void addView(View paramView, int paramInt, LinearLayout.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public void addView(View paramView, LinearLayout.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramLayoutParams);
  }

  public View getView()
  {
    return this;
  }

  public int getVisibility()
  {
    return super.getVisibility();
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    super.setOnClickListener(APViewEventHelper.wrapClickListener(paramOnClickListener));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APLinearLayout
 * JD-Core Version:    0.6.2
 */