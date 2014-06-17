package com.alipay.mobile.browser.handler;

import android.support.v4.util.LruCache;

public class HtmlActivityHandlerRegister
{
  private static HtmlActivityHandlerRegister b;
  private LruCache<String, HtmlActivityHandler> a = new LruCache(10);

  private static final HtmlActivityHandlerRegister a()
  {
    try
    {
      if (b == null)
        b = new HtmlActivityHandlerRegister();
      HtmlActivityHandlerRegister localHtmlActivityHandlerRegister = b;
      return localHtmlActivityHandlerRegister;
    }
    finally
    {
    }
  }

  public static final HtmlActivityHandlerRegister getInstance()
  {
    if (b == null)
      a();
    return b;
  }

  public HtmlActivityHandler getHandler(String paramString)
  {
    return (HtmlActivityHandler)this.a.get(paramString);
  }

  public String registerHandler(HtmlActivityHandler paramHtmlActivityHandler)
  {
    if (paramHtmlActivityHandler == null)
      return "";
    String str = paramHtmlActivityHandler.getClass().getName();
    this.a.put(str, paramHtmlActivityHandler);
    return str;
  }

  public HtmlActivityHandler unRegisterHandler(String paramString)
  {
    return (HtmlActivityHandler)this.a.remove(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.handler.HtmlActivityHandlerRegister
 * JD-Core Version:    0.6.2
 */