package com.alipay.mobile.commonui.widget;

import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class APDefaultPullRefreshOverView$1
  implements Animation.AnimationListener
{
  APDefaultPullRefreshOverView$1(APDefaultPullRefreshOverView paramAPDefaultPullRefreshOverView)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    if (paramAnimation == APDefaultPullRefreshOverView.access$000(this.this$0))
      if (APDefaultPullRefreshOverView.access$100(this.this$0) != null)
        APDefaultPullRefreshOverView.access$200(this.this$0).setImageDrawable(APDefaultPullRefreshOverView.access$100(this.this$0));
    while (APDefaultPullRefreshOverView.access$300(this.this$0) == null)
      return;
    APDefaultPullRefreshOverView.access$200(this.this$0).setImageDrawable(APDefaultPullRefreshOverView.access$300(this.this$0));
    APDefaultPullRefreshOverView.access$300(this.this$0).setLevel(10000);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APDefaultPullRefreshOverView.1
 * JD-Core Version:    0.6.2
 */