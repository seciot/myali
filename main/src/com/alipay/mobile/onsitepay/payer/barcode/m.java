package com.alipay.mobile.onsitepay.payer.barcode;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

final class m
  implements View.OnClickListener
{
  m(BarcodePayActivity paramBarcodePayActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.q.setClickable(false);
    BarcodePayActivity.a(this.a, new n(this));
    this.a.q.setClickable(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.m
 * JD-Core Version:    0.6.2
 */