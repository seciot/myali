package com.alipay.mobile.browser.handler;

import android.webkit.WebView;
import com.alipay.mobile.browser.HtmlActivityV2;
import com.alipay.mobile.browser.vo.HtmlActivityRequest;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class HtmlActivityHandler
{
  public static final int BROKER = 1;
  public static final int CONTINUE;
  private transient ActivityApplication a;
  private transient AuthService b;
  private transient HtmlActivityV2 c;
  private transient HtmlActivityRequest d;
  private MicroApplicationContext e;

  public void afterInit()
  {
  }

  public void beforeInit()
  {
  }

  public String callBackProccessRequestUrl(String paramString)
  {
    return paramString;
  }

  public int callBackWhenURLLoding(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString)
  {
    return 0;
  }

  public boolean doLogin()
  {
    try
    {
      if (!this.b.rpcAuth())
        return false;
      UserInfo localUserInfo = this.b.getUserInfo();
      StringBuilder localStringBuilder = new StringBuilder();
      if (localUserInfo != null)
      {
        localStringBuilder.append("logonId=[" + localUserInfo.getLogonId() + "]");
        localStringBuilder.append("userId=" + localUserInfo.getUserId() + "]");
        localStringBuilder.append("sessionId=[" + localUserInfo.getSessionId() + "]");
        localStringBuilder.append("autoLogin=[" + localUserInfo.isAutoLogin() + "]");
        localStringBuilder.append("taobaoSid=[" + localUserInfo.getTaobaoSid() + "]");
        localStringBuilder.append("extern_token=[" + localUserInfo.getExtern_token() + "]");
      }
      new StringBuilder("Login Finish. userInfo=[").append(localStringBuilder.toString()).append("]").toString();
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public AuthService getAuthService()
  {
    if (this.a == null)
      return null;
    if (this.b == null)
      this.b = ((AuthService)this.a.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    return this.b;
  }

  public String getCookieDomain()
  {
    return this.d.getCookieDomain();
  }

  public HtmlActivityV2 getHtmlActivityV2()
  {
    return this.c;
  }

  public MicroApplicationContext getMicroApplicationContext()
  {
    return this.e;
  }

  public HtmlActivityRequest getRequest()
  {
    return this.d;
  }

  public String getRequestCookies()
  {
    Map localMap = this.d.getCookieMap();
    if ((localMap == null) || (localMap.isEmpty()))
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = localMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append((String)localEntry.getKey() + "=" + (String)localEntry.getValue() + ";");
    }
    return localStringBuilder.toString();
  }

  public String getRequestUrl()
  {
    return callBackProccessRequestUrl(this.d.getRequestUrl());
  }

  public String getSessionId()
  {
    if (!isLogin())
      return "";
    return this.b.getUserInfo().getSessionId();
  }

  public UserInfo getUserInfo()
  {
    if (isLogin())
      return getAuthService().getUserInfo();
    return null;
  }

  public ActivityApplication getmApp()
  {
    return this.a;
  }

  public boolean init()
  {
    try
    {
      beforeInit();
      if (this.a == null)
        return false;
      if ((this.c != null) && (this.d != null))
      {
        this.e = this.a.getMicroApplicationContext();
        this.b = getAuthService();
        afterInit();
        return true;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public boolean isLogin()
  {
    return this.b.isLogin();
  }

  public boolean isNeedLogin()
  {
    return this.d.isNeedLogin();
  }

  public void setHtmlActivityV2(HtmlActivityV2 paramHtmlActivityV2)
  {
    this.c = paramHtmlActivityV2;
  }

  public void setRequest(HtmlActivityRequest paramHtmlActivityRequest)
  {
    this.d = paramHtmlActivityRequest;
  }

  public void setmApp(ActivityApplication paramActivityApplication)
  {
    this.a = paramActivityApplication;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.handler.HtmlActivityHandler
 * JD-Core Version:    0.6.2
 */