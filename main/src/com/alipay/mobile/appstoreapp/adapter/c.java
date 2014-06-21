package com.alipay.mobile.appstoreapp.adapter;

import android.graphics.Bitmap;
import android.graphics.drawable.StateListDrawable;
import com.alipay.mobile.appstoreapp.util.IconLoadHelper;
import com.alipay.mobile.commonui.widget.APImageView;

final class c
  implements Runnable
{
  c(b paramb, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    StateListDrawable localStateListDrawable = IconLoadHelper.getBundle(this.a);
    this.b.a.b.setImageDrawable(localStateListDrawable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.adapter.c
 * JD-Core Version:    0.6.2
 */