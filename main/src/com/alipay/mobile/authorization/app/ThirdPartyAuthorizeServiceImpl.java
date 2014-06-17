package com.alipay.mobile.authorization.app;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.authorization.ui.AuthorizationActivity;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeException;
import com.alipay.mobile.framework.service.ext.openplatform.service.ThirdPartyAuthorizeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobileapp.biz.rpc.appauth.facade.GetAuthStatusReq;
import com.alipay.mobileapp.biz.rpc.appauth.facade.GetAuthStatusRes;
import com.alipay.mobileapp.biz.rpc.appauth.facade.MobileAppAuthServiceFacade;
import com.alipay.mobileapp.core.model.app.MobileAppAuthStatusVO;

public class ThirdPartyAuthorizeServiceImpl extends ThirdPartyAuthorizeService
{
  private MobileAppAuthServiceFacade a;
  private AuthService b;
  private Object c = new Object();
  private AuthorizationContext d;

  private static MobileAppAuthStatusVO a(GetAuthStatusRes paramGetAuthStatusRes)
  {
    MobileAppAuthStatusVO localMobileAppAuthStatusVO = new MobileAppAuthStatusVO();
    localMobileAppAuthStatusVO.setAgreementDesc(paramGetAuthStatusRes.getAgreementDesc());
    localMobileAppAuthStatusVO.setAgreementUrl(paramGetAuthStatusRes.getAgreementUrl());
    localMobileAppAuthStatusVO.setAuthCode(paramGetAuthStatusRes.getAuthCode());
    localMobileAppAuthStatusVO.setSignStatus(paramGetAuthStatusRes.isSignStatus());
    localMobileAppAuthStatusVO.setResultCode(paramGetAuthStatusRes.getResultStatus());
    return localMobileAppAuthStatusVO;
  }

  // ERROR //
  private static void a(Object paramObject, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 68	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 70
    //   8: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_1
    //   12: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: pop
    //   19: aload_0
    //   20: invokevirtual 82	java/lang/Object:wait	()V
    //   23: new 68	java/lang/StringBuilder
    //   26: dup
    //   27: ldc 84
    //   29: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_1
    //   33: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: pop
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: astore_3
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_3
    //   47: athrow
    //   48: astore_2
    //   49: goto -9 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   2	40	43	finally
    //   40	42	43	finally
    //   2	40	48	java/lang/InterruptedException
  }

  private void a(String paramString)
  {
    if (!this.b.isLogin())
      throw new AuthorizeException(1, "用户名不匹配");
    if (!paramString.equals(this.b.getUserInfo().getUserId()))
      throw new AuthorizeException(0, "用户名不匹配");
  }

  public void authSign(String paramString1, String paramString2, MobileAppAuthStatusVO paramMobileAppAuthStatusVO, AuthorizeCallback paramAuthorizeCallback, String paramString3)
  {
    a(paramString2);
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    this.d = new AuthorizationContext();
    Bundle localBundle = new Bundle();
    localBundle.putString("appId", paramString1);
    localBundle.putString("protocol_url", paramMobileAppAuthStatusVO.getAgreementUrl());
    localBundle.putString("authType", paramString3);
    try
    {
      localMicroApplicationContext.startApp(null, "10000112", localBundle);
      a(this.c, "authorization_lock");
      if (this.d.a())
      {
        paramAuthorizeCallback.onAuthSuccess(paramString2, this.d.c());
        return;
      }
      if (this.d.b())
      {
        paramAuthorizeCallback.onUserCancel();
        return;
      }
    }
    catch (AppLoadException localAppLoadException)
    {
      paramAuthorizeCallback.onAuthFailed();
      return;
    }
    paramAuthorizeCallback.onAuthFailed();
  }

  public void authSignFromDeskTop(String paramString1, String paramString2, MobileAppAuthStatusVO paramMobileAppAuthStatusVO, AuthorizeCallback paramAuthorizeCallback, Context paramContext)
  {
    this.d = new AuthorizationContext();
    try
    {
      Intent localIntent = new Intent(paramContext, AuthorizationActivity.class);
      localIntent.putExtra("appId", paramString1);
      localIntent.putExtra("userId", paramString2);
      localIntent.putExtra("fromDesktop", true);
      localIntent.putExtra("protocol_url", paramMobileAppAuthStatusVO.getAgreementUrl());
      paramContext.startActivity(localIntent);
      a(this.c, "authorization_lock");
      if (this.d.a())
      {
        paramAuthorizeCallback.onAuthSuccess(paramString2, this.d.c());
        return;
      }
      if (this.d.b())
      {
        paramAuthorizeCallback.onUserCancel();
        return;
      }
      paramAuthorizeCallback.onAuthFailed();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public MobileAppAuthStatusVO getAuthStatus(String paramString1, String paramString2, String paramString3)
  {
    a(paramString2);
    GetAuthStatusReq localGetAuthStatusReq = new GetAuthStatusReq();
    localGetAuthStatusReq.setAppId(paramString1);
    localGetAuthStatusReq.setUserId(paramString2);
    localGetAuthStatusReq.setPlatform("Android");
    localGetAuthStatusReq.setAuthType(paramString3);
    return a(this.a.getAuthStatus(localGetAuthStatusReq));
  }

  public MobileAppAuthStatusVO getAuthStatusValidTid(String paramString1, String paramString2, String paramString3)
  {
    GetAuthStatusReq localGetAuthStatusReq = new GetAuthStatusReq();
    localGetAuthStatusReq.setAppId(paramString2);
    localGetAuthStatusReq.setUserId(paramString1);
    localGetAuthStatusReq.setTid(paramString3);
    localGetAuthStatusReq.setPlatform("Android");
    GetAuthStatusRes localGetAuthStatusRes = this.a.getAuthStatusValidTid(localGetAuthStatusReq);
    if (localGetAuthStatusRes.getResultStatus() == 1006)
    {
      localGetAuthStatusReq.setTid(((DeviceService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryCertification().getTid());
      localGetAuthStatusRes = this.a.getAuthStatusValidTid(localGetAuthStatusReq);
    }
    return a(localGetAuthStatusRes);
  }

  public boolean isSigned(String paramString1, String paramString2)
  {
    return false;
  }

  public void notifyUnlockAuthorizationApp(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    try
    {
      synchronized (this.c)
      {
        if (this.d != null)
        {
          this.d.a(paramBoolean1);
          this.d.b(paramBoolean2);
          this.d.a(paramString);
        }
        this.c.notifyAll();
        label47: return;
      }
    }
    catch (Exception localException)
    {
      break label47;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    this.a = ((MobileAppAuthServiceFacade)((RpcService)localMicroApplicationContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileAppAuthServiceFacade.class));
    this.b = ((AuthService)localMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName()));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.app.ThirdPartyAuthorizeServiceImpl
 * JD-Core Version:    0.6.2
 */