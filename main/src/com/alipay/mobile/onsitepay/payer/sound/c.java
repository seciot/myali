package com.alipay.mobile.onsitepay.payer.sound;

import android.graphics.Bitmap;
import com.alipay.mobile.common.misc.CircularImageView;

final class c
  implements Runnable
{
  c(b paramb, Bitmap paramBitmap, String paramString)
  {
  }

  public final void run()
  {
    if (this.a != null)
    {
      new StringBuilder("path=").append(this.b).toString();
      NearbyFriend.access$000(this.c.a).setImageBitmap(this.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.c
 * JD-Core Version:    0.6.2
 */