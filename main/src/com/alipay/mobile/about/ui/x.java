package com.alipay.mobile.about.ui;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;

final class x
  implements Runnable
{
  x(w paramw, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    ViewGroup localViewGroup = (ViewGroup)this.b.g.c.getChildAt(this.b.e + this.b.c);
    ImageView localImageView = (ImageView)localViewGroup.getChildAt(0);
    localImageView.setTag(this.a);
    localImageView.setImageBitmap(this.a);
    View localView = localViewGroup.getChildAt(1);
    localView.setTag(this.a);
    localView.setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.x
 * JD-Core Version:    0.6.2
 */