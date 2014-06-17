package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.util.AttributeSet;

public abstract class APBasePwdInputBox extends APLinearLayout
{
  public APBasePwdInputBox(Context paramContext)
  {
    super(paramContext);
  }

  public APBasePwdInputBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public abstract String getInputedPwd(int paramInt);

  public abstract void setPwdInputListener(APBasePwdInputBox.PWDInputListener2 paramPWDInputListener2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APBasePwdInputBox
 * JD-Core Version:    0.6.2
 */