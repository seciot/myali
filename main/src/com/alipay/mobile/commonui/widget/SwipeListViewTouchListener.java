package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.view.ViewHelper;
import com.nineoldandroids.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.List;

public class SwipeListViewTouchListener
  implements View.OnTouchListener
{
  private View A;
  private boolean B;
  private int C = 3;
  private int D = 0;
  private int E = 0;
  private List F = new ArrayList();
  private List G = new ArrayList();
  private boolean H;
  private List I = new ArrayList();
  private int J;
  private int K;
  private int a = 1;
  private boolean b = true;
  private boolean c = true;
  private int d = 0;
  private int e = 0;
  private Rect f = new Rect();
  private int g;
  private int h;
  private int i;
  private long j;
  private long k;
  private float l = 0.0F;
  private float m = 0.0F;
  private int n = 0;
  private int o = 0;
  private APSwipeListView p;
  private int q = 1;
  private List r = new ArrayList();
  private int s = 0;
  private float t;
  private boolean u;
  private boolean v;
  private VelocityTracker w;
  private int x;
  private View y;
  private View z;

  public SwipeListViewTouchListener(APSwipeListView paramAPSwipeListView, int paramInt1, int paramInt2)
  {
    this.d = paramInt1;
    this.e = paramInt2;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramAPSwipeListView.getContext());
    this.g = localViewConfiguration.getScaledTouchSlop();
    this.h = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.i = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.j = paramAPSwipeListView.getContext().getResources().getInteger(17694720);
    this.k = this.j;
    this.p = paramAPSwipeListView;
  }

  private void a(View paramView, int paramInt)
  {
    if (((Boolean)this.F.get(paramInt)).booleanValue())
      a(paramView, true, false, paramInt);
  }

  private void a(View paramView, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    int i1;
    if (((Boolean)this.F.get(paramInt)).booleanValue())
    {
      if (paramBoolean1)
        break label149;
      if (((Boolean)this.G.get(paramInt)).booleanValue())
        i1 = (int)(this.q - this.m);
    }
    while (true)
    {
      ViewPropertyAnimator.animate(paramView).translationX(i1).setDuration(this.k).setListener(new SwipeListViewTouchListener.6(this, paramBoolean1, paramInt, paramBoolean2));
      return;
      i1 = (int)(-this.q + this.l);
      continue;
      if (paramBoolean1)
      {
        if (paramBoolean2)
          i1 = (int)(this.q - this.m);
        else
          i1 = (int)(-this.q + this.l);
      }
      else
        label149: i1 = 0;
    }
  }

  protected void closeAnimate(int paramInt)
  {
    a(this.p.getChildAt(paramInt - this.p.getFirstVisiblePosition()).findViewById(this.d), paramInt);
  }

  void closeOpenedItems()
  {
    if (this.F != null)
    {
      int i1 = this.p.getFirstVisiblePosition();
      int i2 = this.p.getLastVisiblePosition();
      for (int i3 = i1; i3 <= i2; i3++)
        if (((Boolean)this.F.get(i3)).booleanValue())
          a(this.p.getChildAt(i3 - i1).findViewById(this.d), i3);
    }
  }

  protected int dismiss(int paramInt)
  {
    int i1 = this.p.getFirstVisiblePosition();
    int i2 = this.p.getLastVisiblePosition();
    View localView = this.p.getChildAt(paramInt - i1);
    this.s = (1 + this.s);
    if ((paramInt >= i1) && (paramInt <= i2))
    {
      performDismiss(localView, paramInt, false);
      return localView.getHeight();
    }
    this.r.add(new SwipeListViewTouchListener.PendingDismissData(this, paramInt, null));
    return 0;
  }

  protected int getCountSelected()
  {
    int i1 = 0;
    int i2 = 0;
    while (i1 < this.I.size())
    {
      if (((Boolean)this.I.get(i1)).booleanValue())
        i2++;
      i1++;
    }
    new StringBuilder("selected: ").append(i2).toString();
    return i2;
  }

  protected List getPositionsSelected()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i1 = 0; i1 < this.I.size(); i1++)
      if (((Boolean)this.I.get(i1)).booleanValue())
        localArrayList.add(Integer.valueOf(i1));
    return localArrayList;
  }

  public int getSwipeActionLeft()
  {
    return this.D;
  }

  public int getSwipeActionRight()
  {
    return this.E;
  }

  protected void handlerPendingDismisses(int paramInt)
  {
    new Handler().postDelayed(new SwipeListViewTouchListener.10(this, paramInt), 100L + this.k);
  }

  protected boolean isChecked(int paramInt)
  {
    return (paramInt < this.I.size()) && (((Boolean)this.I.get(paramInt)).booleanValue());
  }

  public boolean isListViewMoving()
  {
    return this.H;
  }

  protected boolean isSwipeEnabled()
  {
    return this.a != 0;
  }

  public AbsListView.OnScrollListener makeScrollListener()
  {
    return new SwipeListViewTouchListener.7(this);
  }

  public void move(float paramFloat)
  {
    this.p.onMove(this.x, paramFloat);
    float f1 = ViewHelper.getX(this.z);
    float f2;
    boolean bool2;
    label105: boolean bool1;
    if (((Boolean)this.F.get(this.x)).booleanValue())
    {
      if (((Boolean)this.G.get(this.x)).booleanValue())
      {
        f2 = -this.q + this.m;
        f1 = f2 + f1;
      }
    }
    else
    {
      if ((f1 > 0.0F) && (!this.v))
      {
        if (this.v)
          break label249;
        bool2 = true;
        this.v = bool2;
        this.C = this.E;
        if (this.C != 2)
          break label255;
        this.A.setVisibility(8);
      }
      label136: if ((f1 < 0.0F) && (this.v))
      {
        if (this.v)
          break label266;
        bool1 = true;
        label158: this.v = bool1;
        this.C = this.D;
        if (this.C != 2)
          break label271;
        this.A.setVisibility(8);
      }
      label188: if (this.C != 1)
        break label282;
      ViewHelper.setTranslationX(this.y, paramFloat);
      ViewHelper.setAlpha(this.y, Math.max(0.0F, Math.min(1.0F, 1.0F - 2.0F * Math.abs(paramFloat) / this.q)));
    }
    label249: label255: 
    do
    {
      return;
      f2 = this.q - this.l;
      break;
      bool2 = false;
      break label105;
      this.A.setVisibility(0);
      break label136;
      bool1 = false;
      break label158;
      this.A.setVisibility(0);
      break label188;
      if (this.C != 2)
        break label371;
    }
    while (((!this.v) || (paramFloat <= 0.0F) || (f1 >= 80.0F)) && ((this.v) || (paramFloat >= 0.0F) || (f1 <= -80.0F)) && ((!this.v) || (paramFloat >= 80.0F)) && ((this.v) || (paramFloat <= -80.0F)));
    label266: label271: label282: ViewHelper.setTranslationX(this.z, paramFloat);
    return;
    label371: ViewHelper.setTranslationX(this.z, paramFloat);
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i1 = 1;
    if (!isSwipeEnabled());
    label497: label503: 
    do
    {
      do
      {
        return false;
        if (this.q < 2)
          this.q = this.p.getWidth();
        switch (MotionEventCompat.getActionMasked(paramMotionEvent))
        {
        default:
          return false;
        case 0:
        case 1:
        case 2:
        }
      }
      while ((this.B) && (this.x != -1));
      this.C = 3;
      int i24 = this.p.getChildCount();
      int[] arrayOfInt = new int[2];
      this.p.getLocationOnScreen(arrayOfInt);
      int i25 = (int)paramMotionEvent.getRawX() - arrayOfInt[0];
      int i26 = (int)paramMotionEvent.getRawY() - arrayOfInt[i1];
      for (int i27 = 0; ; i27++)
      {
        View localView3;
        View localView5;
        if (i27 < i24)
        {
          localView3 = this.p.getChildAt(i27);
          localView3.getHitRect(this.f);
          int i28 = this.p.getPositionForView(localView3);
          if ((!this.p.getAdapter().isEnabled(i28)) || (this.p.getAdapter().getItemViewType(i28) < 0) || (localView3.findViewById(this.d) == null))
            break label497;
          int i29 = i1;
          if (this.w != null)
          {
            this.w.recycle();
            this.w = null;
          }
          if ((i29 == 0) || (!this.f.contains(i25, i26)))
            continue;
          this.y = localView3;
          View localView4 = localView3.findViewById(this.d);
          this.z = localView4;
          localView4.setOnClickListener(new SwipeListViewTouchListener.1(this));
          if (this.b)
            localView4.setOnLongClickListener(new SwipeListViewTouchListener.2(this));
          this.t = paramMotionEvent.getRawX();
          this.x = i28;
          localView5 = this.z;
          if (((Boolean)this.F.get(this.x)).booleanValue())
            break label503;
        }
        int i32;
        for (int i31 = i1; ; i32 = 0)
        {
          localView5.setClickable(i31);
          View localView6 = this.z;
          boolean bool3 = ((Boolean)this.F.get(this.x)).booleanValue();
          boolean bool4 = false;
          if (!bool3)
            bool4 = i1;
          localView6.setLongClickable(bool4);
          if ((this.e > 0) && (localView3.findViewById(this.e) != null) && (localView3.findViewById(this.e).getVisibility() == 0))
          {
            View localView7 = localView3.findViewById(this.e);
            this.A = localView7;
            localView7.setOnClickListener(new SwipeListViewTouchListener.3(this));
            this.w = VelocityTracker.obtain();
            this.w.addMovement(paramMotionEvent);
          }
          paramView.onTouchEvent(paramMotionEvent);
          return i1;
          int i30 = 0;
          break;
        }
      }
    }
    while ((this.w == null) || (!this.u) || (this.x == -1));
    float f8 = paramMotionEvent.getRawX() - this.t;
    this.w.addMovement(paramMotionEvent);
    this.w.computeCurrentVelocity(1000);
    float f9 = Math.abs(this.w.getXVelocity());
    if (!((Boolean)this.F.get(this.x)).booleanValue())
      if ((this.a == 3) && (this.w.getXVelocity() > 0.0F))
      {
        f10 = 0.0F;
        label623: if ((this.a != 2) || (this.w.getXVelocity() >= 0.0F));
      }
    for (float f10 = 0.0F; ; f10 = f9)
    {
      float f11 = Math.abs(this.w.getYVelocity());
      int i7;
      boolean bool1;
      if ((this.h <= f10) && (f10 <= this.i) && (f11 * 2.0F < f10))
        if (this.w.getXVelocity() > 0.0F)
        {
          i7 = i1;
          new StringBuilder("swapRight: ").append(i7).append(" - swipingRight: ").append(this.v).toString();
          if ((i7 == this.v) || (this.D == this.E))
            break label1243;
          bool1 = false;
        }
      while (true)
      {
        label760: View localView1 = this.z;
        int i9 = this.x;
        new StringBuilder("swap: ").append(bool1).append(" - swapRight: ").append(i7).append(" - position: ").append(i9).toString();
        if (this.C == 0)
          a(localView1, bool1, i7, i9);
        View localView2;
        int i21;
        label904: int i18;
        if (this.C == i1)
        {
          localView2 = this.y;
          if (!((Boolean)this.F.get(i9)).booleanValue())
            break label1418;
          if (bool1)
            break label2137;
          if (!((Boolean)this.G.get(i9)).booleanValue())
            break label1401;
          i21 = (int)(this.q - this.m);
          i18 = i21;
        }
        while (true)
        {
          if (bool1)
            this.s = (1 + this.s);
          label1057: label1083: label1243: label1401: int i2;
          for (int i19 = 0; ; i19 = i2)
          {
            ViewPropertyAnimator.animate(localView2).translationX(i18).alpha(i19).setDuration(this.k).setListener(new SwipeListViewTouchListener.5(this, bool1, localView2, i9));
            if (this.C == 2)
              ViewPropertyAnimator.animate(localView1).translationX(0.0F).setDuration(this.k).setListener(new SwipeListViewTouchListener.4(this));
            int i10;
            int i11;
            label1175: APSwipeListView localAPSwipeListView1;
            if (this.C == 2)
            {
              i10 = this.x;
              i11 = getCountSelected();
              boolean bool2 = ((Boolean)this.I.get(i10)).booleanValue();
              List localList = this.I;
              if (bool2)
                break label1465;
              int i12 = i1;
              localList.set(i10, Boolean.valueOf(i12));
              if (!bool2)
                break label1471;
              int i14 = i11 - 1;
              if ((i11 == 0) && (i14 == i1))
              {
                this.p.onChoiceStarted();
                closeOpenedItems();
                this.J = this.E;
                this.K = this.D;
                this.E = 2;
                this.D = 2;
              }
              if ((i11 == i1) && (i14 == 0))
              {
                this.p.onChoiceEnded();
                returnOldActions();
              }
              if (Build.VERSION.SDK_INT >= 11)
              {
                APSwipeListView localAPSwipeListView2 = this.p;
                if (bool2)
                  break label1480;
                int i16 = i1;
                localAPSwipeListView2.setItemChecked(i10, i16);
              }
              localAPSwipeListView1 = this.p;
              if (bool2)
                break label1486;
            }
            while (true)
            {
              localAPSwipeListView1.onChoiceChanged(i10, i1);
              reloadChoiceStateInView(this.z, i10);
              this.w.recycle();
              this.w = null;
              this.t = 0.0F;
              this.u = false;
              return false;
              i8 = 0;
              break;
              if ((((Boolean)this.F.get(this.x)).booleanValue()) && (((Boolean)this.G.get(this.x)).booleanValue()) && (i8 != 0))
              {
                bool1 = false;
                break label760;
              }
              if ((((Boolean)this.F.get(this.x)).booleanValue()) && (!((Boolean)this.G.get(this.x)).booleanValue()) && (i8 == 0))
              {
                bool1 = false;
                break label760;
              }
              bool1 = i1;
              break label760;
              if (Math.abs(f8) <= this.q / 2)
                break label2143;
              if (f8 > 0.0F);
              int i23;
              for (int i22 = i1; ; i23 = 0)
              {
                i8 = i22;
                bool1 = i1;
                break;
              }
              i21 = (int)(-this.q + this.l);
              break label904;
              label1418: if (!bool1)
                break label2137;
              if (i8 != 0);
              for (int i20 = (int)(this.q - this.m); ; i20 = (int)(-this.q + this.l))
              {
                i18 = i20;
                break;
              }
              label1465: int i13 = 0;
              break label1057;
              label1471: int i15 = i11 + 1;
              break label1083;
              label1480: int i17 = 0;
              break label1175;
              label1486: i2 = 0;
            }
            if ((this.w == null) || (this.B) || (this.x == -1))
              break;
            this.w.addMovement(paramMotionEvent);
            this.w.computeCurrentVelocity(1000);
            float f1 = Math.abs(this.w.getXVelocity());
            float f2 = Math.abs(this.w.getYVelocity());
            float f3 = paramMotionEvent.getRawX() - this.t;
            float f4 = Math.abs(f3);
            int i3 = this.a;
            int i4 = this.p.changeSwipeMode(this.x);
            if (i4 >= 0)
              i3 = i4;
            float f5;
            if (i3 == 0)
              f5 = 0.0F;
            while (true)
            {
              if ((f5 > this.g) && (this.C == 3) && (f2 < f1))
              {
                this.u = i2;
                if (f3 <= 0.0F)
                  break label1976;
                int i5 = i2;
                label1651: this.v = i5;
                new StringBuilder("deltaX: ").append(f3).append(" - swipingRight: ").append(this.v).toString();
                if (!((Boolean)this.F.get(this.x)).booleanValue())
                  break label1982;
                this.p.onStartClose(this.x, this.v);
                this.C = 0;
                this.p.requestDisallowInterceptTouchEvent(i2);
                MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
                localMotionEvent.setAction(0x3 | MotionEventCompat.getActionIndex(paramMotionEvent) << 8);
                this.p.onTouchEvent(localMotionEvent);
                if (this.C == 2)
                  this.A.setVisibility(8);
              }
              if ((!this.u) || (this.x == -1))
                break;
              float f7;
              if (((Boolean)this.F.get(this.x)).booleanValue())
                if (((Boolean)this.G.get(this.x)).booleanValue())
                  f7 = this.q - this.m;
              label1857: for (float f6 = f7 + f3; ; f6 = f3)
              {
                move(f6);
                return i2;
                if (i3 == i2)
                  break label2124;
                if (((Boolean)this.F.get(this.x)).booleanValue())
                {
                  if ((i3 == 3) && (f3 < 0.0F))
                  {
                    f5 = 0.0F;
                    break;
                  }
                  if ((i3 != 2) || (f3 <= 0.0F))
                    break label2124;
                  f5 = 0.0F;
                  break;
                }
                if ((i3 == 3) && (f3 > 0.0F))
                {
                  f5 = 0.0F;
                  break;
                }
                if ((i3 != 2) || (f3 >= 0.0F))
                  break label2124;
                f5 = 0.0F;
                break;
                int i6 = 0;
                break label1651;
                if ((this.v) && (this.E == i2))
                  this.C = i2;
                while (true)
                {
                  this.p.onStartOpen(this.x, this.C, this.v);
                  break;
                  if ((!this.v) && (this.D == i2))
                    this.C = i2;
                  else if ((this.v) && (this.E == 2))
                    this.C = 2;
                  else if ((!this.v) && (this.D == 2))
                    this.C = 2;
                  else
                    this.C = 0;
                }
                f7 = -this.q + this.l;
                break label1857;
              }
              label1976: label1982: label2124: f5 = f4;
            }
          }
          label2137: i18 = 0;
        }
        label2143: int i8 = 0;
        bool1 = false;
      }
      f10 = f9;
      break label623;
    }
  }

  protected void openAnimate(int paramInt)
  {
    View localView = this.p.getChildAt(paramInt - this.p.getFirstVisiblePosition()).findViewById(this.d);
    if (!((Boolean)this.F.get(paramInt)).booleanValue())
      a(localView, true, false, paramInt);
  }

  protected void performDismiss(View paramView, int paramInt, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    int i1 = paramView.getHeight();
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { i1, 0 }).setDuration(this.k);
    if (paramBoolean)
      localValueAnimator.addListener(new SwipeListViewTouchListener.8(this, i1));
    localValueAnimator.addUpdateListener(new SwipeListViewTouchListener.9(this, localLayoutParams, paramView));
    this.r.add(new SwipeListViewTouchListener.PendingDismissData(this, paramInt, paramView));
    localValueAnimator.start();
  }

  protected void reloadChoiceStateInView(View paramView, int paramInt)
  {
    if (isChecked(paramInt))
      if (this.n > 0)
        paramView.setBackgroundResource(this.n);
    while (this.o <= 0)
      return;
    paramView.setBackgroundResource(this.o);
  }

  public void resetItems()
  {
    if (this.p.getAdapter() != null)
    {
      int i1 = this.p.getAdapter().getCount();
      for (int i2 = this.F.size(); i2 <= i1; i2++)
      {
        this.F.add(Boolean.valueOf(false));
        this.G.add(Boolean.valueOf(false));
        this.I.add(Boolean.valueOf(false));
      }
    }
  }

  protected void resetPendingDismisses()
  {
    this.r.clear();
  }

  protected void returnOldActions()
  {
    this.E = this.J;
    this.D = this.K;
  }

  public void setAnimationTime(long paramLong)
  {
    if (paramLong > 0L)
    {
      this.k = paramLong;
      return;
    }
    this.k = this.j;
  }

  public void setEnabled(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      this.B = bool;
      return;
    }
  }

  public void setLeftOffset(float paramFloat)
  {
    this.l = paramFloat;
  }

  public void setRightOffset(float paramFloat)
  {
    this.m = paramFloat;
  }

  public void setSwipeActionLeft(int paramInt)
  {
    this.D = paramInt;
  }

  public void setSwipeActionRight(int paramInt)
  {
    this.E = paramInt;
  }

  public void setSwipeClosesAllItemsWhenListMoves(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  protected void setSwipeDrawableChecked(int paramInt)
  {
    this.n = paramInt;
  }

  protected void setSwipeDrawableUnchecked(int paramInt)
  {
    this.o = paramInt;
  }

  public void setSwipeMode(int paramInt)
  {
    this.a = paramInt;
  }

  public void setSwipeOpenOnLongPress(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  protected void unselectedChoiceStates()
  {
    int i1 = this.p.getFirstVisiblePosition();
    int i2 = this.p.getLastVisiblePosition();
    for (int i3 = 0; i3 < this.I.size(); i3++)
    {
      if ((((Boolean)this.I.get(i3)).booleanValue()) && (i3 >= i1) && (i3 <= i2))
        reloadChoiceStateInView(this.p.getChildAt(i3 - i1).findViewById(this.d), i3);
      this.I.set(i3, Boolean.valueOf(false));
    }
    this.p.onChoiceEnded();
    returnOldActions();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener
 * JD-Core Version:    0.6.2
 */