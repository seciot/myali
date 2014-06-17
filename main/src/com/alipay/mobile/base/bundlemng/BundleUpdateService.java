package com.alipay.mobile.base.bundlemng;

import android.os.Bundle;
import com.alipay.mobile.command.manager.RuntimeInfoManager;
import com.alipay.mobile.command.util.CommandConfig;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.ExternalService;
import java.lang.reflect.Method;

public class BundleUpdateService extends ExternalService
{
  protected void onCreate(Bundle paramBundle)
  {
    try
    {
      CommandConfig.initial(getMicroApplicationContext().getApplicationContext());
      String str1 = AppInfo.getInstance().getmChannels();
      RuntimeInfoManager.getInstance().updateChannel(str1);
      String str2 = AppInfo.getInstance().getmProductVersion();
      RuntimeInfoManager.getInstance().updateProductVersion(str2);
      String str3 = AppInfo.getInstance().getProductID();
      RuntimeInfoManager.getInstance().updateProductId(str3);
      ClassLoader localClassLoader = getMicroApplicationContext().getApplicationContext().getClass().getClassLoader();
      Class localClass1 = localClassLoader.loadClass("com.alipay.mobile.command.manager.ListenerManager");
      Class localClass2 = localClassLoader.loadClass("com.alipay.mobile.command.listener.NotifyListener");
      Class localClass3 = localClassLoader.loadClass("com.alipay.mobile.base.bundlemng.NotifySuccssLoadAppListener");
      Method localMethod = localClass1.getDeclaredMethod("registerListener", new Class[] { localClass2 });
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localClass3.newInstance();
      localMethod.invoke(null, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.bundlemng.BundleUpdateService
 * JD-Core Version:    0.6.2
 */