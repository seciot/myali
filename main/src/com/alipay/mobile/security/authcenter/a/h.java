package com.alipay.mobile.security.authcenter.a;

import android.os.Bundle;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.framework.service.ext.security.domain.TaobaoSsoLoginToken;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSsoLoginUtils;

public final class h extends d
{
  private String d = null;

  public h(ActivityApplication paramActivityApplication, Bundle paramBundle)
  {
    this.b = paramActivityApplication;
    this.a = AlipayApplication.getInstance();
    this.c = paramBundle;
    if (this.c != null)
      this.d = this.c.getString("ssoChannelId");
  }

  public final UserLoginResultBiz a()
  {
    if (!TaobaoSsoLoginUtils.parseTaobaoSsoToken(this.a))
      return null;
    String str1 = DeviceInfo.getInstance().getImei();
    String str2 = DeviceInfo.getInstance().getImsi();
    String str3 = DeviceInfo.getInstance().getmDid();
    String str4 = TaobaoSsoLoginUtils.getParsedNickName();
    String str5 = TaobaoSsoLoginUtils.getParsedSsoToken();
    String str6 = TaobaoSsoLoginUtils.obtainTaobaoDeviceId(str3, this.a);
    long l = TaobaoSsoLoginUtils.syncTimeStamp();
    String str7 = TaobaoSsoLoginUtils.createSecSign(str5, str6, l, str1, str2, this.a);
    TaobaoSsoLoginToken localTaobaoSsoLoginToken = new TaobaoSsoLoginToken();
    localTaobaoSsoLoginToken.setNickName(str4);
    localTaobaoSsoLoginToken.setSsoToken(str5);
    localTaobaoSsoLoginToken.setTaobaoDeviceId(str6);
    localTaobaoSsoLoginToken.setTimeStamp(l);
    localTaobaoSsoLoginToken.setSecSign(str7);
    localTaobaoSsoLoginToken.setSsoChannelId(this.d);
    localTaobaoSsoLoginToken.setAutoImport(false);
    return ((LoginService)this.b.getMicroApplicationContext().getExtServiceByInterface(LoginService.class.getName())).taobaoSsoTokenLogin(localTaobaoSsoLoginToken);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.a.h
 * JD-Core Version:    0.6.2
 */