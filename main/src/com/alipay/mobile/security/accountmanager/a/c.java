package com.alipay.mobile.security.accountmanager.a;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.biz.gw.service.account.PasswordManagerFacade;
import com.alipay.mobilesecurity.biz.gw.service.account.WirelessPasswordManagerFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserCertRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.OpenSimplePwdReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusResp;
import java.lang.reflect.Method;

public class c
{
  public static final String a = c.class.getSimpleName();
  protected RpcService b;
  private MicroApplicationContext c;
  private WirelessPasswordManagerFacade d;
  private LocationInfoService e;
  private PasswordManagerFacade f;

  public c(ActivityApplication paramActivityApplication)
  {
    this.c = paramActivityApplication.getMicroApplicationContext();
    this.b = ((RpcService)this.c.findServiceByInterface(RpcService.class.getName()));
    this.d = ((WirelessPasswordManagerFacade)this.b.getRpcProxy(WirelessPasswordManagerFacade.class));
    this.f = ((PasswordManagerFacade)this.b.getRpcProxy(PasswordManagerFacade.class));
    this.e = ((LocationInfoService)this.c.getExtServiceByInterface(LocationInfoService.class.getName()));
  }

  private void a(OpenSimplePwdReq paramOpenSimplePwdReq, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)this.c.getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
    Tid localTid = new Tid();
    localTid.setClientKey(localMspDeviceInfoBean.getMspkey());
    localTid.setImei(localMspDeviceInfoBean.getImei());
    localTid.setImsi(localMspDeviceInfoBean.getImsi());
    localTid.setTid(localMspDeviceInfoBean.getTid());
    localTid.setVimei(localMspDeviceInfoBean.getVimei());
    localTid.setVimsi(localMspDeviceInfoBean.getVimsi());
    LocationInfo localLocationInfo = this.e.getCacheLocationInfo();
    if (localLocationInfo != null)
      paramOpenSimplePwdReq.setCellID(localLocationInfo.getCellId());
    paramOpenSimplePwdReq.setTid(localTid);
    paramOpenSimplePwdReq.setLoginId(paramString1);
    paramOpenSimplePwdReq.setPrisonBreak(a());
    paramOpenSimplePwdReq.setCode(paramString3);
    paramOpenSimplePwdReq.setBusinessMobileValidateStatus(paramString4);
    paramOpenSimplePwdReq.setPwd(((RSAService)this.c.getExtServiceByInterface(RSAService.class.getName())).RSAEncrypt(paramString2, false));
  }

  private static boolean a()
  {
    try
    {
      Object localObject2 = Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { "ro.secure" });
      localObject1 = localObject2;
      if ((localObject1 != null) && ("1".equals(localObject1)))
        return false;
    }
    catch (Exception localException)
    {
      Object localObject1;
      do
        while (true)
        {
          localException.printStackTrace();
          localObject1 = null;
        }
      while ((localObject1 == null) || (!"0".equals(localObject1)));
    }
    return true;
  }

  public final MobileSecurityResult a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    OpenSimplePwdReq localOpenSimplePwdReq = new OpenSimplePwdReq();
    a(localOpenSimplePwdReq, paramString1, paramString2, paramString3, paramString4);
    new StringBuilder("loginId: ").append(localOpenSimplePwdReq.getLoginId()).append(" sceneCode: ").append(localOpenSimplePwdReq.getCode()).append("smsType: ").append(paramString4).toString();
    return this.d.openSimplePwdNotLogin(localOpenSimplePwdReq);
  }

  public final PreCheckAndSendSmsResp a(String paramString1, String paramString2)
  {
    PreCheckAndSendSmsReq localPreCheckAndSendSmsReq = new PreCheckAndSendSmsReq();
    localPreCheckAndSendSmsReq.setLoginId(paramString1);
    localPreCheckAndSendSmsReq.setSessionId(paramString2);
    localPreCheckAndSendSmsReq.setImageCode(null);
    return this.d.preCheckAndSendSms(localPreCheckAndSendSmsReq);
  }

  public final PreCheckAndSendSmsResp a(String paramString1, String paramString2, String paramString3)
  {
    PreCheckAndSendSmsReq localPreCheckAndSendSmsReq = new PreCheckAndSendSmsReq();
    localPreCheckAndSendSmsReq.setLoginId(paramString1);
    localPreCheckAndSendSmsReq.setSessionId(paramString2);
    localPreCheckAndSendSmsReq.setImageCode(paramString3);
    return this.d.preCheckAndSendSmsNotLogin(localPreCheckAndSendSmsReq);
  }

  public final VerifySmsAndUserStatusResp a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    VerifySmsAndUserStatusReq localVerifySmsAndUserStatusReq = new VerifySmsAndUserStatusReq();
    localVerifySmsAndUserStatusReq.setLoginId(paramString1);
    localVerifySmsAndUserStatusReq.setSmsPwd(paramString2);
    localVerifySmsAndUserStatusReq.setBusinessMobileValidateStatus(paramString3);
    localVerifySmsAndUserStatusReq.setTid(new TidGetter(this.c).getClientTid());
    localVerifySmsAndUserStatusReq.policyCenter = paramBoolean;
    return this.d.verifySmsAndUserStatusNotLogin(localVerifySmsAndUserStatusReq);
  }

  public final MobileSecurityResult b(String paramString1, String paramString2)
  {
    CheckUserCertRequest localCheckUserCertRequest = new CheckUserCertRequest();
    localCheckUserCertRequest.setCertNo(paramString2);
    localCheckUserCertRequest.setLoginId(paramString1);
    return this.f.checkIdentification(localCheckUserCertRequest);
  }

  public final VerifySmsAndUserStatusResp b(String paramString1, String paramString2, String paramString3)
  {
    VerifySmsAndUserStatusReq localVerifySmsAndUserStatusReq = new VerifySmsAndUserStatusReq();
    localVerifySmsAndUserStatusReq.setLoginId(paramString1);
    localVerifySmsAndUserStatusReq.setSmsPwd(paramString2);
    localVerifySmsAndUserStatusReq.setBusinessMobileValidateStatus(paramString3);
    localVerifySmsAndUserStatusReq.setTid(new TidGetter(this.c).getClientTid());
    return this.d.verifySmsAndUserStatus(localVerifySmsAndUserStatusReq);
  }

  public final MobileSecurityResult c(String paramString1, String paramString2, String paramString3)
  {
    OpenSimplePwdReq localOpenSimplePwdReq = new OpenSimplePwdReq();
    a(localOpenSimplePwdReq, paramString1, paramString2, "5310", paramString3);
    new StringBuilder("loginId: ").append(localOpenSimplePwdReq.getLoginId()).append(" sceneCode: ").append(localOpenSimplePwdReq.getCode()).toString();
    return this.d.openSimplePwd(localOpenSimplePwdReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.a.c
 * JD-Core Version:    0.6.2
 */