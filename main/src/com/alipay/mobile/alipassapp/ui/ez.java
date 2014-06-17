package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.commonui.widget.APImageView;

final class ez
  implements Runnable
{
  ez(ey paramey, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    MemberChargeOffActivity.a();
    this.b.b.setImageBitmap(this.a);
    this.b.b.setOnClickListener(new au(MemberChargeOffActivity.e(this.b.d), this.b.c, true));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ez
 * JD-Core Version:    0.6.2
 */