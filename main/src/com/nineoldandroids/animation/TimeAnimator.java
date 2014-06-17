package com.nineoldandroids.animation;

public class TimeAnimator extends ValueAnimator
{
  private TimeAnimator.TimeListener a;
  private long b = -1L;

  void animateValue(float paramFloat)
  {
  }

  boolean animationFrame(long paramLong)
  {
    long l1 = 0L;
    long l2;
    if (this.mPlayingState == 0)
    {
      this.mPlayingState = 1;
      if (this.mSeekTime < l1)
        this.mStartTime = paramLong;
    }
    else if (this.a != null)
    {
      l2 = paramLong - this.mStartTime;
      if (this.b >= l1)
        break label92;
    }
    while (true)
    {
      this.b = paramLong;
      this.a.onTimeUpdate(this, l2, l1);
      return false;
      this.mStartTime = (paramLong - this.mSeekTime);
      this.mSeekTime = -1L;
      break;
      label92: l1 = paramLong - this.b;
    }
  }

  void initAnimation()
  {
  }

  public void setTimeListener(TimeAnimator.TimeListener paramTimeListener)
  {
    this.a = paramTimeListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.TimeAnimator
 * JD-Core Version:    0.6.2
 */