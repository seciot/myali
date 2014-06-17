package com.alipay.mobile.nfc.ui.frgment;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.cardbin.Cardbin;
import com.alipay.mobile.framework.cardbin.CardbinManager;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.nfc.ui.NFCMainActivity;
import com.alipay.nfc.model.CardInfo;
import com.alipay.publiccore.biz.service.impl.rpc.OfficialAccountFacade;
import com.alipay.publiccore.client.req.OfficialQueryByInstIdReq;
import com.alipay.publiccore.client.result.OfficialAccountLinkResult;
import java.util.List;

class BankCardInfoFragment$5$1
  implements Runnable
{
  BankCardInfoFragment$5$1(BankCardInfoFragment.5 param5)
  {
  }

  public void run()
  {
    Looper.prepare();
    CardInfo localCardInfo = BankCardInfoFragment.a(this.a.a).a();
    if (localCardInfo == null)
      return;
    List localList = CardbinManager.getInstance(BankCardInfoFragment.a(this.a.a)).queryCarbin(localCardInfo.a());
    OfficialAccountFacade localOfficialAccountFacade;
    if ((localList.size() == 1) && (localList.get(0) != null))
      localOfficialAccountFacade = (OfficialAccountFacade)((RpcService)BankCardInfoFragment.b(this.a.a).findServiceByInterface(RpcService.class.getName())).getRpcProxy(OfficialAccountFacade.class);
    while (true)
    {
      try
      {
        OfficialQueryByInstIdReq localOfficialQueryByInstIdReq = new OfficialQueryByInstIdReq();
        Cardbin localCardbin = (Cardbin)localList.get(0);
        localOfficialQueryByInstIdReq.setCardType(localCardbin.getCardType());
        localOfficialQueryByInstIdReq.setInstId(localCardbin.getBandAlias());
        OfficialAccountLinkResult localOfficialAccountLinkResult = localOfficialAccountFacade.queryOfficialAccountByInstIdAndCardType(localOfficialQueryByInstIdReq);
        if (localOfficialAccountLinkResult.isSuccess())
        {
          String str2 = localOfficialAccountLinkResult.getResultLink();
          str1 = str2;
          if (str1 == null)
            break;
          ((SchemeService)BankCardInfoFragment.b(this.a.a).findServiceByInterface(SchemeService.class.getName())).process(Uri.parse(str1));
          return;
        }
        BankCardInfoFragment.c(this.a.a).obtainMessage(701, localOfficialAccountLinkResult).sendToTarget();
        str1 = null;
        continue;
      }
      catch (RpcException localRpcException)
      {
      }
      String str1 = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BankCardInfoFragment.5.1
 * JD-Core Version:    0.6.2
 */