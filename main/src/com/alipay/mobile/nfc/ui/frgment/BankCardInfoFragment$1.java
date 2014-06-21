package com.alipay.mobile.nfc.ui.frgment;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.alipay.publiccore.client.result.OfficialAccountLinkResult;

class BankCardInfoFragment$1 extends Handler
{
  BankCardInfoFragment$1(BankCardInfoFragment paramBankCardInfoFragment)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 701:
    }
    BankCardInfoFragment.a();
    OfficialAccountLinkResult localOfficialAccountLinkResult = (OfficialAccountLinkResult)paramMessage.obj;
    Toast.makeText(BankCardInfoFragment.getBundle(this.a), localOfficialAccountLinkResult.getErrMsg(), 1).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BankCardInfoFragment.1
 * JD-Core Version:    0.6.2
 */