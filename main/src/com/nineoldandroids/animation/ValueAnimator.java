package com.nineoldandroids.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class ValueAnimator extends Animator
{
  static final int ANIMATION_FRAME = 1;
  static final int ANIMATION_START = 0;
  public static final int INFINITE = -1;
  public static final int RESTART = 1;
  public static final int REVERSE = 2;
  static final int RUNNING = 1;
  static final int SEEKED = 2;
  static final int STOPPED;
  private static ThreadLocal<ValueAnimator.AnimationHandler> a = new ThreadLocal();
  private static final ThreadLocal<ArrayList<ValueAnimator>> b = new ValueAnimator.1();
  private static final ThreadLocal<ArrayList<ValueAnimator>> c = new ValueAnimator.2();
  private static final ThreadLocal<ArrayList<ValueAnimator>> d = new ValueAnimator.3();
  private static final ThreadLocal<ArrayList<ValueAnimator>> e = new ValueAnimator.4();
  private static final ThreadLocal<ArrayList<ValueAnimator>> f = new ValueAnimator.5();
  private static final Interpolator g = new AccelerateDecelerateInterpolator();
  private static final TypeEvaluator h = new IntEvaluator();
  private static final TypeEvaluator i = new FloatEvaluator();
  private static long s = 10L;
  private boolean j = false;
  private int k = 0;
  private float l = 0.0F;
  private boolean m = false;
  boolean mInitialized = false;
  int mPlayingState = 0;
  long mSeekTime = -1L;
  long mStartTime;
  PropertyValuesHolder[] mValues;
  HashMap<String, PropertyValuesHolder> mValuesMap;
  private long n;
  private boolean o = false;
  private boolean p = false;
  private long q = 300L;
  private long r = 0L;
  private int t = 0;
  private int u = 1;
  private Interpolator v = g;
  private ArrayList<ValueAnimator.AnimatorUpdateListener> w = null;

  private void a()
  {
    ((ArrayList)b.get()).remove(this);
    ((ArrayList)c.get()).remove(this);
    ((ArrayList)d.get()).remove(this);
    this.mPlayingState = 0;
    if ((this.o) && (this.mListeners != null))
    {
      ArrayList localArrayList = (ArrayList)this.mListeners.clone();
      int i1 = localArrayList.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((Animator.AnimatorListener)localArrayList.get(i2)).onAnimationEnd(this);
    }
    this.o = false;
    this.p = false;
  }

  private void a(boolean paramBoolean)
  {
    if (Looper.myLooper() == null)
      throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    this.j = paramBoolean;
    this.k = 0;
    this.mPlayingState = 0;
    this.p = true;
    this.m = false;
    ((ArrayList)c.get()).add(this);
    if (this.r == 0L)
    {
      setCurrentPlayTime(getCurrentPlayTime());
      this.mPlayingState = 0;
      this.o = true;
      if (this.mListeners != null)
      {
        ArrayList localArrayList = (ArrayList)this.mListeners.clone();
        int i1 = localArrayList.size();
        for (int i2 = 0; i2 < i1; i2++)
          ((Animator.AnimatorListener)localArrayList.get(i2)).onAnimationStart(this);
      }
    }
    ValueAnimator.AnimationHandler localAnimationHandler = (ValueAnimator.AnimationHandler)a.get();
    if (localAnimationHandler == null)
    {
      localAnimationHandler = new ValueAnimator.AnimationHandler(null);
      a.set(localAnimationHandler);
    }
    localAnimationHandler.sendEmptyMessage(0);
  }

  private void b()
  {
    initAnimation();
    ((ArrayList)b.get()).add(this);
    if ((this.r > 0L) && (this.mListeners != null))
    {
      ArrayList localArrayList = (ArrayList)this.mListeners.clone();
      int i1 = localArrayList.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((Animator.AnimatorListener)localArrayList.get(i2)).onAnimationStart(this);
    }
  }

  public static void clearAllAnimations()
  {
    ((ArrayList)b.get()).clear();
    ((ArrayList)c.get()).clear();
    ((ArrayList)d.get()).clear();
  }

  public static int getCurrentAnimationsCount()
  {
    return ((ArrayList)b.get()).size();
  }

  public static long getFrameDelay()
  {
    return s;
  }

  public static ValueAnimator ofFloat(float[] paramArrayOfFloat)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setFloatValues(paramArrayOfFloat);
    return localValueAnimator;
  }

  public static ValueAnimator ofInt(int[] paramArrayOfInt)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setIntValues(paramArrayOfInt);
    return localValueAnimator;
  }

  public static ValueAnimator ofObject(TypeEvaluator paramTypeEvaluator, Object[] paramArrayOfObject)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setObjectValues(paramArrayOfObject);
    localValueAnimator.setEvaluator(paramTypeEvaluator);
    return localValueAnimator;
  }

  public static ValueAnimator ofPropertyValuesHolder(PropertyValuesHolder[] paramArrayOfPropertyValuesHolder)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setValues(paramArrayOfPropertyValuesHolder);
    return localValueAnimator;
  }

  public static void setFrameDelay(long paramLong)
  {
    s = paramLong;
  }

  public void addUpdateListener(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
  {
    if (this.w == null)
      this.w = new ArrayList();
    this.w.add(paramAnimatorUpdateListener);
  }

  void animateValue(float paramFloat)
  {
    float f1 = this.v.getInterpolation(paramFloat);
    this.l = f1;
    int i1 = this.mValues.length;
    for (int i2 = 0; i2 < i1; i2++)
      this.mValues[i2].calculateValue(f1);
    if (this.w != null)
    {
      int i3 = this.w.size();
      for (int i4 = 0; i4 < i3; i4++)
        ((ValueAnimator.AnimatorUpdateListener)this.w.get(i4)).onAnimationUpdate(this);
    }
  }

  boolean animationFrame(long paramLong)
  {
    boolean bool1 = false;
    if (this.mPlayingState == 0)
    {
      this.mPlayingState = 1;
      if (this.mSeekTime >= 0L)
        break label58;
      this.mStartTime = paramLong;
    }
    while (true)
      switch (this.mPlayingState)
      {
      default:
        return false;
        label58: this.mStartTime = (paramLong - this.mSeekTime);
        this.mSeekTime = -1L;
      case 1:
      case 2:
      }
    float f1;
    if (this.q > 0L)
      f1 = (float)(paramLong - this.mStartTime) / (float)this.q;
    boolean bool2;
    float f2;
    while (true)
      if (f1 >= 1.0F)
        if ((this.k < this.t) || (this.t == -1))
        {
          if (this.mListeners != null)
          {
            int i1 = this.mListeners.size();
            int i2 = 0;
            while (true)
              if (i2 < i1)
              {
                ((Animator.AnimatorListener)this.mListeners.get(i2)).onAnimationRepeat(this);
                i2++;
                continue;
                f1 = 1.0F;
                break;
              }
          }
          if (this.u == 2)
          {
            if (this.j)
            {
              bool2 = false;
              this.j = bool2;
            }
          }
          else
          {
            this.k += (int)f1;
            f2 = f1 % 1.0F;
            this.mStartTime += this.q;
          }
        }
    while (true)
    {
      if (this.j)
        f2 = 1.0F - f2;
      animateValue(f2);
      return bool1;
      bool2 = true;
      break;
      f2 = Math.min(f1, 1.0F);
      bool1 = true;
      continue;
      f2 = f1;
      bool1 = false;
    }
  }

  public void cancel()
  {
    if ((this.mPlayingState != 0) || (((ArrayList)c.get()).contains(this)) || (((ArrayList)d.get()).contains(this)))
    {
      if ((this.o) && (this.mListeners != null))
      {
        Iterator localIterator = ((ArrayList)this.mListeners.clone()).iterator();
        while (localIterator.hasNext())
          ((Animator.AnimatorListener)localIterator.next()).onAnimationCancel(this);
      }
      a();
    }
  }

  public ValueAnimator clone()
  {
    int i1 = 0;
    ValueAnimator localValueAnimator = (ValueAnimator)super.clone();
    if (this.w != null)
    {
      ArrayList localArrayList = this.w;
      localValueAnimator.w = new ArrayList();
      int i3 = localArrayList.size();
      for (int i4 = 0; i4 < i3; i4++)
        localValueAnimator.w.add(localArrayList.get(i4));
    }
    localValueAnimator.mSeekTime = -1L;
    localValueAnimator.j = false;
    localValueAnimator.k = 0;
    localValueAnimator.mInitialized = false;
    localValueAnimator.mPlayingState = 0;
    localValueAnimator.m = false;
    PropertyValuesHolder[] arrayOfPropertyValuesHolder = this.mValues;
    if (arrayOfPropertyValuesHolder != null)
    {
      int i2 = arrayOfPropertyValuesHolder.length;
      localValueAnimator.mValues = new PropertyValuesHolder[i2];
      localValueAnimator.mValuesMap = new HashMap(i2);
      while (i1 < i2)
      {
        PropertyValuesHolder localPropertyValuesHolder = arrayOfPropertyValuesHolder[i1].clone();
        localValueAnimator.mValues[i1] = localPropertyValuesHolder;
        localValueAnimator.mValuesMap.put(localPropertyValuesHolder.getPropertyName(), localPropertyValuesHolder);
        i1++;
      }
    }
    return localValueAnimator;
  }

  public void end()
  {
    if ((!((ArrayList)b.get()).contains(this)) && (!((ArrayList)c.get()).contains(this)))
    {
      this.m = false;
      b();
      if ((this.t <= 0) || ((0x1 & this.t) != 1))
        break label82;
      animateValue(0.0F);
    }
    while (true)
    {
      a();
      return;
      if (this.mInitialized)
        break;
      initAnimation();
      break;
      label82: animateValue(1.0F);
    }
  }

  public float getAnimatedFraction()
  {
    return this.l;
  }

  public Object getAnimatedValue()
  {
    if ((this.mValues != null) && (this.mValues.length > 0))
      return this.mValues[0].getAnimatedValue();
    return null;
  }

  public Object getAnimatedValue(String paramString)
  {
    PropertyValuesHolder localPropertyValuesHolder = (PropertyValuesHolder)this.mValuesMap.get(paramString);
    if (localPropertyValuesHolder != null)
      return localPropertyValuesHolder.getAnimatedValue();
    return null;
  }

  public long getCurrentPlayTime()
  {
    if ((!this.mInitialized) || (this.mPlayingState == 0))
      return 0L;
    return AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
  }

  public long getDuration()
  {
    return this.q;
  }

  public Interpolator getInterpolator()
  {
    return this.v;
  }

  public int getRepeatCount()
  {
    return this.t;
  }

  public int getRepeatMode()
  {
    return this.u;
  }

  public long getStartDelay()
  {
    return this.r;
  }

  public PropertyValuesHolder[] getValues()
  {
    return this.mValues;
  }

  void initAnimation()
  {
    if (!this.mInitialized)
    {
      int i1 = this.mValues.length;
      for (int i2 = 0; i2 < i1; i2++)
        this.mValues[i2].init();
      this.mInitialized = true;
    }
  }

  public boolean isRunning()
  {
    return (this.mPlayingState == 1) || (this.o);
  }

  public boolean isStarted()
  {
    return this.p;
  }

  public void removeAllUpdateListeners()
  {
    if (this.w == null)
      return;
    this.w.clear();
    this.w = null;
  }

  public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
  {
    if (this.w == null);
    do
    {
      return;
      this.w.remove(paramAnimatorUpdateListener);
    }
    while (this.w.size() != 0);
    this.w = null;
  }

  public void reverse()
  {
    if (!this.j);
    for (boolean bool = true; ; bool = false)
    {
      this.j = bool;
      if (this.mPlayingState != 1)
        break;
      long l1 = AnimationUtils.currentAnimationTimeMillis();
      long l2 = l1 - this.mStartTime;
      this.mStartTime = (l1 - (this.q - l2));
      return;
    }
    a(true);
  }

  public void setCurrentPlayTime(long paramLong)
  {
    initAnimation();
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    if (this.mPlayingState != 1)
    {
      this.mSeekTime = paramLong;
      this.mPlayingState = 2;
    }
    this.mStartTime = (l1 - paramLong);
    animationFrame(l1);
  }

  public ValueAnimator setDuration(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    this.q = paramLong;
    return this;
  }

  public void setEvaluator(TypeEvaluator paramTypeEvaluator)
  {
    if ((paramTypeEvaluator != null) && (this.mValues != null) && (this.mValues.length > 0))
      this.mValues[0].setEvaluator(paramTypeEvaluator);
  }

  public void setFloatValues(float[] paramArrayOfFloat)
  {
    if ((paramArrayOfFloat == null) || (paramArrayOfFloat.length == 0))
      return;
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      PropertyValuesHolder[] arrayOfPropertyValuesHolder = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder[0] = PropertyValuesHolder.ofFloat("", paramArrayOfFloat);
      setValues(arrayOfPropertyValuesHolder);
    }
    while (true)
    {
      this.mInitialized = false;
      return;
      this.mValues[0].setFloatValues(paramArrayOfFloat);
    }
  }

  public void setIntValues(int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0))
      return;
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      PropertyValuesHolder[] arrayOfPropertyValuesHolder = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder[0] = PropertyValuesHolder.ofInt("", paramArrayOfInt);
      setValues(arrayOfPropertyValuesHolder);
    }
    while (true)
    {
      this.mInitialized = false;
      return;
      this.mValues[0].setIntValues(paramArrayOfInt);
    }
  }

  public void setInterpolator(Interpolator paramInterpolator)
  {
    if (paramInterpolator != null)
    {
      this.v = paramInterpolator;
      return;
    }
    this.v = new LinearInterpolator();
  }

  public void setObjectValues(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject == null) || (paramArrayOfObject.length == 0))
      return;
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      PropertyValuesHolder[] arrayOfPropertyValuesHolder = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder[0] = PropertyValuesHolder.ofObject("", null, paramArrayOfObject);
      setValues(arrayOfPropertyValuesHolder);
    }
    while (true)
    {
      this.mInitialized = false;
      return;
      this.mValues[0].setObjectValues(paramArrayOfObject);
    }
  }

  public void setRepeatCount(int paramInt)
  {
    this.t = paramInt;
  }

  public void setRepeatMode(int paramInt)
  {
    this.u = paramInt;
  }

  public void setStartDelay(long paramLong)
  {
    this.r = paramLong;
  }

  public void setValues(PropertyValuesHolder[] paramArrayOfPropertyValuesHolder)
  {
    int i1 = paramArrayOfPropertyValuesHolder.length;
    this.mValues = paramArrayOfPropertyValuesHolder;
    this.mValuesMap = new HashMap(i1);
    for (int i2 = 0; i2 < i1; i2++)
    {
      PropertyValuesHolder localPropertyValuesHolder = paramArrayOfPropertyValuesHolder[i2];
      this.mValuesMap.put(localPropertyValuesHolder.getPropertyName(), localPropertyValuesHolder);
    }
    this.mInitialized = false;
  }

  public void start()
  {
    a(false);
  }

  public String toString()
  {
    String str = "ValueAnimator@" + Integer.toHexString(hashCode());
    if (this.mValues != null)
      for (int i1 = 0; i1 < this.mValues.length; i1++)
        str = str + "\n    " + this.mValues[i1].toString();
    return str;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.ValueAnimator
 * JD-Core Version:    0.6.2
 */