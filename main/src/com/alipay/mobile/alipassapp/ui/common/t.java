package com.alipay.mobile.alipassapp.ui.common;

import android.graphics.Bitmap;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.commonui.widget.APImageView;

final class t
  implements Runnable
{
  t(s params, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    AlipassOperationViewPager.access$800();
    this.b.b.setImageBitmap(this.a);
    this.b.b.setOnClickListener(new u(this, AlipassOperationViewPager.access$900(this.b.c), this.b.a.getMessage()));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.t
 * JD-Core Version:    0.6.2
 */