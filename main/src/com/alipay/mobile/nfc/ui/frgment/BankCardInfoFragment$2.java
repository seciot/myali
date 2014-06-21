package com.alipay.mobile.nfc.ui.frgment;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.nfc.strategy.BusinessJumpable;
import com.alipay.nfc.model.CardInfo;
import java.util.Map;

class BankCardInfoFragment$2
  implements BusinessJumpable
{
  BankCardInfoFragment$2(BankCardInfoFragment paramBankCardInfoFragment, CardInfo paramCardInfo)
  {
  }

  public final void a()
  {
    Bundle localBundle = new Bundle();
    if (this.a != null)
    {
      localBundle.putString("cardNo", this.a.getInstance());
      if (this.a.getFullBundleName() != null)
      {
        localBundle.putString("certNo", (String)this.a.getFullBundleName().get("idcard"));
        localBundle.putString("inputName", (String)this.a.getFullBundleName().get("name"));
      }
    }
    try
    {
      BankCardInfoFragment.b(this.b).startApp("20000071", "09999983", localBundle);
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
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BankCardInfoFragment.2
 * JD-Core Version:    0.6.2
 */