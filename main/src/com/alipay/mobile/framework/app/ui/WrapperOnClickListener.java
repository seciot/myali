package com.alipay.mobile.framework.app.ui;

import android.view.View;
import android.view.View.OnClickListener;

public class WrapperOnClickListener
  implements View.OnClickListener
{
  private View.OnClickListener a;

  public WrapperOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.a = paramOnClickListener;
  }

  public void onClick(View paramView)
  {
    paramView.getContext();
    this.a.onClick(paramView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.WrapperOnClickListener
 * JD-Core Version:    0.6.2
 */