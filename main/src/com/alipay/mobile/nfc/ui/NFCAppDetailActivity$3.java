package com.alipay.mobile.nfc.ui;

import android.widget.Button;
import com.alipay.mobile.nfc.R.string;

class NFCAppDetailActivity$3
  implements Runnable
{
  NFCAppDetailActivity$3(NFCAppDetailActivity paramNFCAppDetailActivity)
  {
  }

  public void run()
  {
    NFCAppDetailActivity.d(this.a).setEnabled(true);
    switch (NFCAppDetailActivity.e(this.a))
    {
    default:
      NFCAppDetailActivity.d(this.a).setText(this.a.getString(R.string.c));
      NFCAppDetailActivity.a(this.a, "main_button_style");
      return;
    case 202:
    }
    NFCAppDetailActivity.d(this.a).setText(this.a.getString(R.string.l));
    NFCAppDetailActivity.a(this.a, "main_button_style");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCAppDetailActivity.3
 * JD-Core Version:    0.6.2
 */