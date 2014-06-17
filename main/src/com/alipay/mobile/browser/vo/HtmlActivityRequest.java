package com.alipay.mobile.browser.vo;

import java.io.Serializable;
import java.util.Map;

public class HtmlActivityRequest
  implements Serializable
{
  public static final int CMS_HANDLER = 1;
  public static final int DEFAULT_HANDLER = 0;
  private static final long serialVersionUID = -7351950235978386125L;
  private String cookieDomain;
  private Map<String, String> cookieMap;
  private int handlerType = 0;
  private boolean isNeedLogin;
  private String requestUrl;
  private String title;

  public String getCookieDomain()
  {
    return this.cookieDomain;
  }

  public Map<String, String> getCookieMap()
  {
    return this.cookieMap;
  }

  public int getHandlerType()
  {
    return this.handlerType;
  }

  public String getRequestUrl()
  {
    return this.requestUrl;
  }

  public String getTitle()
  {
    return this.title;
  }

  public boolean isCmsHandlerType()
  {
    return this.handlerType == 1;
  }

  public boolean isNeedLogin()
  {
    return this.isNeedLogin;
  }

  public void setCookieDomain(String paramString)
  {
    this.cookieDomain = paramString;
  }

  public void setCookieMap(Map<String, String> paramMap)
  {
    this.cookieMap = paramMap;
  }

  public void setHandlerType(int paramInt)
  {
    this.handlerType = paramInt;
  }

  public void setNeedLogin(boolean paramBoolean)
  {
    this.isNeedLogin = paramBoolean;
  }

  public void setRequestUrl(String paramString)
  {
    this.requestUrl = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.vo.HtmlActivityRequest
 * JD-Core Version:    0.6.2
 */