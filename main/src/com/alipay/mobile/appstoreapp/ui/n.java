package com.alipay.mobile.appstoreapp.ui;

import android.app.Activity;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.openplatform.service.ThirdPartyAuthorizeService;
import com.alipay.mobileapp.core.model.app.MobileAppAuthStatusVO;

final class n extends Thread
{
  n(AppLaunchFromShortcutActivityImpl paramAppLaunchFromShortcutActivityImpl)
  {
  }

  public final void run()
  {
    try
    {
      MobileAppAuthStatusVO localMobileAppAuthStatusVO = AppLaunchFromShortcutActivityImpl.access$800(this.a).getAuthStatusValidTid(AppLaunchFromShortcutActivityImpl.access$500(this.a), AppLaunchFromShortcutActivityImpl.access$600(this.a), AppLaunchFromShortcutActivityImpl.access$700(this.a));
      if ((localMobileAppAuthStatusVO != null) && (localMobileAppAuthStatusVO.isSignStatus()))
      {
        AppLaunchFromShortcutActivityImpl.access$200(this.a, localMobileAppAuthStatusVO.getAuthCode(), 1000);
        return;
      }
      if (localMobileAppAuthStatusVO != null)
        if (localMobileAppAuthStatusVO.getResultCode() == 1000)
        {
          AppLaunchFromShortcutActivityImpl.access$900(this.a, localMobileAppAuthStatusVO);
          return;
        }
    }
    catch (Exception localException)
    {
      int i;
      if ((localException instanceof RpcException))
      {
        RpcException localRpcException = (RpcException)localException;
        if ((localRpcException.getCode() == 2) || (localRpcException.getCode() == 4) || (localRpcException.getCode() == 7) || (localRpcException.getCode() == 5))
        {
          i = -100;
          AppLaunchFromShortcutActivityImpl.access$1000();
          AppLaunchFromShortcutActivityImpl.access$400(this.a, AppLaunchFromShortcutActivityImpl.access$100(this.a).getString(AppLaunchFromShortcutActivityImpl.access$300(this.a, "string", "auth_network_error")));
        }
      }
      while (true)
      {
        AppLaunchFromShortcutActivityImpl.access$200(this.a, "", i);
        return;
        AppLaunchFromShortcutActivityImpl.access$400(this.a, AppLaunchFromShortcutActivityImpl.access$100(this.a).getString(AppLaunchFromShortcutActivityImpl.access$300(this.a, "string", "auth_fail")));
        AppLaunchFromShortcutActivityImpl.access$200(this.a, "", -101);
        return;
        i = -102;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.n
 * JD-Core Version:    0.6.2
 */