package com.alipay.android.phone.home.manager;

import com.alipay.android.phone.openplatform.R.string;
import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;
import java.util.HashMap;

final class d
  implements AuthorizeCallback
{
  d(AppCenterOnItemLongClickListener paramAppCenterOnItemLongClickListener, App paramApp)
  {
  }

  public final void onAuthFailed()
  {
    AppUtils.showToastCenter(R.string.BundlesManager);
  }

  public final void onAuthSuccess(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    if (paramString1 != null)
      localHashMap.put("userId", paramString1);
    this.a.addToDesktop(localHashMap);
  }

  public final void onNotNeedAuth()
  {
    this.a.addToDesktop(null);
  }

  public final void onUserCancel()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.d
 * JD-Core Version:    0.6.2
 */