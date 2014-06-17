package com.alipay.mobile.security.authcenter.service;

import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobilesecurity.biz.gw.service.account.AccountManagerFacade;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.account.GetAccountResult;
import com.alipay.mobilesecurity.core.model.account.TaobaoSsoToken;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSsoLoginUtils;

final class b
  implements Runnable
{
  b(AccountImportServiceImpl paramAccountImportServiceImpl)
  {
  }

  public final void run()
  {
    AlipayApplication localAlipayApplication = this.a.getMicroApplicationContext().getApplicationContext();
    if (!TaobaoSsoLoginUtils.parseTaobaoSsoToken(localAlipayApplication))
      AccountImportServiceImpl.access$600(this.a);
    String str1 = TaobaoSsoLoginUtils.getParsedNickName();
    String str2 = TaobaoSsoLoginUtils.getParsedSsoToken();
    if (StringUtils.isBlank(str2))
    {
      AccountImportServiceImpl.access$200();
      AccountImportServiceImpl.access$600(this.a);
    }
    String str3 = DeviceInfo.getInstance().getImei();
    String str4 = DeviceInfo.getInstance().getImsi();
    String str5 = TaobaoSsoLoginUtils.obtainTaobaoDeviceId(DeviceInfo.getInstance().getmDid(), localAlipayApplication);
    long l = TaobaoSsoLoginUtils.syncTimeStamp();
    String str6 = TaobaoSsoLoginUtils.createSecSign(str2, str5, l, str3, str4, localAlipayApplication);
    TaobaoSsoToken localTaobaoSsoToken = new TaobaoSsoToken();
    localTaobaoSsoToken.setNickName(str1);
    localTaobaoSsoToken.setSsoToken(str2);
    localTaobaoSsoToken.setTaobaoDeviceId(str5);
    localTaobaoSsoToken.setTimeStamp(l);
    localTaobaoSsoToken.setSecSign(str6);
    localTaobaoSsoToken.setImei(str3);
    localTaobaoSsoToken.setImsi(str4);
    Tid localTid = AccountImportServiceImpl.access$100(this.a);
    AccountManagerFacade localAccountManagerFacade = AccountImportServiceImpl.access$700(this.a);
    try
    {
      AccountImportServiceImpl.access$200();
      GetAccountResult localGetAccountResult = localAccountManagerFacade.importAccountByTaobaoToken(localTid, localTaobaoSsoToken);
      if (localGetAccountResult != null)
      {
        if (!localGetAccountResult.isSuccess())
          break label234;
        AccountImportServiceImpl.access$200();
        AccountImportServiceImpl.access$802(this.a, this.a.getUserListFromResult(localGetAccountResult));
      }
      while (true)
      {
        label226: AccountImportServiceImpl.access$600(this.a);
        return;
        label234: AccountImportServiceImpl.access$200();
        new StringBuilder("通过淘宝sso token向服务器请求获取用户列表返回异常  ").append(localGetAccountResult.getResultCode()).append(" ").append(localGetAccountResult.getMessage()).toString();
      }
    }
    catch (Exception localException)
    {
      break label226;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.b
 * JD-Core Version:    0.6.2
 */