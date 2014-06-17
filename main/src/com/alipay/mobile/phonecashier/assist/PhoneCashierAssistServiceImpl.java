package com.alipay.mobile.phonecashier.assist;

import android.app.Activity;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.QihooGuardService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.scan.ScanRequest;
import com.alipay.mobile.scan.ScanRequest.ScanType;
import com.alipay.mobile.scan.ScanService;

public class PhoneCashierAssistServiceImpl extends PhoneCashierAssistService
{
  public String getUserInfoSessionId()
  {
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.isLogin())
    {
      UserInfo localUserInfo = localAuthService.getUserInfo();
      if (localUserInfo != null)
        return localUserInfo.getExtern_token();
    }
    return "";
  }

  public boolean isQihooGuardOpened()
  {
    return QihooGuardService.isQihooGuardOpened();
  }

  public boolean isQihooInstalled()
  {
    return QihooGuardService.isQihooInstalled();
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void readBankCard(Object paramObject, Activity paramActivity)
  {
    Activity localActivity = AlipayApplication.getInstance().getMicroApplicationContext().updateActivity(paramActivity);
    ((ScanService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ScanService.class.getName())).scan(new ScanRequest().setScanType(ScanRequest.ScanType.CARD).setSourceId(""), new a(this, localActivity, paramObject));
  }

  public String readQihooSMS()
  {
    return QihooGuardService.readQihooSMS();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.assist.PhoneCashierAssistServiceImpl
 * JD-Core Version:    0.6.2
 */