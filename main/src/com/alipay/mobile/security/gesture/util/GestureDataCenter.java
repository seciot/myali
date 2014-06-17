package com.alipay.mobile.security.gesture.util;

public class GestureDataCenter
{
  public static final String GestureClassName = "com.alipay.mobile.security.gesture.ui.GestureActivity_";
  private static GestureDataCenter a;
  public final long USERLEAVEHINTMAXTIME = 300000L;
  private boolean b = false;
  private long c = 0L;
  private boolean d = false;
  private boolean e = true;
  private boolean f = false;

  public static GestureDataCenter getInstance()
  {
    try
    {
      if (a == null)
        a = new GestureDataCenter();
      GestureDataCenter localGestureDataCenter = a;
      return localGestureDataCenter;
    }
    finally
    {
    }
  }

  public long getLastUserLeavehint()
  {
    return this.c;
  }

  public boolean isChangeTime()
  {
    return this.f;
  }

  public boolean isHasGestureView()
  {
    return this.b;
  }

  public boolean isNeedAuthGesture()
  {
    return this.e;
  }

  public boolean isNeedNotifyCallBack()
  {
    return this.d;
  }

  public boolean isOverrangingLeavehintTime()
  {
    return Math.abs(System.currentTimeMillis() - this.c) > 300000L;
  }

  public void setChangeTime(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void setHasGestureView(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public void setLastUserLeavehint(long paramLong)
  {
    this.c = paramLong;
  }

  public void setNeedAuthGesture(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public void setNeedNotifyCallBack(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.util.GestureDataCenter
 * JD-Core Version:    0.6.2
 */