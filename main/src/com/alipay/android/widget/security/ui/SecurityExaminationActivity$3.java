package com.alipay.android.widget.security.ui;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import com.alipay.mobile.clientsecurity.R.anim;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;

class SecurityExaminationActivity$3
  implements Animation.AnimationListener
{
  SecurityExaminationActivity$3(SecurityExaminationActivity paramSecurityExaminationActivity, int paramInt)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    if (100 == this.a)
    {
      this.b.n.setVisibility(0);
      this.b.n.startAnimation(AnimationUtils.loadAnimation(this.b, R.anim.BundlesManagerImpl));
      return;
    }
    this.b.l.setVisibility(0);
    this.b.m.setVisibility(0);
    this.b.l.setText(Integer.toString(this.a));
    this.b.l.startAnimation(AnimationUtils.loadAnimation(this.b, R.anim.BundlesManagerImpl));
    this.b.m.startAnimation(AnimationUtils.loadAnimation(this.b, R.anim.BundlesManagerImpl));
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.3
 * JD-Core Version:    0.6.2
 */