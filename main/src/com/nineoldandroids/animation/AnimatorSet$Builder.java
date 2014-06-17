package com.nineoldandroids.animation;

import java.util.ArrayList;
import java.util.HashMap;

public class AnimatorSet$Builder
{
  private AnimatorSet.Node a;

  AnimatorSet$Builder(AnimatorSet paramAnimatorSet, Animator paramAnimator)
  {
    this.a = ((AnimatorSet.Node)AnimatorSet.access$100(paramAnimatorSet).get(paramAnimator));
    if (this.a == null)
    {
      this.a = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(paramAnimatorSet).put(paramAnimator, this.a);
      AnimatorSet.access$400(paramAnimatorSet).add(this.a);
    }
  }

  public Builder after(long paramLong)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.setDuration(paramLong);
    after(localValueAnimator);
    return this;
  }

  public Builder after(Animator paramAnimator)
  {
    AnimatorSet.Node localNode = (AnimatorSet.Node)AnimatorSet.access$100(this.this$0).get(paramAnimator);
    if (localNode == null)
    {
      localNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this.this$0).put(paramAnimator, localNode);
      AnimatorSet.access$400(this.this$0).add(localNode);
    }
    AnimatorSet.Dependency localDependency = new AnimatorSet.Dependency(localNode, 1);
    this.a.addDependency(localDependency);
    return this;
  }

  public Builder before(Animator paramAnimator)
  {
    AnimatorSet.Node localNode = (AnimatorSet.Node)AnimatorSet.access$100(this.this$0).get(paramAnimator);
    if (localNode == null)
    {
      localNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this.this$0).put(paramAnimator, localNode);
      AnimatorSet.access$400(this.this$0).add(localNode);
    }
    localNode.addDependency(new AnimatorSet.Dependency(this.a, 1));
    return this;
  }

  public Builder with(Animator paramAnimator)
  {
    AnimatorSet.Node localNode = (AnimatorSet.Node)AnimatorSet.access$100(this.this$0).get(paramAnimator);
    if (localNode == null)
    {
      localNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this.this$0).put(paramAnimator, localNode);
      AnimatorSet.access$400(this.this$0).add(localNode);
    }
    localNode.addDependency(new AnimatorSet.Dependency(this.a, 0));
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.AnimatorSet.Builder
 * JD-Core Version:    0.6.2
 */