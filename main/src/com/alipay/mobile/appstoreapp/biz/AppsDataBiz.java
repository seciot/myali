package com.alipay.mobile.appstoreapp.biz;

import com.alipay.mobile.appstoreapp.common.Page;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

public abstract interface AppsDataBiz
{
  public abstract Page<App> a(int paramInt1, int paramInt2);

  public abstract App a(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.biz.AppsDataBiz
 * JD-Core Version:    0.6.2
 */