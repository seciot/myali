package com.alipay.android.setting.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import com.alipay.android.app.R.drawable;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.mobile.framework.AlipayApplication;

public class CustomProgressBar extends View
{
  private Drawable a;
  private Drawable b;
  private Drawable c;
  private boolean d;
  private int e = 0;
  private int f = 0;
  private int g;
  private float h;
  private int i = 0;
  private int j = 5;
  private int k = 0;
  private String[] l = { "200", "500", "1000", "5000", "10000" };
  private StaticLayout[] m;
  private TextPaint n;
  private CustomProgressBar.SelectionChangeListener o;
  private int p = 0;

  public CustomProgressBar(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public CustomProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  public CustomProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }

  private void a()
  {
    if (this.l == null)
      return;
    int i1 = this.l.length;
    if (this.m == null)
      this.m = new StaticLayout[i1];
    for (int i2 = 0; i2 < i1; i2++)
      if (!TextUtils.isEmpty(this.l[i2]))
      {
        float f1 = this.n.measureText(this.l[i2]);
        this.m[i2] = new StaticLayout(this.l[i2], this.n, (int)f1, Layout.Alignment.ALIGN_NORMAL, 0.5F, 0.0F, false);
        this.i = this.m[i2].getHeight();
      }
    new StringBuilder("create textLayoutHeight : ").append(this.i).toString();
    invalidate();
  }

  private void a(Context paramContext)
  {
    setThumb(paramContext.getResources().getDrawable(R.drawable.ay));
    this.b = paramContext.getResources().getDrawable(R.drawable.az);
    this.b.setBounds(0, 0, this.b.getIntrinsicWidth(), this.b.getIntrinsicHeight());
    this.c = paramContext.getResources().getDrawable(R.drawable.aw);
    this.c.setBounds(0, 0, this.c.getIntrinsicWidth(), this.c.getIntrinsicHeight());
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)AlipayApplication.getInstance().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    float f1 = localDisplayMetrics.density;
    int i1 = 30;
    if (f1 - 1.0F < 0.1F)
      i1 = 20;
    this.n = new TextPaint();
    this.n.setColor(-10066330);
    this.n.setTextSize(i1);
    a();
  }

  private void a(MotionEvent paramMotionEvent)
  {
    for (int i1 = 0; ; i1++)
    {
      try
      {
        int i2 = (int)paramMotionEvent.getX();
        int i3 = this.p / 2 + this.b.getIntrinsicWidth() / 2;
        if (i1 < this.j)
          if ((i2 >= i3 + i1 * this.p) && (i2 < i3 + this.p * (-1 + this.j)))
          {
            this.f = (this.p * (i1 + 1));
            this.k = (i1 + 1);
          }
          else if (i2 < i3)
          {
            this.f = 0;
            this.k = 0;
          }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      if (paramMotionEvent.getAction() == 1)
        LogAgent.e("SPSafePay", this.l[this.k]);
      if (this.o != null)
        this.o.d(this.l[this.k]);
      invalidate();
      return;
    }
  }

  private void b()
  {
    if (super.getParent() != null)
      super.getParent().requestDisallowInterceptTouchEvent(true);
  }

  public static int resolveSizeAndStateEx(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = View.MeasureSpec.getMode(paramInt2);
    int i2 = View.MeasureSpec.getSize(paramInt2);
    switch (i1)
    {
    case 0:
    default:
    case -2147483648:
    case 1073741824:
    }
    while (true)
    {
      return paramInt1 | 0xFF000000 & paramInt3;
      if (i2 < paramInt1)
      {
        paramInt1 = i2 | 0x1000000;
        continue;
        paramInt1 = i2;
      }
    }
  }

  public String getCurrentSelectedLimit()
  {
    return this.l[this.k];
  }

  public int getSelection()
  {
    return this.k;
  }

  public String[] getTextGroup()
  {
    return this.l;
  }

  public boolean isInScrollingContainer()
  {
    for (ViewParent localViewParent = getParent(); (localViewParent != null) && ((localViewParent instanceof ViewGroup)); localViewParent = localViewParent.getParent())
      if (((ViewGroup)localViewParent).shouldDelayChildPressedState())
        return true;
    return false;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    int i1 = 0;
    super.onDraw(paramCanvas);
    if (this.b != null)
      for (int i8 = 0; i8 < this.j; i8++)
      {
        paramCanvas.save();
        paramCanvas.translate(super.getPaddingLeft() + i8 * this.p, super.getPaddingTop());
        this.b.draw(paramCanvas);
        paramCanvas.restore();
      }
    if (this.a != null)
    {
      paramCanvas.save();
      paramCanvas.translate(super.getPaddingLeft() - this.e + this.f, super.getPaddingTop());
      this.a.draw(paramCanvas);
      paramCanvas.restore();
    }
    for (int i2 = 0; i2 < -1 + this.j; i2++)
    {
      int i4 = this.p - this.b.getIntrinsicWidth();
      int i5 = i2 * this.p;
      if (this.c != null)
      {
        int i6 = (i4 - this.c.getIntrinsicWidth()) / 4;
        for (int i7 = 0; i7 < 5; i7++)
        {
          paramCanvas.save();
          paramCanvas.translate(i5 + (super.getPaddingLeft() + this.b.getIntrinsicWidth() + i7 * i6), super.getPaddingTop() + this.b.getIntrinsicHeight() / 2);
          this.c.draw(paramCanvas);
          paramCanvas.restore();
        }
      }
    }
    int i3 = this.p;
    paramCanvas.translate(0.0F, 5.0F);
    while (i1 < this.j)
    {
      if ((this.l != null) && (!TextUtils.isEmpty(this.l[i1])))
      {
        paramCanvas.save();
        paramCanvas.translate(super.getPaddingLeft() + i3 * i1 - this.m[i1].getWidth() / 2 + this.b.getIntrinsicWidth() / 2, super.getPaddingTop() + this.b.getIntrinsicHeight());
        this.m[i1].draw(paramCanvas);
        paramCanvas.restore();
      }
      i1++;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i1 = getMeasuredWidth() - this.b.getIntrinsicWidth() - getPaddingRight() - getPaddingLeft();
    new StringBuilder("MeasuredWidth = ").append(getMeasuredWidth()).toString();
    this.p = (i1 / (-1 + this.j));
    a();
    this.f = (this.p * this.k);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Drawable localDrawable = this.b;
    int i1;
    int i3;
    int i2;
    if (this.a == null)
    {
      i1 = 0;
      if (localDrawable == null)
        break label127;
      i3 = localDrawable.getIntrinsicWidth();
      i2 = Math.max(i1, localDrawable.getIntrinsicHeight());
    }
    while (true)
    {
      int i4 = i3 + (getPaddingLeft() + getPaddingRight());
      int i5 = i2 + (super.getPaddingTop() + super.getPaddingBottom());
      new StringBuilder("textLayoutHeight : ").append(this.i).toString();
      int i6 = i5 + 2 * this.i;
      setMeasuredDimension(resolveSizeAndStateEx(i4, paramInt1, 0), resolveSizeAndStateEx(i6, paramInt2, 0));
      return;
      i1 = this.a.getIntrinsicHeight();
      break;
      label127: i2 = 0;
      i3 = 0;
    }
  }

  void onStartTrackingTouch()
  {
    this.d = true;
  }

  void onStopTrackingTouch()
  {
    this.d = false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
      do
      {
        return true;
        setPressed(true);
        if (this.a != null)
          invalidate(this.a.getBounds());
        onStartTrackingTouch();
        a(paramMotionEvent);
        b();
        return true;
        if (this.d)
        {
          a(paramMotionEvent);
          return true;
        }
      }
      while (Math.abs(paramMotionEvent.getX() - this.h) <= this.g);
      setPressed(true);
      if (this.a != null)
        invalidate(this.a.getBounds());
      onStartTrackingTouch();
      a(paramMotionEvent);
      b();
      return true;
    case 1:
      if (this.d)
      {
        a(paramMotionEvent);
        onStopTrackingTouch();
        setPressed(false);
      }
      while (true)
      {
        invalidate();
        return true;
        onStartTrackingTouch();
        a(paramMotionEvent);
        onStopTrackingTouch();
      }
    case 3:
    }
    if (this.d)
    {
      onStopTrackingTouch();
      setPressed(false);
    }
    invalidate();
    return true;
  }

  public void setOnSelectionChangeListener(CustomProgressBar.SelectionChangeListener paramSelectionChangeListener)
  {
    this.o = paramSelectionChangeListener;
  }

  public void setProgressTexts(String[] paramArrayOfString)
  {
    this.l = paramArrayOfString;
    invalidate();
  }

  public void setSelection(String paramString)
  {
    for (int i1 = 0; ; i1++)
      if (i1 < this.l.length)
      {
        if (TextUtils.equals(paramString, this.l[i1]))
        {
          this.f = (i1 * this.p);
          this.k = i1;
          invalidate();
        }
      }
      else
        return;
  }

  public void setThumb(Drawable paramDrawable)
  {
    int i1;
    if (paramDrawable != this.a)
    {
      i1 = 1;
      if (this.a != null)
        this.a.setCallback(null);
    }
    while (true)
    {
      if (paramDrawable != null)
      {
        paramDrawable.setCallback(this);
        if ((i1 != 0) && (this.a != null) && ((paramDrawable.getIntrinsicWidth() != this.a.getIntrinsicWidth()) || (paramDrawable.getIntrinsicHeight() != this.a.getIntrinsicHeight())))
          requestLayout();
      }
      this.a = paramDrawable;
      invalidate();
      if (i1 != 0)
      {
        int i2 = getWidth();
        getHeight();
        Drawable localDrawable = this.a;
        if (localDrawable != null)
        {
          int i3 = i2 - super.getPaddingLeft() - super.getPaddingRight();
          int i4 = localDrawable.getIntrinsicWidth();
          int i5 = localDrawable.getIntrinsicHeight();
          int i6 = (int)(0.0F * (i3 - i4 + 2 * this.e));
          int i7 = i5 + 0;
          localDrawable.setBounds(i6, 0, i4 + i6, i7);
        }
        if ((paramDrawable != null) && (paramDrawable.isStateful()))
          paramDrawable.setState(getDrawableState());
      }
      return;
      i1 = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.widgets.CustomProgressBar
 * JD-Core Version:    0.6.2
 */