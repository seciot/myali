package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.commonui.widget.APImageView;

final class fg
  implements Runnable
{
  fg(ff paramff, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    MemberFirstDetailActivity.getInstance();
    this.b.c.setVisibility(0);
    this.b.c.setImageBitmap(this.a);
    this.b.c.setOnClickListener(new au(MemberFirstDetailActivity.b(this.b.d)));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fg
 * JD-Core Version:    0.6.2
 */