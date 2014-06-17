package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class AnimatorSet extends Animator
{
  private ArrayList<Animator> a = new ArrayList();
  private HashMap<Animator, AnimatorSet.Node> b = new HashMap();
  private ArrayList<AnimatorSet.Node> c = new ArrayList();
  private ArrayList<AnimatorSet.Node> d = new ArrayList();
  private boolean e = true;
  private AnimatorSet.AnimatorSetListener f = null;
  private boolean g = false;
  private long h = 0L;
  private ValueAnimator i = null;
  private long j = -1L;
  boolean mTerminated = false;

  private void a()
  {
    if (this.e)
    {
      this.d.clear();
      ArrayList localArrayList1 = new ArrayList();
      int i2 = this.c.size();
      for (int i3 = 0; i3 < i2; i3++)
      {
        AnimatorSet.Node localNode4 = (AnimatorSet.Node)this.c.get(i3);
        if ((localNode4.dependencies == null) || (localNode4.dependencies.size() == 0))
          localArrayList1.add(localNode4);
      }
      ArrayList localArrayList2 = new ArrayList();
      while (localArrayList1.size() > 0)
      {
        int i4 = localArrayList1.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          AnimatorSet.Node localNode2 = (AnimatorSet.Node)localArrayList1.get(i5);
          this.d.add(localNode2);
          if (localNode2.nodeDependents != null)
          {
            int i6 = localNode2.nodeDependents.size();
            for (int i7 = 0; i7 < i6; i7++)
            {
              AnimatorSet.Node localNode3 = (AnimatorSet.Node)localNode2.nodeDependents.get(i7);
              localNode3.nodeDependencies.remove(localNode2);
              if (localNode3.nodeDependencies.size() == 0)
                localArrayList2.add(localNode3);
            }
          }
        }
        localArrayList1.clear();
        localArrayList1.addAll(localArrayList2);
        localArrayList2.clear();
      }
      this.e = false;
      if (this.d.size() != this.c.size())
        throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
    }
    else
    {
      int k = this.c.size();
      for (int m = 0; m < k; m++)
      {
        AnimatorSet.Node localNode1 = (AnimatorSet.Node)this.c.get(m);
        if ((localNode1.dependencies != null) && (localNode1.dependencies.size() > 0))
        {
          int n = localNode1.dependencies.size();
          for (int i1 = 0; i1 < n; i1++)
          {
            AnimatorSet.Dependency localDependency = (AnimatorSet.Dependency)localNode1.dependencies.get(i1);
            if (localNode1.nodeDependencies == null)
              localNode1.nodeDependencies = new ArrayList();
            if (!localNode1.nodeDependencies.contains(localDependency.node))
              localNode1.nodeDependencies.add(localDependency.node);
          }
        }
        localNode1.done = false;
      }
    }
  }

  public final void cancel()
  {
    this.mTerminated = true;
    ArrayList localArrayList2;
    if (isStarted())
    {
      if (this.mListeners == null)
        break label181;
      localArrayList2 = (ArrayList)this.mListeners.clone();
      Iterator localIterator3 = localArrayList2.iterator();
      while (localIterator3.hasNext())
        ((Animator.AnimatorListener)localIterator3.next()).onAnimationCancel(this);
    }
    label181: for (ArrayList localArrayList1 = localArrayList2; ; localArrayList1 = null)
    {
      if ((this.i != null) && (this.i.isRunning()))
        this.i.cancel();
      while (localArrayList1 != null)
      {
        Iterator localIterator2 = localArrayList1.iterator();
        while (localIterator2.hasNext())
          ((Animator.AnimatorListener)localIterator2.next()).onAnimationEnd(this);
        if (this.d.size() > 0)
        {
          Iterator localIterator1 = this.d.iterator();
          while (localIterator1.hasNext())
            ((AnimatorSet.Node)localIterator1.next()).animation.cancel();
        }
      }
      this.g = false;
      return;
    }
  }

  public final AnimatorSet clone()
  {
    AnimatorSet localAnimatorSet = (AnimatorSet)super.clone();
    localAnimatorSet.e = true;
    localAnimatorSet.mTerminated = false;
    localAnimatorSet.g = false;
    localAnimatorSet.a = new ArrayList();
    localAnimatorSet.b = new HashMap();
    localAnimatorSet.c = new ArrayList();
    localAnimatorSet.d = new ArrayList();
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = this.c.iterator();
    while (localIterator1.hasNext())
    {
      AnimatorSet.Node localNode3 = (AnimatorSet.Node)localIterator1.next();
      AnimatorSet.Node localNode4 = localNode3.clone();
      localHashMap.put(localNode3, localNode4);
      localAnimatorSet.c.add(localNode4);
      localAnimatorSet.b.put(localNode4.animation, localNode4);
      localNode4.dependencies = null;
      localNode4.tmpDependencies = null;
      localNode4.nodeDependents = null;
      localNode4.nodeDependencies = null;
      ArrayList localArrayList1 = localNode4.animation.getListeners();
      if (localArrayList1 != null)
      {
        Iterator localIterator4 = localArrayList1.iterator();
        ArrayList localArrayList2 = null;
        while (localIterator4.hasNext())
        {
          Animator.AnimatorListener localAnimatorListener = (Animator.AnimatorListener)localIterator4.next();
          if ((localAnimatorListener instanceof AnimatorSet.AnimatorSetListener))
          {
            if (localArrayList2 == null)
              localArrayList2 = new ArrayList();
            localArrayList2.add(localAnimatorListener);
          }
        }
        if (localArrayList2 != null)
        {
          Iterator localIterator5 = localArrayList2.iterator();
          while (localIterator5.hasNext())
            localArrayList1.remove((Animator.AnimatorListener)localIterator5.next());
        }
      }
    }
    Iterator localIterator2 = this.c.iterator();
    while (localIterator2.hasNext())
    {
      AnimatorSet.Node localNode1 = (AnimatorSet.Node)localIterator2.next();
      AnimatorSet.Node localNode2 = (AnimatorSet.Node)localHashMap.get(localNode1);
      if (localNode1.dependencies != null)
      {
        Iterator localIterator3 = localNode1.dependencies.iterator();
        while (localIterator3.hasNext())
        {
          AnimatorSet.Dependency localDependency = (AnimatorSet.Dependency)localIterator3.next();
          localNode2.addDependency(new AnimatorSet.Dependency((AnimatorSet.Node)localHashMap.get(localDependency.node), localDependency.rule));
        }
      }
    }
    return localAnimatorSet;
  }

  public final void end()
  {
    this.mTerminated = true;
    if (isStarted())
    {
      if (this.d.size() != this.c.size())
      {
        a();
        Iterator localIterator3 = this.d.iterator();
        while (localIterator3.hasNext())
        {
          AnimatorSet.Node localNode = (AnimatorSet.Node)localIterator3.next();
          if (this.f == null)
            this.f = new AnimatorSet.AnimatorSetListener(this, this);
          localNode.animation.addListener(this.f);
        }
      }
      if (this.i != null)
        this.i.cancel();
      if (this.d.size() > 0)
      {
        Iterator localIterator2 = this.d.iterator();
        while (localIterator2.hasNext())
          ((AnimatorSet.Node)localIterator2.next()).animation.end();
      }
      if (this.mListeners != null)
      {
        Iterator localIterator1 = ((ArrayList)this.mListeners.clone()).iterator();
        while (localIterator1.hasNext())
          ((Animator.AnimatorListener)localIterator1.next()).onAnimationEnd(this);
      }
      this.g = false;
    }
  }

  public final ArrayList<Animator> getChildAnimations()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      localArrayList.add(((AnimatorSet.Node)localIterator.next()).animation);
    return localArrayList;
  }

  public final long getDuration()
  {
    return this.j;
  }

  public final long getStartDelay()
  {
    return this.h;
  }

  public final boolean isRunning()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      if (((AnimatorSet.Node)localIterator.next()).animation.isRunning())
        return true;
    return false;
  }

  public final boolean isStarted()
  {
    return this.g;
  }

  public final AnimatorSet.Builder play(Animator paramAnimator)
  {
    if (paramAnimator != null)
    {
      this.e = true;
      return new AnimatorSet.Builder(this, paramAnimator);
    }
    return null;
  }

  public final void playSequentially(List<Animator> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      this.e = true;
      if (paramList.size() != 1)
        break label44;
      play((Animator)paramList.get(0));
    }
    while (true)
    {
      return;
      label44: for (int k = 0; k < -1 + paramList.size(); k++)
        play((Animator)paramList.get(k)).before((Animator)paramList.get(k + 1));
    }
  }

  public final void playSequentially(Animator[] paramArrayOfAnimator)
  {
    int m;
    if (paramArrayOfAnimator != null)
    {
      this.e = true;
      int k = paramArrayOfAnimator.length;
      m = 0;
      if (k != 1)
        break label28;
      play(paramArrayOfAnimator[0]);
    }
    while (true)
    {
      return;
      label28: 
      while (m < -1 + paramArrayOfAnimator.length)
      {
        play(paramArrayOfAnimator[m]).before(paramArrayOfAnimator[(m + 1)]);
        m++;
      }
    }
  }

  public final void playTogether(Collection<Animator> paramCollection)
  {
    if ((paramCollection != null) && (paramCollection.size() > 0))
    {
      this.e = true;
      Iterator localIterator = paramCollection.iterator();
      AnimatorSet.Builder localBuilder = null;
      while (localIterator.hasNext())
      {
        Animator localAnimator = (Animator)localIterator.next();
        if (localBuilder == null)
          localBuilder = play(localAnimator);
        else
          localBuilder.with(localAnimator);
      }
    }
  }

  public final void playTogether(Animator[] paramArrayOfAnimator)
  {
    int k = 1;
    if (paramArrayOfAnimator != null)
    {
      this.e = k;
      AnimatorSet.Builder localBuilder = play(paramArrayOfAnimator[0]);
      while (k < paramArrayOfAnimator.length)
      {
        localBuilder.with(paramArrayOfAnimator[k]);
        k++;
      }
    }
  }

  public final AnimatorSet setDuration(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("duration must be a value of zero or greater");
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setDuration(paramLong);
    this.j = paramLong;
    return this;
  }

  public final void setInterpolator(Interpolator paramInterpolator)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setInterpolator(paramInterpolator);
  }

  public final void setStartDelay(long paramLong)
  {
    this.h = paramLong;
  }

  public final void setTarget(Object paramObject)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      Animator localAnimator = ((AnimatorSet.Node)localIterator.next()).animation;
      if ((localAnimator instanceof AnimatorSet))
        ((AnimatorSet)localAnimator).setTarget(paramObject);
      else if ((localAnimator instanceof ObjectAnimator))
        ((ObjectAnimator)localAnimator).setTarget(paramObject);
    }
  }

  public final void setupEndValues()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setupEndValues();
  }

  public final void setupStartValues()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((AnimatorSet.Node)localIterator.next()).animation.setupStartValues();
  }

  public final void start()
  {
    int k = 0;
    this.mTerminated = false;
    this.g = true;
    a();
    int m = this.d.size();
    for (int n = 0; n < m; n++)
    {
      AnimatorSet.Node localNode3 = (AnimatorSet.Node)this.d.get(n);
      ArrayList localArrayList4 = localNode3.animation.getListeners();
      if ((localArrayList4 != null) && (localArrayList4.size() > 0))
      {
        Iterator localIterator2 = new ArrayList(localArrayList4).iterator();
        while (localIterator2.hasNext())
        {
          Animator.AnimatorListener localAnimatorListener = (Animator.AnimatorListener)localIterator2.next();
          if (((localAnimatorListener instanceof AnimatorSet.DependencyListener)) || ((localAnimatorListener instanceof AnimatorSet.AnimatorSetListener)))
            localNode3.animation.removeListener(localAnimatorListener);
        }
      }
    }
    ArrayList localArrayList1 = new ArrayList();
    int i1 = 0;
    if (i1 < m)
    {
      AnimatorSet.Node localNode2 = (AnimatorSet.Node)this.d.get(i1);
      if (this.f == null)
        this.f = new AnimatorSet.AnimatorSetListener(this, this);
      if ((localNode2.dependencies == null) || (localNode2.dependencies.size() == 0))
        localArrayList1.add(localNode2);
      while (true)
      {
        localNode2.animation.addListener(this.f);
        i1++;
        break;
        int i5 = localNode2.dependencies.size();
        for (int i6 = 0; i6 < i5; i6++)
        {
          AnimatorSet.Dependency localDependency = (AnimatorSet.Dependency)localNode2.dependencies.get(i6);
          localDependency.node.animation.addListener(new AnimatorSet.DependencyListener(this, localNode2, localDependency.rule));
        }
        localNode2.tmpDependencies = ((ArrayList)localNode2.dependencies.clone());
      }
    }
    if (this.h <= 0L)
    {
      Iterator localIterator1 = localArrayList1.iterator();
      while (localIterator1.hasNext())
      {
        AnimatorSet.Node localNode1 = (AnimatorSet.Node)localIterator1.next();
        localNode1.animation.start();
        this.a.add(localNode1.animation);
      }
    }
    this.i = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    this.i.setDuration(this.h);
    this.i.addListener(new AnimatorSet.1(this, localArrayList1));
    this.i.start();
    if (this.mListeners != null)
    {
      ArrayList localArrayList3 = (ArrayList)this.mListeners.clone();
      int i3 = localArrayList3.size();
      for (int i4 = 0; i4 < i3; i4++)
        ((Animator.AnimatorListener)localArrayList3.get(i4)).onAnimationStart(this);
    }
    if ((this.c.size() == 0) && (this.h == 0L))
    {
      this.g = false;
      if (this.mListeners != null)
      {
        ArrayList localArrayList2 = (ArrayList)this.mListeners.clone();
        int i2 = localArrayList2.size();
        while (k < i2)
        {
          ((Animator.AnimatorListener)localArrayList2.get(k)).onAnimationEnd(this);
          k++;
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.AnimatorSet
 * JD-Core Version:    0.6.2
 */