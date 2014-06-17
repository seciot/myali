package com.alipay.mobile.framework.service;

import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class ShareService extends ExternalService
{
  public abstract void oneKeyshare(ShareContent paramShareContent, int paramInt, String paramString);

  public abstract void silentShare(ShareContent paramShareContent, int paramInt, String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ShareService
 * JD-Core Version:    0.6.2
 */