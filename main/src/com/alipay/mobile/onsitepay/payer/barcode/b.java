package com.alipay.mobile.onsitepay.payer.barcode;

import com.alipay.mobile.onsitepay.utils.j;

final class b
  implements v
{
  b(BarcodePayActivity paramBarcodePayActivity, String paramString)
  {
  }

  public final void a()
  {
    if ("barcode".equals(this.a))
    {
      j.a(BarcodePayActivity.k(this.b), "CODE_128", this.b.t, true);
      return;
    }
    j.a(BarcodePayActivity.l(this.b), "QR_CODE", this.b.t, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.b
 * JD-Core Version:    0.6.2
 */