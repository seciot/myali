package com.alipay.mobile.framework.service.ext;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.MicroService;

public abstract class ExternalService extends MicroService
{
  public final void create(Bundle paramBundle)
  {
    onCreate(paramBundle);
  }

  public final void destroy(Bundle paramBundle)
  {
    getMicroApplicationContext().onDestroyContent(this);
    onDestroy(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.ExternalService
 * JD-Core Version:    0.6.2
 */