package com.alipay.mobile.common.animation;

import android.view.View;
import android.view.animation.DecelerateInterpolator;

class Rotate3dAnimationListener$SwapView
  implements Runnable
{
  private boolean a;

  public Rotate3dAnimationListener$SwapView(Rotate3dAnimationListener paramRotate3dAnimationListener, boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public void run()
  {
    float f1 = Rotate3dAnimationListener.access$000(this.this$0).getWidth() / 2.0F;
    float f2 = Rotate3dAnimationListener.access$000(this.this$0).getHeight() / 2.0F;
    if (this.a)
      if (Rotate3dAnimationListener.access$100(this.this$0) != null)
        Rotate3dAnimationListener.access$100(this.this$0).onFrontToBack();
    for (Rotate3dAnimation localRotate3dAnimation = new Rotate3dAnimation(270.0F, 360.0F, f1, f2, Rotate3dAnimationListener.access$000(this.this$0).getWidth() / 2.0F, false); ; localRotate3dAnimation = new Rotate3dAnimation(90.0F, 0.0F, f1, f2, Rotate3dAnimationListener.access$000(this.this$0).getWidth() / 2.0F, false))
    {
      localRotate3dAnimation.setDuration(500L);
      localRotate3dAnimation.setFillAfter(true);
      localRotate3dAnimation.setInterpolator(new DecelerateInterpolator());
      localRotate3dAnimation.setAnimationListener(new Rotate3dAnimationListener.SwapView.1(this));
      Rotate3dAnimationListener.access$000(this.this$0).startAnimation(localRotate3dAnimation);
      return;
      if (Rotate3dAnimationListener.access$100(this.this$0) != null)
        Rotate3dAnimationListener.access$100(this.this$0).onBackToFront();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.animation.Rotate3dAnimationListener.SwapView
 * JD-Core Version:    0.6.2
 */