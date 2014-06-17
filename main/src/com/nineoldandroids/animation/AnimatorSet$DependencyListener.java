package com.nineoldandroids.animation;

import java.util.ArrayList;

class AnimatorSet$DependencyListener
  implements Animator.AnimatorListener
{
  private AnimatorSet a;
  private AnimatorSet.Node b;
  private int c;

  public AnimatorSet$DependencyListener(AnimatorSet paramAnimatorSet, AnimatorSet.Node paramNode, int paramInt)
  {
    this.a = paramAnimatorSet;
    this.b = paramNode;
    this.c = paramInt;
  }

  private void a(Animator paramAnimator)
  {
    if (this.a.mTerminated)
      return;
    int i = this.b.tmpDependencies.size();
    int j = 0;
    label24: AnimatorSet.Dependency localDependency;
    if (j < i)
    {
      localDependency = (AnimatorSet.Dependency)this.b.tmpDependencies.get(j);
      if ((localDependency.rule == this.c) && (localDependency.node.animation == paramAnimator))
        paramAnimator.removeListener(this);
    }
    while (true)
    {
      this.b.tmpDependencies.remove(localDependency);
      if (this.b.tmpDependencies.size() != 0)
        break;
      this.b.animation.start();
      AnimatorSet.access$000(this.a).add(this.b.animation);
      return;
      j++;
      break label24;
      localDependency = null;
    }
  }

  public void onAnimationCancel(Animator paramAnimator)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.c == 1)
      a(paramAnimator);
  }

  public void onAnimationRepeat(Animator paramAnimator)
  {
  }

  public void onAnimationStart(Animator paramAnimator)
  {
    if (this.c == 0)
      a(paramAnimator);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.AnimatorSet.DependencyListener
 * JD-Core Version:    0.6.2
 */