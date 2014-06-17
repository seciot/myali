package com.alipay.android.widget.security.a;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.biz.gw.service.account.PasswordManagerFacade;
import com.alipay.mobilesecurity.biz.gw.service.account.WirelessPasswordManagerFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.common.service.model.req.ValidatePasswordRequest;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.mainpage.password.CloseSimplePwdReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.OpenSimplePwdReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.QuerySimplePwdStatusReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.QuerySimplePwdStatusResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.SimplePwdPreCheckReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.SimplePwdPreCheckResp;
import java.lang.reflect.Method;

public final class d
{
  protected RpcService a;
  private MicroApplicationContext b;
  private PasswordManagerFacade c;
  private LocationInfoService d;
  private WirelessPasswordManagerFacade e;

  public d(ActivityApplication paramActivityApplication)
  {
    this.b = paramActivityApplication.getMicroApplicationContext();
    this.a = ((RpcService)this.b.findServiceByInterface(RpcService.class.getName()));
    this.c = ((PasswordManagerFacade)this.a.getRpcProxy(PasswordManagerFacade.class));
    this.d = ((LocationInfoService)this.b.getExtServiceByInterface(LocationInfoService.class.getName()));
    this.e = ((WirelessPasswordManagerFacade)this.a.getRpcProxy(WirelessPasswordManagerFacade.class));
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

  public final MobileSecurityResult a(String paramString1, String paramString2)
  {
    CloseSimplePwdReq localCloseSimplePwdReq = new CloseSimplePwdReq();
    localCloseSimplePwdReq.setPwd(((RSAService)this.b.getExtServiceByInterface(RSAService.class.getName())).RSAEncrypt(paramString1, false));
    localCloseSimplePwdReq.setUserId(paramString2);
    return this.c.closeSimplePwd(localCloseSimplePwdReq);
  }

  public final MobileSecurityResult a(String paramString1, String paramString2, boolean paramBoolean)
  {
    MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)this.b.getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
    Tid localTid = new Tid();
    localTid.setClientKey(localMspDeviceInfoBean.getMspkey());
    localTid.setImei(localMspDeviceInfoBean.getImei());
    localTid.setImsi(localMspDeviceInfoBean.getImsi());
    localTid.setTid(localMspDeviceInfoBean.getTid());
    localTid.setVimei(localMspDeviceInfoBean.getVimei());
    localTid.setVimsi(localMspDeviceInfoBean.getVimsi());
    OpenSimplePwdReq localOpenSimplePwdReq = new OpenSimplePwdReq();
    LocationInfo localLocationInfo = this.d.getCacheLocationInfo();
    if (localLocationInfo != null)
      localOpenSimplePwdReq.setCellID(localLocationInfo.getCellId());
    localOpenSimplePwdReq.setTid(localTid);
    localOpenSimplePwdReq.setLoginId(paramString2);
    localOpenSimplePwdReq.setPrisonBreak(a());
    localOpenSimplePwdReq.setResetPwd(paramBoolean);
    localOpenSimplePwdReq.smsAuth = true;
    localOpenSimplePwdReq.setPwd(((RSAService)this.b.getExtServiceByInterface(RSAService.class.getName())).RSAEncrypt(paramString1, false));
    return this.c.openSimplePwd(localOpenSimplePwdReq);
  }

  public final QuerySimplePwdStatusResp a(String paramString)
  {
    QuerySimplePwdStatusReq localQuerySimplePwdStatusReq = new QuerySimplePwdStatusReq();
    localQuerySimplePwdStatusReq.setUserId(paramString);
    return this.c.querySimplePwdStatus(localQuerySimplePwdStatusReq);
  }

  public final void a(PhoneCashierCallback paramPhoneCashierCallback)
  {
    PhoneCashierOrder localPhoneCashierOrder = new PhoneCashierOrder();
    localPhoneCashierOrder.setBizType("prepay_initial");
    localPhoneCashierOrder.setBizSubType("");
    localPhoneCashierOrder.setOrderNo("");
    ((PhoneCashierServcie)this.b.getExtServiceByInterface(PhoneCashierServcie.class.getName())).bootToCertification(localPhoneCashierOrder, paramPhoneCashierCallback);
  }

  public final MobileSecurityResult b(String paramString1, String paramString2)
  {
    ValidatePasswordRequest localValidatePasswordRequest = new ValidatePasswordRequest();
    localValidatePasswordRequest.setLoginId(paramString1);
    localValidatePasswordRequest.setPassword(((RSAService)this.b.getExtServiceByInterface(RSAService.class.getName())).RSAEncrypt(paramString2, false));
    localValidatePasswordRequest.setPasswordType("simple");
    return this.e.validateSimplePassword(localValidatePasswordRequest);
  }

  public final SimplePwdPreCheckResp b(String paramString)
  {
    MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)this.b.getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
    SimplePwdPreCheckReq localSimplePwdPreCheckReq = new SimplePwdPreCheckReq();
    localSimplePwdPreCheckReq.loginId = paramString;
    Tid localTid = new Tid();
    localTid.setClientKey(localMspDeviceInfoBean.getMspkey());
    localTid.setImei(localMspDeviceInfoBean.getImei());
    localTid.setImsi(localMspDeviceInfoBean.getImsi());
    localTid.setTid(localMspDeviceInfoBean.getTid());
    localTid.setVimei(localMspDeviceInfoBean.getVimei());
    localTid.setVimsi(localMspDeviceInfoBean.getVimsi());
    localSimplePwdPreCheckReq.tid = localTid;
    localSimplePwdPreCheckReq.smsAuth = true;
    return this.c.preOpenSimplePwd(localSimplePwdPreCheckReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.a.d
 * JD-Core Version:    0.6.2
 */