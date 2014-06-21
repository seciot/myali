package com.alipay.android.mini.widget.animation;

import android.view.View;
import android.view.animation.DecelerateInterpolator;

final class b
  implements Runnable
{
  private boolean a;
  private View b;
  private DisplayRotate3D.onCompletedListener c;

  b(View paramView, boolean paramBoolean, DisplayRotate3D.onCompletedListener paramonCompletedListener)
  {
    this.b = paramView;
    this.a = paramBoolean;
    this.c = paramonCompletedListener;
  }

  public final void run()
  {
    float f1 = this.b.getWidth() / 2.0F;
    float f2 = this.b.getHeight() / 2.0F;
    if (this.a);
    for (a locala = new a(-90.0F, 0.0F, f1, f2, false); ; locala = new a(90.0F, 0.0F, f1, f2, false))
    {
      locala.setDuration(500L);
      locala.setFillAfter(true);
      locala.setInterpolator(new DecelerateInterpolator());
      this.b.startAnimation(locala);
      if (this.c != null)
        this.c.getInstance();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.animation.b
 * JD-Core Version:    0.6.2
 */