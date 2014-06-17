package com.alipay.mobile.onsitepay.payer.barcode;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

final class l
  implements View.OnClickListener
{
  l(BarcodePayActivity paramBarcodePayActivity)
  {
  }

  public final void onClick(View paramView)
  {
    BarcodePayActivity.h(this.a).sendEmptyMessage(103);
    this.a.o.setVisibility(8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.l
 * JD-Core Version:    0.6.2
 */