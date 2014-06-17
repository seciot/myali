package com.alipay.android.phone.home.manager;

import android.view.LayoutInflater;
import com.alipay.android.phone.home.app.HomeMoreApp;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.persist.ChannelConfigUtils;
import java.util.Iterator;
import java.util.List;

public class HomeAppsItemAdapter extends BaseAppsItemAdapter
{
  public HomeAppsItemAdapter(LayoutInflater paramLayoutInflater, List<App> paramList)
  {
    super(paramLayoutInflater, paramList);
  }

  public final void a(List<App> paramList)
  {
    this.a.clear();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        App localApp = (App)localIterator.next();
        if ((localApp == null) || (!localApp.isDisplay()) || (ChannelConfigUtils.isBannedApp(localApp.getAppId())))
          localIterator.remove();
      }
      this.a.addAll(paramList);
    }
    this.a.add(HomeMoreApp.a());
    notifyDataSetChanged();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.HomeAppsItemAdapter
 * JD-Core Version:    0.6.2
 */