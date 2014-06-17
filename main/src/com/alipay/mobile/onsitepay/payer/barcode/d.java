package com.alipay.mobile.onsitepay.payer.barcode;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.ScrollView;

final class d
  implements View.OnClickListener
{
  d(BarcodePayActivity paramBarcodePayActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.v != null)
    {
      this.a.v.setVisibility(8);
      BarcodePayActivity.h(this.a).sendEmptyMessage(102);
      this.a.o.setVisibility(8);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.d
 * JD-Core Version:    0.6.2
 */