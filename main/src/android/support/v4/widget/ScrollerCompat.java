package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class ScrollerCompat
{
  static final ScrollerCompat.ScrollerCompatImpl IMPL = new ScrollerCompat.ScrollerCompatImplBase();
  Object mScroller;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      IMPL = new ScrollerCompat.ScrollerCompatImplIcs();
      return;
    }
    if (i >= 9)
    {
      IMPL = new ScrollerCompat.ScrollerCompatImplGingerbread();
      return;
    }
  }

  ScrollerCompat(Context paramContext, Interpolator paramInterpolator)
  {
    this.mScroller = IMPL.createScroller(paramContext, paramInterpolator);
  }

  public static ScrollerCompat create(Context paramContext)
  {
    return create(paramContext, null);
  }

  public static ScrollerCompat create(Context paramContext, Interpolator paramInterpolator)
  {
    return new ScrollerCompat(paramContext, paramInterpolator);
  }

  public void abortAnimation()
  {
    IMPL.abortAnimation(this.mScroller);
  }

  public boolean computeScrollOffset()
  {
    return IMPL.computeScrollOffset(this.mScroller);
  }

  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    IMPL.fling(this.mScroller, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    IMPL.fling(this.mScroller, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
  }

  public float getCurrVelocity()
  {
    return IMPL.getCurrVelocity(this.mScroller);
  }

  public int getCurrX()
  {
    return IMPL.getCurrX(this.mScroller);
  }

  public int getCurrY()
  {
    return IMPL.getCurrY(this.mScroller);
  }

  public int getFinalX()
  {
    return IMPL.getFinalX(this.mScroller);
  }

  public int getFinalY()
  {
    return IMPL.getFinalY(this.mScroller);
  }

  public boolean isFinished()
  {
    return IMPL.isFinished(this.mScroller);
  }

  public boolean isOverScrolled()
  {
    return IMPL.isOverScrolled(this.mScroller);
  }

  public void notifyHorizontalEdgeReached(int paramInt1, int paramInt2, int paramInt3)
  {
    IMPL.notifyHorizontalEdgeReached(this.mScroller, paramInt1, paramInt2, paramInt3);
  }

  public void notifyVerticalEdgeReached(int paramInt1, int paramInt2, int paramInt3)
  {
    IMPL.notifyVerticalEdgeReached(this.mScroller, paramInt1, paramInt2, paramInt3);
  }

  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IMPL.startScroll(this.mScroller, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    IMPL.startScroll(this.mScroller, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ScrollerCompat
 * JD-Core Version:    0.6.2
 */