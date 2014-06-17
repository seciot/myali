package com.alipay.mobile.framework.service.common;

import com.alibaba.fastjson.TypeReference;
import com.alipay.mobile.framework.service.CommonService;

public abstract class SecurityCacheService extends CommonService
{
  public abstract <T> T get(String paramString1, String paramString2, TypeReference<T> paramTypeReference);

  public abstract <T> T get(String paramString1, String paramString2, Class<T> paramClass);

  public abstract byte[] getBytes(String paramString1, String paramString2);

  public abstract String getString(String paramString1, String paramString2);

  public abstract void remove(String paramString);

  public abstract void set(String paramString1, String paramString2, Object paramObject);

  public abstract void set(String paramString1, String paramString2, String paramString3, Object paramObject, long paramLong1, long paramLong2, String paramString4);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.SecurityCacheService
 * JD-Core Version:    0.6.2
 */