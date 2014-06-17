package com.alipay.mobile.security.authcenter.a;

import android.content.Context;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobileapp.common.service.facade.account.supplement.model.QUserInfoSupplementReq;
import com.alipay.mobileapp.common.service.facade.account.supplement.model.QUserInfoSupplementRes;
import com.alipay.mobilegw.biz.shared.processer.account.QUserInfoSupplementService;

public final class b
{
  private QUserInfoSupplementService a;
  private Context b;
  private RSAService c;

  public b(ActivityApplication paramActivityApplication, Context paramContext)
  {
    this.b = paramContext;
    this.a = ((QUserInfoSupplementService)((RpcService)paramActivityApplication.getServiceByInterface(RpcService.class.getName())).getRpcProxy(QUserInfoSupplementService.class));
    this.c = ((RSAService)paramActivityApplication.getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName()));
  }

  public final QUserInfoSupplementRes a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (this.c != null)
    {
      QUserInfoSupplementReq localQUserInfoSupplementReq = new QUserInfoSupplementReq();
      localQUserInfoSupplementReq.setLogonId(paramString1);
      localQUserInfoSupplementReq.setUserName(paramString2);
      String str = this.c.RSAEncrypt(paramString3, false);
      localQUserInfoSupplementReq.setPayPassword(str);
      if ((paramString4 != null) && (!paramString4.trim().equals("")))
        localQUserInfoSupplementReq.setLoginPassword(str);
      localQUserInfoSupplementReq.setClientID(DeviceInfo.createInstance(this.b).getClientId());
      try
      {
        new StringBuilder("{[info=supplement], req=").append(localQUserInfoSupplementReq).toString();
        QUserInfoSupplementRes localQUserInfoSupplementRes = this.a.supplementQUserInfo(localQUserInfoSupplementReq);
        new StringBuilder("{[info=supplement], req=").append(localQUserInfoSupplementReq).append(",res=").append(localQUserInfoSupplementRes.getResultStatus()).toString();
        return localQUserInfoSupplementRes;
      }
      catch (RpcException localRpcException)
      {
        return null;
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.a.b
 * JD-Core Version:    0.6.2
 */