package com.alipay.android.widget.security.ui;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;

class SecurityWebviewActivity$1 extends WebView
{
  SecurityWebviewActivity$1(SecurityWebviewActivity paramSecurityWebviewActivity, Context paramContext)
  {
    super(paramContext);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      onScrollChanged(this.a.c.getScrollX(), this.a.c.getScrollY(), this.a.c.getScrollX(), this.a.c.getScrollY());
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWebviewActivity.1
 * JD-Core Version:    0.6.2
 */