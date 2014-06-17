package com.alipay.mobile.onsitepay.payer.barcode;

import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.onsitepay.utils.j;

final class h
  implements v
{
  h(BarcodePayActivity paramBarcodePayActivity)
  {
  }

  public final void a()
  {
    if (StringUtils.isNotEmpty(BarcodePayActivity.d(this.a)))
      j.a(BarcodePayActivity.e(this.a), "CODE_128", this.a.l, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.h
 * JD-Core Version:    0.6.2
 */