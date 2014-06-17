package com.alipay.mobile.nfc.ui;

import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.nfc.strategy.BusinessJumpable;

class NFCBeamActivity$1
  implements BusinessJumpable
{
  NFCBeamActivity$1(NFCBeamActivity paramNFCBeamActivity)
  {
  }

  public final void a()
  {
    Bundle localBundle;
    if (!TextUtils.isEmpty(NFCBeamActivity.a(this.a)))
    {
      localBundle = new Bundle();
      localBundle.putString("actionType", "toAccount");
      localBundle.putString("account", NFCBeamActivity.a(this.a));
    }
    try
    {
      NFCBeamActivity.b(this.a).getMicroApplicationContext().startApp("20000071", "09999988", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }

  public final void b()
  {
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCBeamActivity.1
 * JD-Core Version:    0.6.2
 */