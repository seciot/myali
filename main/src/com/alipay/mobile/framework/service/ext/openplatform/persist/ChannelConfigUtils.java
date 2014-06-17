package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.util.ArrayList;
import java.util.List;

public class ChannelConfigUtils
{
  private static List<String> hideAppList;
  private static ChannelConfig mChannelConfig = (ChannelConfig)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ChannelConfig.class.getName());

  static
  {
    hideAppList = new ArrayList();
    String str1 = mChannelConfig.getConfig("hideApp");
    if ((str1 != null) && (!str1.equals("")))
      for (String str2 : str1.split(","))
        if (!str2.equals(""))
          hideAppList.add(str2);
  }

  public static final List<String> getBannedAppList()
  {
    return hideAppList;
  }

  public static final boolean isBannedApp(String paramString)
  {
    return hideAppList.contains(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.ChannelConfigUtils
 * JD-Core Version:    0.6.2
 */