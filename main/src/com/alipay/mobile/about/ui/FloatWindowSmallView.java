package com.alipay.mobile.about.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import java.lang.reflect.Field;

public class FloatWindowSmallView extends LinearLayout
{
  private static int a;
  public static int windowViewHeight;
  public static int windowViewWidth;
  private WindowManager b;
  private LinearLayout c;
  private WindowManager.LayoutParams d;
  private float e;
  private float f;
  private float g;
  private float h;
  private float i;
  private float j;
  private int k;

  public FloatWindowSmallView(Context paramContext)
  {
    super(paramContext);
    this.b = ((WindowManager)paramContext.getSystemService("window"));
    LayoutInflater.from(paramContext).inflate(R.layout.K, this);
    this.c = ((LinearLayout)findViewById(R.id.fH));
    windowViewWidth = this.c.getLayoutParams().width;
    windowViewHeight = this.c.getLayoutParams().height;
    this.k = this.b.getDefaultDisplay().getWidth();
  }

  private int a()
  {
    if (a == 0);
    try
    {
      Class localClass = Class.forName("com.android.internal.R$dimen");
      Object localObject = localClass.newInstance();
      int m = ((Integer)localClass.getField("status_bar_height").get(localObject)).intValue();
      a = getResources().getDimensionPixelSize(m);
      return a;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private static boolean a(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat1 - paramFloat2) < 5.0F;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
      while (true)
      {
        return true;
        this.i = paramMotionEvent.getX();
        this.j = paramMotionEvent.getY();
        this.g = paramMotionEvent.getRawX();
        this.h = (paramMotionEvent.getRawY() - a());
        this.e = paramMotionEvent.getRawX();
        this.f = (paramMotionEvent.getRawY() - a());
      }
    case 2:
      this.e = paramMotionEvent.getRawX();
      this.f = (paramMotionEvent.getRawY() - a());
      this.d.x = ((int)(this.e - this.i));
    case 1:
    }
    while (true)
    {
      this.d.y = ((int)(this.f - this.j));
      this.b.updateViewLayout(this, this.d);
      break;
      if ((a(this.g, this.e)) && (a(this.h, this.f)))
      {
        ag.a().c(getContext());
        ag.a().b(getContext());
        break;
      }
      if ((int)this.e < this.k / 2)
        this.d.x = 0;
      else
        this.d.x = this.k;
    }
  }

  public void setParams(WindowManager.LayoutParams paramLayoutParams)
  {
    this.d = paramLayoutParams;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.FloatWindowSmallView
 * JD-Core Version:    0.6.2
 */