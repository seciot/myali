package com.alipay.mobile.authorization.ui;

import android.os.AsyncTask;
import com.alipay.mobile.authorization.biz.AuthorizationBiz;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobileapp.biz.rpc.appauth.facade.AuthSignReq;
import com.alipay.mobileapp.biz.rpc.appauth.facade.AuthSignRes;

final class b extends AsyncTask<String, String, AuthSignRes>
{
  b(AuthorizationActivity paramAuthorizationActivity)
  {
  }

  private AuthSignRes a(String[] paramArrayOfString)
  {
    String str = paramArrayOfString[0];
    AuthSignReq localAuthSignReq = new AuthSignReq();
    localAuthSignReq.setAppId(AuthorizationActivity.c(this.a));
    localAuthSignReq.setPlatform("Android");
    localAuthSignReq.setUserId(str);
    localAuthSignReq.setAuthType(AuthorizationActivity.d(this.a));
    localAuthSignReq.setTid(((DeviceService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryDeviceInfo().getWalletTid());
    try
    {
      AuthSignRes localAuthSignRes = AuthorizationActivity.removeBundle(this.a).getBundle(localAuthSignReq);
      return localAuthSignRes;
    }
    catch (RpcException localRpcException)
    {
      this.a.dismissProgressDialog();
      localRpcException.getMessage();
      throw localRpcException;
    }
  }

  protected final void onPreExecute()
  {
    this.a.showProgressDialog("", false, null);
    super.onPreExecute();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.ui.b
 * JD-Core Version:    0.6.2
 */