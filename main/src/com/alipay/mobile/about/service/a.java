package com.alipay.mobile.about.service;

import android.os.AsyncTask;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileapp.common.service.facade.version.ClientVersionServiceFacade;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;
import com.alipay.mobileapp.common.service.facade.version.model.ClientVersionServiceReq;

public final class a extends AsyncTask<Object, Void, ClientUpdateCheckRes>
{
  protected static boolean a = false;
  private MicroApplicationContext b = null;

  public a(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = paramMicroApplicationContext;
  }

  private ClientUpdateCheckRes a()
  {
    ClientUpdateCheckRes localClientUpdateCheckRes;
    if (a)
    {
      this.b.Toast("正在下载新版本客户端", 1);
      localClientUpdateCheckRes = null;
    }
    while (true)
    {
      return localClientUpdateCheckRes;
      this.b.showProgressDialog(AlipayApplication.getInstance().getText(R.string.d).toString());
      RpcService localRpcService = (RpcService)this.b.findServiceByInterface(RpcService.class.getName());
      AuthService localAuthService = (AuthService)this.b.getExtServiceByInterface(AuthService.class.getName());
      ClientVersionServiceFacade localClientVersionServiceFacade = (ClientVersionServiceFacade)localRpcService.getRpcProxy(ClientVersionServiceFacade.class);
      ClientVersionServiceReq localClientVersionServiceReq = m.a();
      if (localAuthService.isLogin())
      {
        UserInfo localUserInfo = localAuthService.getUserInfo();
        if (localUserInfo != null)
          localClientVersionServiceReq.setUserId(localUserInfo.getUserId());
      }
      try
      {
        localClientUpdateCheckRes = localClientVersionServiceFacade.versionUpdateCheck(localClientVersionServiceReq);
        this.b.dismissProgressDialog();
        if (localClientUpdateCheckRes.getResultStatus() != 201)
          continue;
        CharSequence localCharSequence = this.b.getApplicationContext().getText(R.string.h);
        this.b.Toast(localCharSequence.toString(), 1);
        return localClientUpdateCheckRes;
      }
      catch (RpcException localRpcException)
      {
        this.b.dismissProgressDialog();
        localRpcException.getMessage();
        throw localRpcException;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.a
 * JD-Core Version:    0.6.2
 */