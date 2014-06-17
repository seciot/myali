package com.alipay.mobile.security.authcenter.a;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.bean.LoginInputParam;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeManageService;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.alipay.mobileapp.biz.rpc.smscode.vo.VerifySmsAndDeviceReq;
import com.alipay.mobileapp.biz.rpc.smscode.vo.VerifySmsAndDeviceRes;
import com.alipay.mobileapp.biz.rpc.user.MobileUserResult;
import com.alipay.mobileapp.biz.rpc.user.MobileUserServiceFacade;
import com.alipay.mobilesecurity.core.model.Tid;

public final class e
{
  static String a = "LoginBiz";
  protected DeviceService b;
  private MicroApplicationContext c = AlipayApplication.getInstance().getMicroApplicationContext();
  private SmsCodeManageService d;
  private MobileUserServiceFacade e;

  public e()
  {
    RpcService localRpcService = (RpcService)this.c.findServiceByInterface(RpcService.class.getName());
    this.d = ((SmsCodeManageService)localRpcService.getRpcProxy(SmsCodeManageService.class));
    this.e = ((MobileUserServiceFacade)localRpcService.getRpcProxy(MobileUserServiceFacade.class));
    this.b = ((DeviceService)this.c.getExtServiceByInterface(DeviceService.class.getName()));
  }

  public final UserLoginResultBiz a(LoginInputParam paramLoginInputParam)
  {
    return ((LoginService)this.c.getExtServiceByInterface(LoginService.class.getName())).loginWithPWD(paramLoginInputParam);
  }

  public final SmsCodeRes a(String paramString)
  {
    return this.d.sendCheckCode(paramString);
  }

  public final SmsCodeRes a(String paramString1, String paramString2, boolean paramBoolean)
  {
    Tid localTid = new TidGetter(this.c).getClientTid();
    SmsCodeManageService localSmsCodeManageService = this.d;
    String str1 = localTid.getTid();
    if (paramBoolean);
    for (String str2 = "down_auto"; ; str2 = "down_input")
      return localSmsCodeManageService.verifyCheckCode(paramString2, paramString1, str1, str2);
  }

  public final MobileUserResult b(String paramString)
  {
    return this.e.getMobileUserStatus(paramString);
  }

  public final VerifySmsAndDeviceRes c(String paramString)
  {
    Tid localTid = new TidGetter(this.c).getClientTid();
    VerifySmsAndDeviceReq localVerifySmsAndDeviceReq = new VerifySmsAndDeviceReq();
    localVerifySmsAndDeviceReq.longonId = paramString;
    localVerifySmsAndDeviceReq.tid = localTid.getTid();
    return this.d.verifySmsAndDevice(localVerifySmsAndDeviceReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.a.e
 * JD-Core Version:    0.6.2
 */