package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View.OnKeyListener;

public class APCustomLinearLayout extends APLinearLayout
{
  View.OnKeyListener mOnkeyListener = null;

  public APCustomLinearLayout(Context paramContext)
  {
    super(paramContext);
  }

  public APCustomLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
      return this.mOnkeyListener.onKey(this, 4, paramKeyEvent);
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  public void setOnKeyListener(View.OnKeyListener paramOnKeyListener)
  {
    this.mOnkeyListener = paramOnKeyListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCustomLinearLayout
 * JD-Core Version:    0.6.2
 */