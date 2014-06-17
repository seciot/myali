package com.alipay.android.widget.security.a;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.biz.gw.service.sms.SmsManagerFacade;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.mainpage.password.SendSmsReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.SendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeResp;

public final class e
{
  private SmsManagerFacade a = (SmsManagerFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SmsManagerFacade.class);
  private DeviceService b = (DeviceService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName());

  private Tid a()
  {
    Tid localTid = new Tid();
    if (this.b != null)
    {
      MspDeviceInfoBean localMspDeviceInfoBean = this.b.queryCertification();
      if ((localMspDeviceInfoBean != null) && (localMspDeviceInfoBean.getTid() != null))
      {
        localTid.setClientKey(localMspDeviceInfoBean.getMspkey());
        localTid.setImei(localMspDeviceInfoBean.getImei());
        localTid.setImsi(localMspDeviceInfoBean.getImsi());
        localTid.setTid(localMspDeviceInfoBean.getTid());
        localTid.setVimei(localMspDeviceInfoBean.getVimei());
        localTid.setVimsi(localMspDeviceInfoBean.getVimsi());
      }
    }
    return localTid;
  }

  public final SendSmsResp a(String paramString)
  {
    SendSmsReq localSendSmsReq = new SendSmsReq();
    localSendSmsReq.loginId = paramString;
    localSendSmsReq.tid = a();
    return this.a.sendSms(localSendSmsReq);
  }

  public final VerifyAuthCodeResp a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    VerifyAuthCodeReq localVerifyAuthCodeReq = new VerifyAuthCodeReq();
    localVerifyAuthCodeReq.phone = paramString2;
    localVerifyAuthCodeReq.code = paramString3;
    localVerifyAuthCodeReq.tid = a();
    localVerifyAuthCodeReq.loginId = paramString1;
    localVerifyAuthCodeReq.businessMobileValidateStatus = paramString4;
    return this.a.verifyAuthCode(localVerifyAuthCodeReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.a.e
 * JD-Core Version:    0.6.2
 */