package com.alipay.mobile.nfc.ui;

import android.widget.Button;

class NFCAppDetailActivity$2
  implements Runnable
{
  NFCAppDetailActivity$2(NFCAppDetailActivity paramNFCAppDetailActivity)
  {
  }

  public void run()
  {
    NFCAppDetailActivity.d(this.a).setEnabled(true);
    NFCAppDetailActivity.d(this.a).setText("安装应用");
    NFCAppDetailActivity.v(this.a, "main_button_style");
    this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCAppDetailActivity.2
 * JD-Core Version:    0.6.2
 */