package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.commonui.widget.APImageView;

final class fb
  implements Runnable
{
  fb(fa paramfa, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    MemberChargeOffActivity.a();
    this.b.c.setVisibility(0);
    this.b.c.setImageBitmap(this.a);
    this.b.c.setOnClickListener(new au(MemberChargeOffActivity.e(this.b.d)));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fb
 * JD-Core Version:    0.6.2
 */