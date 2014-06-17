package com.alipay.mobile.security.authcenter.a;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobileapp.biz.rpc.register.RegisterService;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdReq;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdRes;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeManageService;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.alipay.mobilesecurity.core.model.Tid;
import java.lang.reflect.Method;

public final class a
{
  protected RpcService a = (RpcService)this.c.findServiceByInterface(RpcService.class.getName());
  protected DeviceService b = (DeviceService)this.c.getExtServiceByInterface(DeviceService.class.getName());
  private MicroApplicationContext c = AlipayApplication.getInstance().getMicroApplicationContext();
  private LocationInfoService d = (LocationInfoService)this.c.getExtServiceByInterface(LocationInfoService.class.getName());
  private SmsCodeManageService e = (SmsCodeManageService)this.a.getRpcProxy(SmsCodeManageService.class);
  private RegisterService f = (RegisterService)this.a.getRpcProxy(RegisterService.class);

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

  public final SmsCodeRes a(String paramString)
  {
    return this.e.sendCheckCode(paramString);
  }

  public final SmsCodeRes a(String paramString1, String paramString2, String paramString3)
  {
    Tid localTid = new TidGetter(this.c).getClientTid();
    return this.e.verifyCheckCode(paramString1, paramString2, localTid.getTid(), paramString3);
  }

  public final SetMobilePayPwdRes b(String paramString1, String paramString2, String paramString3)
  {
    SetMobilePayPwdReq localSetMobilePayPwdReq = new SetMobilePayPwdReq();
    localSetMobilePayPwdReq.setLoginId(paramString1);
    MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)this.c.getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
    localSetMobilePayPwdReq.setTid(localMspDeviceInfoBean.getTid());
    localSetMobilePayPwdReq.setImei(localMspDeviceInfoBean.getImei());
    localSetMobilePayPwdReq.setImsi(localMspDeviceInfoBean.getImsi());
    LocationInfo localLocationInfo = this.d.getCacheLocationInfo();
    if (localLocationInfo != null)
      localSetMobilePayPwdReq.setCellID(localLocationInfo.getCellId());
    localSetMobilePayPwdReq.setPrisonBreak(a());
    localSetMobilePayPwdReq.setPwd(((RSAService)this.c.getExtServiceByInterface(RSAService.class.getName())).RSAEncrypt(paramString2, false));
    localSetMobilePayPwdReq.setBusinessMobileValidateStatus(paramString3);
    return this.f.setMobilePayPwd(localSetMobilePayPwdReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.a.a
 * JD-Core Version:    0.6.2
 */