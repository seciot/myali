package com.nineoldandroids.view;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

class ViewPropertyAnimatorHC$AnimatorEventListener
  implements Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener
{
  private ViewPropertyAnimatorHC$AnimatorEventListener(ViewPropertyAnimatorHC paramViewPropertyAnimatorHC)
  {
  }

  public void onAnimationCancel(Animator paramAnimator)
  {
    if (ViewPropertyAnimatorHC.access$200(this.this$0) != null)
      ViewPropertyAnimatorHC.access$200(this.this$0).onAnimationCancel(paramAnimator);
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    if (ViewPropertyAnimatorHC.access$200(this.this$0) != null)
      ViewPropertyAnimatorHC.access$200(this.this$0).onAnimationEnd(paramAnimator);
    ViewPropertyAnimatorHC.access$300(this.this$0).removeBundle(paramAnimator);
    if (ViewPropertyAnimatorHC.access$300(this.this$0).isEmpty())
      ViewPropertyAnimatorHC.access$202(this.this$0, null);
  }

  public void onAnimationRepeat(Animator paramAnimator)
  {
    if (ViewPropertyAnimatorHC.access$200(this.this$0) != null)
      ViewPropertyAnimatorHC.access$200(this.this$0).onAnimationRepeat(paramAnimator);
  }

  public void onAnimationStart(Animator paramAnimator)
  {
    if (ViewPropertyAnimatorHC.access$200(this.this$0) != null)
      ViewPropertyAnimatorHC.access$200(this.this$0).onAnimationStart(paramAnimator);
  }

  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f1 = paramValueAnimator.getAnimatedFraction();
    ViewPropertyAnimatorHC.PropertyBundle localPropertyBundle = (ViewPropertyAnimatorHC.PropertyBundle)ViewPropertyAnimatorHC.access$300(this.this$0).get(paramValueAnimator);
    if ((0x1FF & localPropertyBundle.mPropertyMask) != 0)
    {
      View localView2 = (View)ViewPropertyAnimatorHC.access$400(this.this$0).get();
      if (localView2 != null)
        localView2.invalidate();
    }
    ArrayList localArrayList = localPropertyBundle.mNameValuesHolder;
    if (localArrayList != null)
    {
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
      {
        ViewPropertyAnimatorHC.NameValuesHolder localNameValuesHolder = (ViewPropertyAnimatorHC.NameValuesHolder)localArrayList.get(j);
        float f2 = localNameValuesHolder.mFromValue + f1 * localNameValuesHolder.mDeltaValue;
        ViewPropertyAnimatorHC.access$500(this.this$0, localNameValuesHolder.mNameConstant, f2);
      }
    }
    View localView1 = (View)ViewPropertyAnimatorHC.access$400(this.this$0).get();
    if (localView1 != null)
      localView1.invalidate();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.view.ViewPropertyAnimatorHC.AnimatorEventListener
 * JD-Core Version:    0.6.2
 */