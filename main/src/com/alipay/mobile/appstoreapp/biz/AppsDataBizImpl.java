package com.alipay.mobile.appstoreapp.biz;

import com.alipay.mobile.appstoreapp.common.Page;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import java.util.ArrayList;
import java.util.List;

public class AppsDataBizImpl
  implements AppsDataBiz
{
  AppManageService a;
  private ActivityApplication b;

  public AppsDataBizImpl(ActivityApplication paramActivityApplication, AppManageService paramAppManageService)
  {
    this.b = paramActivityApplication;
    this.a = paramAppManageService;
  }

  public final Page<App> a(int paramInt1, int paramInt2)
  {
    List localList = this.a.getAppsByPage(paramInt1, paramInt2);
    if (localList != null)
      return new Page(localList);
    return new Page(new ArrayList());
  }

  public final App a(String paramString)
  {
    return this.a.getAppById(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.biz.AppsDataBizImpl
 * JD-Core Version:    0.6.2
 */