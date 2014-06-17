package com.alipay.mobile.security.authcenter.a;

import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobileapp.biz.rpc.register.RegisterService;
import com.alipay.mobileapp.biz.rpc.register.vo.RegisterPcToMobileReq;
import com.alipay.mobileapp.biz.rpc.register.vo.RegisterPcToMobileRes;
import com.alipay.mobileapp.biz.rpc.register.vo.SendSmsCodeReq;
import com.alipay.mobileapp.biz.rpc.register.vo.SendSmsCodeRes;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdReq;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdRes;
import com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckReq;
import com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckRes;

public class f
{
  private final String a = f.class.getSimpleName();
  private RegisterService b = (RegisterService)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(RegisterService.class);
  private LocationInfoService c = (LocationInfoService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(LocationInfoService.class.getName());
  private DeviceService d = (DeviceService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName());

  private String c(String paramString)
  {
    RSAService localRSAService = (RSAService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
    if ((paramString != null) && (!"".equals(paramString)))
      try
      {
        String str = localRSAService.RSAEncrypt(paramString, false);
        return str;
      }
      catch (RuntimeException localRuntimeException)
      {
      }
    return null;
  }

  public final SendSmsCodeRes a(String paramString)
  {
    SendSmsCodeReq localSendSmsCodeReq = new SendSmsCodeReq();
    localSendSmsCodeReq.setMobileNo(paramString);
    return this.b.sendSmsRegistCode(localSendSmsCodeReq);
  }

  public final SetMobilePayPwdRes a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str1 = c(paramString2);
    SetMobilePayPwdReq localSetMobilePayPwdReq = new SetMobilePayPwdReq();
    MspDeviceInfoBean localMspDeviceInfoBean = this.d.queryCertification();
    localSetMobilePayPwdReq.setLoginId(paramString1);
    String str2;
    String str3;
    if (localMspDeviceInfoBean != null)
    {
      str2 = localMspDeviceInfoBean.getTid();
      localSetMobilePayPwdReq.setTid(str2);
      localSetMobilePayPwdReq.setPwd(str1);
      localSetMobilePayPwdReq.setRegid(paramString3);
      localSetMobilePayPwdReq.setBusinessMobileValidateStatus(paramString4);
      localSetMobilePayPwdReq.setCellID(this.c.getCacheLocationInfo().getCellId());
      if (localMspDeviceInfoBean == null)
        break label153;
      str3 = localMspDeviceInfoBean.getImei();
      label97: localSetMobilePayPwdReq.setImei(str3);
      if (localMspDeviceInfoBean == null)
        break label160;
    }
    label153: label160: for (String str4 = localMspDeviceInfoBean.getImsi(); ; str4 = "")
    {
      localSetMobilePayPwdReq.setImsi(str4);
      localSetMobilePayPwdReq.setPrisonBreak(DeviceInfo.getInstance().ismRooted());
      return this.b.setMobilePayPwd(localSetMobilePayPwdReq);
      str2 = "";
      break;
      str3 = "";
      break label97;
    }
  }

  public final VerifyCheckRes a(String paramString1, String paramString2, String paramString3)
  {
    VerifyCheckReq localVerifyCheckReq = new VerifyCheckReq();
    localVerifyCheckReq.mobileNo = paramString1;
    localVerifyCheckReq.checkCode = paramString2;
    MspDeviceInfoBean localMspDeviceInfoBean = this.d.queryCertification();
    if (localMspDeviceInfoBean != null);
    for (String str = localMspDeviceInfoBean.getTid(); ; str = "")
    {
      localVerifyCheckReq.tid = str;
      localVerifyCheckReq.smsVerifyType = paramString3;
      return this.b.verifyRegistCode(localVerifyCheckReq);
    }
  }

  public final RegisterPcToMobileRes b(String paramString)
  {
    RegisterPcToMobileReq localRegisterPcToMobileReq = new RegisterPcToMobileReq();
    localRegisterPcToMobileReq.setRegId(paramString);
    return this.b.getMemerProdSyncStatus(localRegisterPcToMobileReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.a.f
 * JD-Core Version:    0.6.2
 */