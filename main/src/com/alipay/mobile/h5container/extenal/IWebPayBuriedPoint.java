package com.alipay.mobile.h5container.extenal;

import java.util.HashMap;

public abstract interface IWebPayBuriedPoint
{
  public abstract void wapSafePayFinish(String paramString, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2);

  public abstract void wapSafePayStart(String paramString, HashMap<String, String> paramHashMap);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.h5container.extenal.IWebPayBuriedPoint
 * JD-Core Version:    0.6.2
 */