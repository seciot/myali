package com.alipay.mobile.framework.service.ext.openplatform.service;

import android.content.Context;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobileapp.core.model.app.MobileAppAuthStatusVO;

public abstract class ThirdPartyAuthorizeService extends ExternalService
{
  public abstract void authSign(String paramString1, String paramString2, MobileAppAuthStatusVO paramMobileAppAuthStatusVO, AuthorizeCallback paramAuthorizeCallback, String paramString3);

  public abstract void authSignFromDeskTop(String paramString1, String paramString2, MobileAppAuthStatusVO paramMobileAppAuthStatusVO, AuthorizeCallback paramAuthorizeCallback, Context paramContext);

  public abstract MobileAppAuthStatusVO getAuthStatus(String paramString1, String paramString2, String paramString3);

  public abstract MobileAppAuthStatusVO getAuthStatusValidTid(String paramString1, String paramString2, String paramString3);

  public abstract boolean isSigned(String paramString1, String paramString2);

  public abstract void notifyUnlockAuthorizationApp(boolean paramBoolean1, boolean paramBoolean2, String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.service.ThirdPartyAuthorizeService
 * JD-Core Version:    0.6.2
 */