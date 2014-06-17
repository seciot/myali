package com.alipay.mobile.about.ui;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

public final class ag
{
  private static ag a;
  private FloatWindowSmallView b;
  private FloatWindowBigView c;
  private WindowManager.LayoutParams d;
  private WindowManager.LayoutParams e;
  private WindowManager f;

  public static ag a()
  {
    try
    {
      if (a == null)
        throw new IllegalStateException("FloatWindowManager must be create by call createInstance(Context context)");
    }
    finally
    {
    }
    ag localag = a;
    return localag;
  }

  public static ag b()
  {
    try
    {
      if (a == null)
        a = new ag();
      ag localag = a;
      return localag;
    }
    finally
    {
    }
  }

  private WindowManager e(Context paramContext)
  {
    if (this.f == null)
      this.f = ((WindowManager)paramContext.getSystemService("window"));
    return this.f;
  }

  public final void a(Context paramContext)
  {
    WindowManager localWindowManager = e(paramContext);
    int i = localWindowManager.getDefaultDisplay().getWidth();
    int j = localWindowManager.getDefaultDisplay().getHeight();
    if (this.b == null)
    {
      this.b = new FloatWindowSmallView(paramContext);
      if (this.d == null)
      {
        this.d = new WindowManager.LayoutParams();
        this.d.type = 2003;
        this.d.format = 1;
        this.d.flags = 40;
        this.d.gravity = 51;
        this.d.width = FloatWindowSmallView.windowViewWidth;
        this.d.height = FloatWindowSmallView.windowViewHeight;
        this.d.x = i;
        this.d.y = (j / 2);
      }
      this.b.setParams(this.d);
      localWindowManager.addView(this.b, this.d);
    }
  }

  public final void b(Context paramContext)
  {
    if (this.b != null)
    {
      e(paramContext).removeView(this.b);
      this.b = null;
    }
  }

  public final void c(Context paramContext)
  {
    WindowManager localWindowManager = e(paramContext);
    int i = localWindowManager.getDefaultDisplay().getWidth();
    int j = localWindowManager.getDefaultDisplay().getHeight();
    if (this.c == null)
    {
      this.c = new FloatWindowBigView(paramContext);
      if (this.e == null)
      {
        this.e = new WindowManager.LayoutParams();
        this.e.x = (i / 2 - FloatWindowBigView.viewWidth / 2);
        this.e.y = (j / 2 - FloatWindowBigView.viewHeight / 2);
        this.e.type = 2002;
        this.e.format = 1;
        this.e.gravity = 51;
        this.e.width = FloatWindowBigView.viewWidth;
        this.e.height = FloatWindowBigView.viewHeight;
      }
      localWindowManager.addView(this.c, this.e);
    }
  }

  public final boolean c()
  {
    return (this.b != null) || (this.c != null);
  }

  public final void d(Context paramContext)
  {
    if (this.c != null)
    {
      e(paramContext).removeView(this.c);
      this.c = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.ag
 * JD-Core Version:    0.6.2
 */