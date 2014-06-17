package com.alipay.mobile.framework.service;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;

public abstract class CommonService extends MicroService
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
 * Qualified Name:     com.alipay.mobile.framework.service.CommonService
 * JD-Core Version:    0.6.2
 */