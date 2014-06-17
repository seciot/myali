package com.alipay.mobile.nfc.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class NFCMainActivity$2
  implements DialogInterface.OnClickListener
{
  NFCMainActivity$2(NFCMainActivity paramNFCMainActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    NFCMainActivity.b(this.a).getMicroApplicationContext().startActivity(NFCMainActivity.a(this.a), new Intent(this.a, NFCFeedBackActivity.class));
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCMainActivity.2
 * JD-Core Version:    0.6.2
 */