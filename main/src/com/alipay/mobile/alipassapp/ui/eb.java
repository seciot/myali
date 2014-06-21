package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.commonui.widget.APImageView;

final class eb
  implements Runnable
{
  eb(ea paramea, Bitmap paramBitmap, AlipassInfo.Operation.OperationString paramOperationString)
  {
  }

  public final void run()
  {
    MemberCardDetailActivity.getBundle(this.c.a).setImageBitmap(this.a);
    MemberCardDetailActivity.getBundle(this.c.a).setOnClickListener(new au(this.c.a, this.b.getMessage(), true));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.eb
 * JD-Core Version:    0.6.2
 */