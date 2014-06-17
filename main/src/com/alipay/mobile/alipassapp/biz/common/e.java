package com.alipay.mobile.alipassapp.biz.common;

import com.alibaba.fastjson.JSON;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class e
{
  public static String a(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      Map localMap = (Map)JSON.parseObject(paramString, Map.class);
      if (localMap != null)
      {
        Iterator localIterator = localMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localStringBuffer.append(localEntry.getKey()).append("=").append(localEntry.getValue()).append("&");
        }
      }
    }
    catch (Exception localException)
    {
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.e
 * JD-Core Version:    0.6.2
 */