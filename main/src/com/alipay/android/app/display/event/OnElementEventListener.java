package com.alipay.android.app.display.event;

import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.event.OnEventListener;

public abstract interface OnElementEventListener extends OnEventListener
{
  public abstract boolean a(IUIElement paramIUIElement, MspEventArgs paramMspEventArgs);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.event.OnElementEventListener
 * JD-Core Version:    0.6.2
 */