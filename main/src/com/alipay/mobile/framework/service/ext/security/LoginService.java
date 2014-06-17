package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.bean.LoginInputParam;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.framework.service.ext.security.domain.TaobaoSsoLoginToken;
import com.alipay.mobile.framework.service.ext.security.domain.WapLoginToken;

public abstract class LoginService extends ExternalService
{
  public abstract void autoLogin(LoginCallBack paramLoginCallBack);

  public abstract UserLoginResultBiz login(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5);

  public abstract UserLoginResultBiz loginWithPWD(LoginInputParam paramLoginInputParam);

  public abstract UserLoginResultBiz taobaoSsoTokenLogin(TaobaoSsoLoginToken paramTaobaoSsoLoginToken);

  public abstract UserLoginResultBiz wapTokenLogin(WapLoginToken paramWapLoginToken);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.LoginService
 * JD-Core Version:    0.6.2
 */