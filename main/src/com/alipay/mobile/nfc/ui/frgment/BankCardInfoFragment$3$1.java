package com.alipay.mobile.nfc.ui.frgment;

import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.common.helper.CCDCHelper;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.cardbin.Cardbin;
import com.alipay.mobile.framework.cardbin.CardbinManager;
import com.alipay.mobile.nfc.ui.NFCMainActivity;
import com.alipay.nfc.model.CardInfo;
import java.util.List;
import org.json.JSONObject;

class BankCardInfoFragment$3$1
  implements Runnable
{
  BankCardInfoFragment$3$1(BankCardInfoFragment.3 param3)
  {
  }

  public void run()
  {
    CardInfo localCardInfo = BankCardInfoFragment.a(this.a.a).a();
    Bundle localBundle = new Bundle();
    if ((localCardInfo != null) && (!TextUtils.isEmpty(localCardInfo.a())))
    {
      localBundle.putString("cardFullNo", localCardInfo.a());
      localBundle.putString("actionType", "repayment");
      JSONObject localJSONObject = CCDCHelper.getCardIndex(localCardInfo.a());
      if (localJSONObject != null)
      {
        localBundle.putString("cardNumber", localJSONObject.optString("key"));
        localBundle.putString("cardNumberType", "INDEX");
        localBundle.putString("autoAdd", "TRUE");
      }
      List localList = CardbinManager.getInstance(BankCardInfoFragment.a(this.a.a)).queryCarbin(localCardInfo.a());
      if ((localList != null) && (localList.size() == 1) && (localList.get(0) != null))
        localBundle.putString("bankMark", ((Cardbin)localList.get(0)).getBandAlias());
    }
    try
    {
      BankCardInfoFragment.b(this.a.a).startApp("20000071", "09999999", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BankCardInfoFragment.3.1
 * JD-Core Version:    0.6.2
 */