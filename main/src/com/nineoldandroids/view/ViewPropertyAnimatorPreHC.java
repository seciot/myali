package com.nineoldandroids.view;

import android.view.View;
import android.view.animation.Interpolator;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.view.animation.AnimatorProxy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

class ViewPropertyAnimatorPreHC extends ViewPropertyAnimator
{
  private final AnimatorProxy a;
  private final WeakReference<View> b;
  private long c;
  private boolean d = false;
  private long e = 0L;
  private boolean f = false;
  private Interpolator g;
  private boolean h = false;
  private Animator.AnimatorListener i = null;
  private ViewPropertyAnimatorPreHC.AnimatorEventListener j = new ViewPropertyAnimatorPreHC.AnimatorEventListener(this, null);
  private Runnable k = new ViewPropertyAnimatorPreHC.1(this);
  private HashMap<Animator, ViewPropertyAnimatorPreHC.PropertyBundle> l = new HashMap();
  ArrayList<ViewPropertyAnimatorPreHC.NameValuesHolder> mPendingAnimations = new ArrayList();

  ViewPropertyAnimatorPreHC(View paramView)
  {
    this.b = new WeakReference(paramView);
    this.a = AnimatorProxy.wrap(paramView);
  }

  private float a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 0.0F;
    case 1:
      return this.a.getTranslationX();
    case 2:
      return this.a.getTranslationY();
    case 16:
      return this.a.getRotation();
    case 32:
      return this.a.getRotationX();
    case 64:
      return this.a.getRotationY();
    case 4:
      return this.a.getScaleX();
    case 8:
      return this.a.getScaleY();
    case 128:
      return this.a.getX();
    case 256:
      return this.a.getY();
    case 512:
    }
    return this.a.getAlpha();
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
      i1 |= ((ViewPropertyAnimatorPreHC.NameValuesHolder)localArrayList.get(n)).mNameConstant;
      n++;
    }
    this.l.put(localValueAnimator, new ViewPropertyAnimatorPreHC.PropertyBundle(i1, localArrayList));
    localValueAnimator.addUpdateListener(this.j);
    localValueAnimator.addListener(this.j);
    if (this.f)
      localValueAnimator.setStartDelay(this.e);
    if (this.d)
      localValueAnimator.setDuration(this.c);
    if (this.h)
      localValueAnimator.setInterpolator(this.g);
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
    if (this.l.size() > 0)
    {
      Iterator localIterator = this.l.keySet().iterator();
      ViewPropertyAnimatorPreHC.PropertyBundle localPropertyBundle;
      do
      {
        if (!localIterator.hasNext())
          break;
        localAnimator = (Animator)localIterator.next();
        localPropertyBundle = (ViewPropertyAnimatorPreHC.PropertyBundle)this.l.get(localAnimator);
      }
      while ((!localPropertyBundle.cancel(paramInt)) || (localPropertyBundle.mPropertyMask != 0));
    }
    while (true)
    {
      if (localAnimator != null)
        localAnimator.cancel();
      ViewPropertyAnimatorPreHC.NameValuesHolder localNameValuesHolder = new ViewPropertyAnimatorPreHC.NameValuesHolder(paramInt, paramFloat1, paramFloat2);
      this.mPendingAnimations.add(localNameValuesHolder);
      View localView = (View)this.b.get();
      if (localView != null)
      {
        localView.removeCallbacks(this.k);
        localView.post(this.k);
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
    if (this.l.size() > 0)
    {
      Iterator localIterator = ((HashMap)this.l.clone()).keySet().iterator();
      while (localIterator.hasNext())
        ((Animator)localIterator.next()).cancel();
    }
    this.mPendingAnimations.clear();
    View localView = (View)this.b.get();
    if (localView != null)
      localView.removeCallbacks(this.k);
  }

  public long getDuration()
  {
    if (this.d)
      return this.c;
    return new ValueAnimator().getDuration();
  }

  public long getStartDelay()
  {
    if (this.f)
      return this.e;
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
    this.d = true;
    this.c = paramLong;
    return this;
  }

  public ViewPropertyAnimator setInterpolator(Interpolator paramInterpolator)
  {
    this.h = true;
    this.g = paramInterpolator;
    return this;
  }

  public ViewPropertyAnimator setListener(Animator.AnimatorListener paramAnimatorListener)
  {
    this.i = paramAnimatorListener;
    return this;
  }

  public ViewPropertyAnimator setStartDelay(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    this.f = true;
    this.e = paramLong;
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
 * Qualified Name:     com.nineoldandroids.view.ViewPropertyAnimatorPreHC
 * JD-Core Version:    0.6.2
 */