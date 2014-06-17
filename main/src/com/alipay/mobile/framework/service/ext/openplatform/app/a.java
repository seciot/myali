package com.alipay.mobile.framework.service.ext.openplatform.app;

import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.ext.openplatform.AppIconLoadCallback;

final class a
  implements Runnable
{
  a(App paramApp, AppIconLoadCallback paramAppIconLoadCallback)
  {
  }

  public final void run()
  {
    App.access$100(this.b).startLoad(this.b.getAppId(), App.access$000(this.b), this.b.getIconUrl(), new b(this), -1, -1, new c(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.app.a
 * JD-Core Version:    0.6.2
 */