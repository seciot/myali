package com.nineoldandroids.animation;

import java.util.ArrayList;

class AnimatorSet$Node
  implements Cloneable
{
  public Animator animation;
  public ArrayList<AnimatorSet.Dependency> dependencies = null;
  public boolean done = false;
  public ArrayList<Node> nodeDependencies = null;
  public ArrayList<Node> nodeDependents = null;
  public ArrayList<AnimatorSet.Dependency> tmpDependencies = null;

  public AnimatorSet$Node(Animator paramAnimator)
  {
    this.animation = paramAnimator;
  }

  public void addDependency(AnimatorSet.Dependency paramDependency)
  {
    if (this.dependencies == null)
    {
      this.dependencies = new ArrayList();
      this.nodeDependencies = new ArrayList();
    }
    this.dependencies.add(paramDependency);
    if (!this.nodeDependencies.contains(paramDependency.node))
      this.nodeDependencies.add(paramDependency.node);
    Node localNode = paramDependency.node;
    if (localNode.nodeDependents == null)
      localNode.nodeDependents = new ArrayList();
    localNode.nodeDependents.add(this);
  }

  public Node clone()
  {
    try
    {
      Node localNode = (Node)super.clone();
      localNode.animation = this.animation.clone();
      return localNode;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new AssertionError();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.AnimatorSet.Node
 * JD-Core Version:    0.6.2
 */