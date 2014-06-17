package com.alipay.android.phone.publicplatform.home.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.alipay.mobile.commonui.widget.APLinearLayout;

public class InterceptTouchLinearLayout extends APLinearLayout
{
  private a a;

  public InterceptTouchLinearLayout(Context paramContext)
  {
    super(paramContext);
  }

  public InterceptTouchLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public a getOnInterceptTouchListener()
  {
    return this.a;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (this.a != null))
      return this.a.a(paramMotionEvent);
    return super.onInterceptTouchEvent(paramMotionEvent);
  }

  public void setOnInterceptTouchListener(a parama)
  {
    this.a = parama;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.widget.InterceptTouchLinearLayout
 * JD-Core Version:    0.6.2
 */