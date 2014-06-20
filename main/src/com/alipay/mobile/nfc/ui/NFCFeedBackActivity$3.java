package com.alipay.mobile.nfc.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.commonui.widget.APTableView;

class NFCFeedBackActivity$3
  implements DialogInterface.OnClickListener
{
  NFCFeedBackActivity$3(NFCFeedBackActivity paramNFCFeedBackActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    NFCFeedBackActivity.a(this.a, paramInt);
    NFCFeedBackActivity.f(this.a).setLeftText(NFCFeedBackActivity.removeBundle(this.a)[paramInt]);
    NFCFeedBackActivity.g(this.a);
    paramDialogInterface.cancel();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCFeedBackActivity.3
 * JD-Core Version:    0.6.2
 */