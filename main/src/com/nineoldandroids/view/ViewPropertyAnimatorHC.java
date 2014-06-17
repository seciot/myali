package com.nineoldandroids.view;

import android.view.View;
import android.view.animation.Interpolator;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.animation.ValueAnimator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

class ViewPropertyAnimatorHC extends ViewPropertyAnimator
{
  private final WeakReference<View> a;
  private long b;
  private boolean c = false;
  private long d = 0L;
  private boolean e = false;
  private Interpolator f;
  private boolean g = false;
  private Animator.AnimatorListener h = null;
  private ViewPropertyAnimatorHC.AnimatorEventListener i = new ViewPropertyAnimatorHC.AnimatorEventListener(this, null);
  private Runnable j = new ViewPropertyAnimatorHC.1(this);
  private HashMap<Animator, ViewPropertyAnimatorHC.PropertyBundle> k = new HashMap();
  ArrayList<ViewPropertyAnimatorHC.NameValuesHolder> mPendingAnimations = new ArrayList();

  ViewPropertyAnimatorHC(View paramView)
  {
    this.a = new WeakReference(paramView);
  }

  private float a(int paramInt)
  {
    View localView = (View)this.a.get();
    if (localView != null);
    switch (paramInt)
    {
    default:
      return 0.0F;
    case 1:
      return localView.getTranslationX();
    case 2:
      return localView.getTranslationY();
    case 16:
      return localView.getRotation();
    case 32:
      return localView.getRotationX();
    case 64:
      return localView.getRotationY();
    case 4:
      return localView.getScaleX();
    case 8:
      return localView.getScaleY();
    case 128:
      return localView.getX();
    case 256:
      return localView.getY();
    case 512:
    }
    return localView.getAlpha();
  }

  private void a()
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 1.0F });
    ArrayList localArrayList = (ArrayList)this.mPendingAnimations.clone();
    this.mPendingAnimations.clear();
    int m = localArrayList.size();
    int n = 0;
    int i1 = 0;
    while (n < m)
    {
      i1 |= ((ViewPropertyAnimatorHC.NameValuesHolder)localArrayList.get(n)).mNameConstant;
      n++;
    }
    this.k.put(localValueAnimator, new ViewPropertyAnimatorHC.PropertyBundle(i1, localArrayList));
    localValueAnimator.addUpdateListener(this.i);
    localValueAnimator.addListener(this.i);
    if (this.e)
      localValueAnimator.setStartDelay(this.d);
    if (this.c)
      localValueAnimator.setDuration(this.b);
    if (this.g)
      localValueAnimator.setInterpolator(this.f);
    localValueAnimator.start();
  }

  private void a(int paramInt, float paramFloat)
  {
    float f1 = a(paramInt);
    a(paramInt, f1, paramFloat - f1);
  }

  private void a(int paramInt, float paramFloat1, float paramFloat2)
  {
    Animator localAnimator;
    if (this.k.size() > 0)
    {
      Iterator localIterator = this.k.keySet().iterator();
      ViewPropertyAnimatorHC.PropertyBundle localPropertyBundle;
      do
      {
        if (!localIterator.hasNext())
          break;
        localAnimator = (Animator)localIterator.next();
        localPropertyBundle = (ViewPropertyAnimatorHC.PropertyBundle)this.k.get(localAnimator);
      }
      while ((!localPropertyBundle.cancel(paramInt)) || (localPropertyBundle.mPropertyMask != 0));
    }
    while (true)
    {
      if (localAnimator != null)
        localAnimator.cancel();
      ViewPropertyAnimatorHC.NameValuesHolder localNameValuesHolder = new ViewPropertyAnimatorHC.NameValuesHolder(paramInt, paramFloat1, paramFloat2);
      this.mPendingAnimations.add(localNameValuesHolder);
      View localView = (View)this.a.get();
      if (localView != null)
      {
        localView.removeCallbacks(this.j);
        localView.post(this.j);
      }
      return;
      localAnimator = null;
    }
  }

  private void b(int paramInt, float paramFloat)
  {
    a(paramInt, a(paramInt), paramFloat);
  }

  public ViewPropertyAnimator alpha(float paramFloat)
  {
    a(512, paramFloat);
    return this;
  }

  public ViewPropertyAnimator alphaBy(float paramFloat)
  {
    b(512, paramFloat);
    return this;
  }

  public void cancel()
  {
    if (this.k.size() > 0)
    {
      Iterator localIterator = ((HashMap)this.k.clone()).keySet().iterator();
      while (localIterator.hasNext())
        ((Animator)localIterator.next()).cancel();
    }
    this.mPendingAnimations.clear();
    View localView = (View)this.a.get();
    if (localView != null)
      localView.removeCallbacks(this.j);
  }

  public long getDuration()
  {
    if (this.c)
      return this.b;
    return new ValueAnimator().getDuration();
  }

  public long getStartDelay()
  {
    if (this.e)
      return this.d;
    return 0L;
  }

  public ViewPropertyAnimator rotation(float paramFloat)
  {
    a(16, paramFloat);
    return this;
  }

  public ViewPropertyAnimator rotationBy(float paramFloat)
  {
    b(16, paramFloat);
    return this;
  }

  public ViewPropertyAnimator rotationX(float paramFloat)
  {
    a(32, paramFloat);
    return this;
  }

  public ViewPropertyAnimator rotationXBy(float paramFloat)
  {
    b(32, paramFloat);
    return this;
  }

  public ViewPropertyAnimator rotationY(float paramFloat)
  {
    a(64, paramFloat);
    return this;
  }

  public ViewPropertyAnimator rotationYBy(float paramFloat)
  {
    b(64, paramFloat);
    return this;
  }

  public ViewPropertyAnimator scaleX(float paramFloat)
  {
    a(4, paramFloat);
    return this;
  }

  public ViewPropertyAnimator scaleXBy(float paramFloat)
  {
    b(4, paramFloat);
    return this;
  }

  public ViewPropertyAnimator scaleY(float paramFloat)
  {
    a(8, paramFloat);
    return this;
  }

  public ViewPropertyAnimator scaleYBy(float paramFloat)
  {
    b(8, paramFloat);
    return this;
  }

  public ViewPropertyAnimator setDuration(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    this.c = true;
    this.b = paramLong;
    return this;
  }

  public ViewPropertyAnimator setInterpolator(Interpolator paramInterpolator)
  {
    this.g = true;
    this.f = paramInterpolator;
    return this;
  }

  public ViewPropertyAnimator setListener(Animator.AnimatorListener paramAnimatorListener)
  {
    this.h = paramAnimatorListener;
    return this;
  }

  public ViewPropertyAnimator setStartDelay(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    this.e = true;
    this.d = paramLong;
    return this;
  }

  public void start()
  {
    a();
  }

  public ViewPropertyAnimator translationX(float paramFloat)
  {
    a(1, paramFloat);
    return this;
  }

  public ViewPropertyAnimator translationXBy(float paramFloat)
  {
    b(1, paramFloat);
    return this;
  }

  public ViewPropertyAnimator translationY(float paramFloat)
  {
    a(2, paramFloat);
    return this;
  }

  public ViewPropertyAnimator translationYBy(float paramFloat)
  {
    b(2, paramFloat);
    return this;
  }

  public ViewPropertyAnimator x(float paramFloat)
  {
    a(128, paramFloat);
    return this;
  }

  public ViewPropertyAnimator xBy(float paramFloat)
  {
    b(128, paramFloat);
    return this;
  }

  public ViewPropertyAnimator y(float paramFloat)
  {
    a(256, paramFloat);
    return this;
  }

  public ViewPropertyAnimator yBy(float paramFloat)
  {
    b(256, paramFloat);
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.view.ViewPropertyAnimatorHC
 * JD-Core Version:    0.6.2
 */