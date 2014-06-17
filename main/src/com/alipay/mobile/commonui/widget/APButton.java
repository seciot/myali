package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.Button;

public class APButton extends Button
  implements APViewInterface
{
  public APButton(Context paramContext)
  {
    super(paramContext);
  }

  public APButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Resources.Theme localTheme = paramContext.getTheme();
    new StringBuilder("APButton").append(paramAttributeSet).append(localTheme).toString();
  }

  public APButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    super.setOnClickListener(APViewEventHelper.wrapClickListener(paramOnClickListener));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APButton
 * JD-Core Version:    0.6.2
 */