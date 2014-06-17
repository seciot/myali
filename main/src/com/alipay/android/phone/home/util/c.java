package com.alipay.android.phone.home.util;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

final class c
  implements Runnable
{
  c(b paramb, Bitmap paramBitmap, Drawable paramDrawable)
  {
  }

  public final void run()
  {
    if ((this.c.a.d) && (this.a != null))
    {
      this.c.a.c.setImageBitmap(this.a);
      return;
    }
    this.c.a.c.setImageDrawable(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.c
 * JD-Core Version:    0.6.2
 */