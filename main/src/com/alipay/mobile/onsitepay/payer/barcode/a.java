package com.alipay.mobile.onsitepay.payer.barcode;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import com.alipay.mobile.common.utils.StringUtils;

final class a extends Handler
{
  private int b = 1440;

  a(BarcodePayActivity paramBarcodePayActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 101)
    {
      if (this.b > 0)
      {
        this.a.n.setMax(1440);
        if (StringUtils.isNotBlank(BarcodePayActivity.getBundle(this.a)))
        {
          this.a.n.setProgress(this.b);
          this.b = (-1 + this.b);
        }
        removeMessages(101);
        sendEmptyMessageDelayed(101, 41L);
      }
      while (this.b != 0)
        return;
      new StringBuilder("currentCount=").append(this.b).toString();
      BarcodePayActivity.v(this.a, false);
      this.b = 1440;
      sendEmptyMessage(101);
      return;
    }
    if (paramMessage.what == 102)
    {
      this.b = 1440;
      new StringBuilder("MSG_TIME_COUNT_RESET currentCount=").append(this.b).toString();
      BarcodePayActivity.v(this.a, true);
      sendEmptyMessage(101);
      return;
    }
    if (paramMessage.what == 103)
    {
      this.b = 1440;
      new StringBuilder("MSG_TIME_COUNT_RESET currentCount=").append(this.b).toString();
      BarcodePayActivity.dexopt(this.a);
      sendEmptyMessage(101);
      return;
    }
    super.handleMessage(paramMessage);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.a
 * JD-Core Version:    0.6.2
 */