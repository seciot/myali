package com.alipay.mobile.alipassapp.ui.common;

import android.graphics.Bitmap;
import com.alipay.mobile.commonui.widget.APImageView;

final class w
  implements Runnable
{
  w(v paramv, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    AlipassOperationViewPager.access$800();
    this.b.c.setVisibility(0);
    this.b.c.setImageBitmap(this.a);
    this.b.c.setOnClickListener(new x(this, AlipassOperationViewPager.access$900(this.b.d)));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.w
 * JD-Core Version:    0.6.2
 */