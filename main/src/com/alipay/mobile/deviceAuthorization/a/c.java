package com.alipay.mobile.deviceAuthorization.a;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.alipay.mobile.clientsecurity.R.id;

final class c
  implements Runnable
{
  c(b paramb, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    ((ImageView)this.b.a.findViewById(R.id.aT)).setImageBitmap(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.a.c
 * JD-Core Version:    0.6.2
 */