package com.alipay.mobile.framework.service.common;

import android.net.Uri;
import com.alipay.mobile.framework.service.CommonService;

public abstract class SchemeService extends CommonService
{
  public abstract void cleanTagId();

  public abstract void extractTagId(Uri paramUri);

  public abstract String getAppId(Uri paramUri);

  public abstract String getLastScheme();

  public abstract String getLastTagId();

  public abstract String getTagByAppId(String paramString);

  public abstract int process(Uri paramUri);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.SchemeService
 * JD-Core Version:    0.6.2
 */