package com.alipay.mobile.nfc.ui.frgment;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.cardbin.Cardbin;
import com.alipay.mobile.framework.cardbin.CardbinManager;
import com.alipay.mobile.nfc.strategy.BusinessJumpable;
import com.alipay.nfc.model.CardInfo;
import java.util.List;

class BankCardInfoFragment$4
  implements BusinessJumpable
{
  BankCardInfoFragment$4(BankCardInfoFragment paramBankCardInfoFragment, CardInfo paramCardInfo)
  {
  }

  public final void a()
  {
    Bundle localBundle = new Bundle();
    if (this.a != null)
    {
      localBundle.putString("actionType", "toCard");
      localBundle.putString("cardNo", this.a.a());
      List localList = CardbinManager.getInstance(BankCardInfoFragment.a(this.b)).queryCarbin(this.a.a());
      if ((localList != null) && (localList.size() == 1) && (localList.get(0) != null))
        localBundle.putString("bankMark", ((Cardbin)localList.get(0)).getBandAlias());
    }
    try
    {
      BankCardInfoFragment.b(this.b).startApp("20000071", "09999988", localBundle);
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
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BankCardInfoFragment.4
 * JD-Core Version:    0.6.2
 */