package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.framework.service.CommonService;

public abstract class ShortLinkService extends CommonService
{
  public abstract void CreateShortLink(String paramString, ShortLinkService.OnShortLinkCreated paramOnShortLinkCreated);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.ShortLinkService
 * JD-Core Version:    0.6.2
 */