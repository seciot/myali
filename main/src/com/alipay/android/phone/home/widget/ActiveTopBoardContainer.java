package com.alipay.android.phone.home.widget;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.alipay.android.phone.home.util.SyncAnimatingHelper;
import com.alipay.android.phone.home.util.SyncAnimatingHelper.TYPE;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.android.phone.openplatform.R.raw;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.nfd.nfdbiz.IActiveTopBaordContainer;
import com.alipay.mobile.nfd.nfdbiz.IOnActiveBoardVisibleChange;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;
import com.nineoldandroids.view.ViewHelper;

public class ActiveTopBoardContainer extends FrameLayout
  implements GestureDetector.OnGestureListener, IActiveTopBaordContainer
{
  private static final String b = ActiveTopBoardContainer.class.getName();
  private static int c = 0;
  private static boolean h = false;
  private static boolean i = false;
  final Runnable a = new f(this);
  private GestureDetector d;
  private SyncAnimatingHelper e;
  private TopBoard f;
  private ActiveTopTips g;
  private IOnActiveBoardVisibleChange j;
  private ITopBoardStateCallBack k;
  private float l = 0.0F;
  private FrameLayout.LayoutParams m;
  private MediaPlayer n;
  private float o = 0.0F;
  private float p = 0.0F;
  private float q = 0.0F;
  private float r = 0.0F;

  public ActiveTopBoardContainer(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public ActiveTopBoardContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  public ActiveTopBoardContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.AppBundle, this, true);
    this.d = new GestureDetector(this);
    this.e = new SyncAnimatingHelper();
    this.f = ((TopBoard)findViewById(R.id.f));
    this.g = ((ActiveTopTips)findViewById(R.id.x));
    this.g.setOnClickListener(new e(this));
    this.n = MediaPlayer.create(AlipayApplication.getInstance().getApplicationContext(), R.raw.AppBundle);
    this.n.setLooping(false);
    this.n.seekTo(0);
  }

  private boolean a(String paramString)
  {
    if (getVisibility() == 0)
    {
      AlipayApplication.getInstance().getMicroApplicationContext().Toast(paramString, 1);
      return true;
    }
    return false;
  }

  public void changeState(int paramInt)
  {
    View localView = getChildAt(2);
    getBoardView().getMeasuredWidth();
    int i1 = getBoardView().getMeasuredHeight();
    int i2 = this.g.getMeasuredHeight();
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 0:
    }
    while (true)
    {
      c = paramInt;
      return;
      if (c == 0)
      {
        this.e.b();
        this.e.a(localView, i2, SyncAnimatingHelper.TYPE.a);
        this.e.a(this.g, i2, SyncAnimatingHelper.TYPE.a);
        this.e.a(200);
        this.e.c();
      }
      else if (2 == c)
      {
        this.e.b();
        this.e.a(localView, i2, SyncAnimatingHelper.TYPE.a);
        int i4 = 200 * Math.abs(localView.getTop()) / i1;
        if ((this.l != 0.0F) && (Math.round(this.l) > 0))
          i4 = (localView.getTop() - i2) / Math.round(this.l);
        this.e.a(i4);
        this.e.a(new a(this));
        this.e.c();
      }
      else
      {
        ViewHelper.setAlpha(this.g, 1.0F);
        continue;
        if (c == 0)
        {
          this.e.b();
          this.e.a(localView, i1, SyncAnimatingHelper.TYPE.a);
          this.e.a(200);
          this.e.a(new b(this, localView, i2));
          this.e.c();
          this.a.run();
        }
        else if (1 == c)
        {
          this.e.b();
          this.e.a(localView, i1, SyncAnimatingHelper.TYPE.a);
          this.e.a(this.g, 0, SyncAnimatingHelper.TYPE.b);
          int i3 = 200 * Math.abs(localView.getTop() - i1) / i1;
          if ((this.l != 0.0F) && (Math.round(this.l) > 0))
            i3 = (i1 - localView.getTop()) / Math.round(this.l);
          this.e.a(i3);
          this.e.c();
        }
        else
        {
          ViewHelper.setAlpha(this.g, 0.0F);
          if ((h) && (a("成功载入魔力场，上滑可收缩")))
          {
            h = false;
            continue;
            if (1 == c)
            {
              this.e.b();
              this.e.a(localView, 0, SyncAnimatingHelper.TYPE.a);
              this.e.a(200);
              this.e.a(new c(this, localView));
              this.e.c();
            }
            else if (2 == c)
            {
              this.e.b();
              this.e.a(localView, 0, SyncAnimatingHelper.TYPE.a);
              this.e.a(200);
              this.e.a(new d(this, localView));
              this.e.c();
            }
            else if (this.m != null)
            {
              localView.setLayoutParams(this.m);
            }
          }
        }
      }
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    LogCatLog.i(b, "dispatchTouchEvent enter:" + paramMotionEvent.getAction());
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  public ActiveTopTips getActiveTopTips()
  {
    return this.g;
  }

  public TopBoard getBoardView()
  {
    return this.f;
  }

  public View getView()
  {
    return this;
  }

  public boolean onDown(MotionEvent paramMotionEvent)
  {
    LogCatLog.i(b, "onDown enter");
    return false;
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    LogCatLog.i(b, "onFling enter");
    if (this.e.a())
    {
      this.l = Math.abs(paramFloat2);
      if (paramFloat2 > 0.0F)
      {
        LogCatLog.i(b, "onFling STATE_BOARD_SHOW");
        changeState(2);
        return true;
      }
      changeState(1);
      return true;
    }
    return false;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    LogCatLog.i(b, "onInterceptTouchEvent enter:" + paramMotionEvent.getAction());
    View localView = getChildAt(2);
    int i1 = getBoardView().getMeasuredHeight();
    int i2 = this.g.getMeasuredHeight();
    switch (paramMotionEvent.getAction())
    {
    case 1:
    default:
    case 0:
    case 2:
    }
    while ((c != 0) && (localView.getScrollY() <= 0) && (localView.getTop() >= i2) && (localView.getTop() <= i1) && (this.d.onTouchEvent(paramMotionEvent)))
    {
      return true;
      this.p = 0.0F;
      this.o = 0.0F;
      this.q = paramMotionEvent.getX();
      this.r = paramMotionEvent.getY();
      continue;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      this.o += Math.abs(f1 - this.q);
      this.p += Math.abs(f2 - this.r);
      this.q = f1;
      this.r = f2;
    }
    return false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = getChildAt(2);
    int i1 = getBoardView().getMeasuredHeight();
    int i2 = this.g.getMeasuredHeight();
    getBoardView().layout(0, 0, paramInt3, getBoardView().getMeasuredHeight());
    this.g.layout(0, 0, paramInt3, this.g.getMeasuredHeight());
    if (c == 1)
    {
      localView.layout(0, i2, paramInt3, i2 + localView.getHeight());
      ViewHelper.setAlpha(this.g, 1.0F);
    }
    while (true)
    {
      for (int i3 = 3; i3 < getChildCount(); i3++)
        getChildAt(i3).layout(0, paramInt2, paramInt3, paramInt4);
      if (c == 2)
      {
        localView.layout(0, i1, paramInt3, i1 + localView.getHeight());
        ViewHelper.setAlpha(this.g, 0.0F);
      }
      else
      {
        localView.layout(0, 0, paramInt3, 0 + localView.getMeasuredHeight());
      }
    }
  }

  public void onLongPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    View localView = getChildAt(2);
    LogCatLog.i(b, "onScroll enter");
    this.l = 0.0F;
    int i1 = getBoardView().getMeasuredHeight();
    int i2 = this.g.getMeasuredHeight();
    if (paramFloat2 < 0.0F)
    {
      LogCatLog.i(b, "向下:disY:" + paramFloat2 + "childTop:" + localView.getTop());
      if (localView.getTop() >= i1)
      {
        c = 2;
        return false;
      }
      if (localView.getTop() - paramFloat2 >= i1)
      {
        localView.layout(localView.getLeft(), i1, localView.getRight(), i1 + localView.getHeight());
        c = 2;
        changeState(2);
      }
    }
    while (true)
    {
      LogCatLog.i(b, "onScroll return: end");
      return true;
      localView.offsetTopAndBottom(-(int)paramFloat2);
      float f1 = 1.0F - 1.0F * (localView.getTop() - i2) / (i1 - i2);
      LogCatLog.i(b, "child.getTop:" + localView.getTop());
      LogCatLog.i(b, "alpha:" + f1);
      ViewHelper.setAlpha(this.g, f1);
      continue;
      LogCatLog.i(b, "向上:disY:" + paramFloat2 + "childTop:" + localView.getTop());
      if (localView.getTop() <= i2)
      {
        if ((i) && (a("下拉可展开")))
          i = false;
        c = 1;
        return false;
      }
      if (localView.getTop() - paramFloat2 <= i2)
      {
        localView.layout(localView.getLeft(), i2, localView.getRight(), i2 + localView.getHeight());
        if ((i) && (a("下拉可展开")))
          i = false;
        c = 1;
        changeState(1);
      }
      else
      {
        localView.offsetTopAndBottom(-(int)paramFloat2);
      }
    }
  }

  public void onShowPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    View localView = getChildAt(2);
    int i1 = getBoardView().getMeasuredHeight();
    int i2 = this.g.getMeasuredHeight();
    this.l = 0.0F;
    LogCatLog.i(b, "onTouchEvent enter:" + paramMotionEvent.getAction());
    if (!this.e.a())
      return false;
    boolean bool = this.d.onTouchEvent(paramMotionEvent);
    if (bool)
    {
      LogCatLog.i(b, "onTouchEvent return: mGestureDetector true");
      return true;
    }
    if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3) || (paramMotionEvent.getAction() == 262) || (paramMotionEvent.getAction() == 518))
    {
      if (((this.p > 0.0F) && (localView.getTop() >= i2 + 1.0F * i1 / 3.0F)) || ((this.p < 0.0F) && (localView.getTop() >= 2.0F * (1.0F * i1 / 3.0F))))
      {
        LogCatLog.i(b, "onTouchEvent STATE_BOARD_SHOW");
        changeState(2);
        return true;
      }
      LogCatLog.i(b, "onTouchEvent STATE_TIPS_SHOW");
      changeState(1);
      return true;
    }
    return bool;
  }

  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    IOnActiveBoardVisibleChange localIOnActiveBoardVisibleChange;
    if (this.j != null)
    {
      localIOnActiveBoardVisibleChange = this.j;
      if (paramInt != 0)
        break label34;
    }
    label34: for (boolean bool = true; ; bool = false)
    {
      localIOnActiveBoardVisibleChange.onVisibleChange(bool);
      return;
    }
  }

  public void setBoardInfo(String paramString1, String paramString2, String paramString3)
  {
    getBoardView().setData(paramString1, paramString2, paramString3);
  }

  public void setOnBoardCLickListener(View.OnClickListener paramOnClickListener)
  {
    this.f.setOnClickListener(paramOnClickListener);
  }

  public void setOnStateChangeListener(ITopBoardStateCallBack paramITopBoardStateCallBack)
  {
    this.k = paramITopBoardStateCallBack;
  }

  public void setOnVisibleChangeListener(IOnActiveBoardVisibleChange paramIOnActiveBoardVisibleChange)
  {
    this.j = paramIOnActiveBoardVisibleChange;
  }

  public void setTopTipsText(String paramString)
  {
    this.g.setTipsText(paramString);
  }

  public void updateTopInfo(String paramString1, String paramString2, String paramString3)
  {
    this.g.setData(paramString1, paramString2, paramString3);
    this.f.setData(paramString1, paramString2, paramString3);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.ActiveTopBoardContainer
 * JD-Core Version:    0.6.2
 */