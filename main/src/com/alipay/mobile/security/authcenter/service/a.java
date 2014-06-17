package com.alipay.mobile.security.authcenter.service;

import android.text.TextUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.biz.gw.service.account.AccountManagerFacade;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.account.GetAccountResult;

final class a
  implements Runnable
{
  a(AccountImportServiceImpl paramAccountImportServiceImpl)
  {
  }

  public final void run()
  {
    MspDeviceInfoBean localMspDeviceInfoBean = AccountImportServiceImpl.access$000(this.a);
    Tid localTid1 = new Tid();
    localTid1.setClientKey(localMspDeviceInfoBean.getMspkey());
    localTid1.setImei(localMspDeviceInfoBean.getImei());
    localTid1.setImsi(localMspDeviceInfoBean.getImsi());
    localTid1.setTid(localMspDeviceInfoBean.getTid());
    localTid1.setVimei(localMspDeviceInfoBean.getVimei());
    localTid1.setVimsi(localMspDeviceInfoBean.getVimsi());
    Tid localTid2;
    if (!TextUtils.isEmpty(localTid1.getTid()))
      localTid2 = AccountImportServiceImpl.access$100(this.a);
    try
    {
      AccountImportServiceImpl.access$200();
      GetAccountResult localGetAccountResult = ((AccountManagerFacade)((RpcService)AccountImportServiceImpl.access$300(this.a).findServiceByInterface(RpcService.class.getName())).getRpcProxy(AccountManagerFacade.class)).importMspAccount(localTid2, localTid1);
      if (localGetAccountResult != null)
      {
        if (!localGetAccountResult.isSuccess())
          break label165;
        AccountImportServiceImpl.access$200();
        AccountImportServiceImpl.access$402(this.a, this.a.getUserListFromResult(localGetAccountResult));
      }
      while (true)
      {
        label157: AccountImportServiceImpl.access$500(this.a);
        return;
        label165: AccountImportServiceImpl.access$200();
        new StringBuilder("通过tid向服务器请求获取用户列表返回异常  ").append(localGetAccountResult.getResultCode()).append(" ").append(localGetAccountResult.getMessage()).toString();
      }
    }
    catch (Exception localException)
    {
      break label157;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.a
 * JD-Core Version:    0.6.2
 */