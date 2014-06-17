package com.alipay.android.mini.widget.animation;

import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

public final class DisplayRotate3D
  implements Animation.AnimationListener
{
  private View a;
  private boolean b;
  private DisplayRotate3D.onCompletedListener c;

  private DisplayRotate3D(View paramView, boolean paramBoolean, DisplayRotate3D.onCompletedListener paramonCompletedListener)
  {
    this.a = paramView;
    this.b = paramBoolean;
    this.c = paramonCompletedListener;
  }

  public static void a(View paramView, DisplayRotate3D.onCompletedListener paramonCompletedListener)
  {
    a(paramView, false, -90.0F, paramonCompletedListener);
  }

  private static void a(View paramView, boolean paramBoolean, float paramFloat, DisplayRotate3D.onCompletedListener paramonCompletedListener)
  {
    a locala = new a(0.0F, paramFloat, paramView.getWidth() / 2.0F, paramView.getHeight() / 2.0F, true);
    locala.setDuration(300L);
    locala.setFillAfter(true);
    locala.setInterpolator(new AccelerateInterpolator());
    locala.setAnimationListener(new DisplayRotate3D(paramView, paramBoolean, paramonCompletedListener));
    paramView.startAnimation(locala);
  }

  public static void b(View paramView, DisplayRotate3D.onCompletedListener paramonCompletedListener)
  {
    a(paramView, true, 90.0F, paramonCompletedListener);
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.a.post(new b(this.a, this.b, this.c));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.animation.DisplayRotate3D
 * JD-Core Version:    0.6.2
 */