package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.framework.service.CommonService;

public abstract class GenericMemCacheService extends CommonService
{
  public abstract Object get(String paramString1, String paramString2);

  public abstract void put(String paramString1, String paramString2, String paramString3, Object paramObject);

  public abstract Object remove(String paramString);

  public abstract void removeByGroup(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.GenericMemCacheService
 * JD-Core Version:    0.6.2
 */