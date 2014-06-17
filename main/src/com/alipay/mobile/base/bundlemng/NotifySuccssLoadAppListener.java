package com.alipay.mobile.base.bundlemng;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.mobile.command.listener.AbstractListener;
import com.alipay.mobile.command.manager.RuntimeInfoManager;
import com.alipay.mobile.command.model.ResourceItem;
import com.alipay.mobile.command.model.ResourceMeta;
import com.alipay.mobile.command.util.CommandConfig;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.common.info.AppInfo;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class NotifySuccssLoadAppListener extends AbstractListener<ResourceMeta>
{
  public String desrc()
  {
    return "receiveAppInstall Success Listener";
  }

  public List<String> focusTask()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("WalletUpgrade");
    return localArrayList;
  }

  public boolean isMatch(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.trim().toLowerCase(Locale.getDefault()).equals("success_upapp"));
  }

  public boolean notify(ResourceMeta paramResourceMeta)
  {
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    if (paramResourceMeta != null)
    {
      paramResourceMeta.toString();
      List localList = paramResourceMeta.getItems();
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ResourceItem localResourceItem = (ResourceItem)localIterator.next();
        String str2 = localResourceItem.getDownLoadPath();
        String str3 = localResourceItem.getResourceName();
        switch (a.a[localResourceItem.getApkOpType().ordinal()])
        {
        default:
          break;
        case 1:
        case 2:
          localArrayList1.add(str2 + File.separator + str3);
          break;
        case 3:
          localArrayList2.add(str2 + File.separator + str3);
        }
      }
    }
    try
    {
      Context localContext = CommandConfig.getContext().getApplicationContext();
      Object localObject = localContext.getClass().getDeclaredMethod("getBundleContext", new Class[0]).invoke(localContext, new Object[0]);
      localObject.getClass().getDeclaredMethod("updateBundles", new Class[] { List.class, List.class }).invoke(localObject, new Object[] { localArrayList1, localArrayList2 });
      String str1 = paramResourceMeta.getProductVersion();
      AppInfo.getInstance().setProductVersion(str1);
      RuntimeInfoManager.getInstance().updateProductVersion(str1);
      CommandUtil.delDynamicUpAppSource();
      return false;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while ((localInvocationTargetException.getCause() == null) || (!localInvocationTargetException.getCause().getMessage().contains("dependencies")));
      RuntimeInfoManager.getInstance().updateProductVersion(paramResourceMeta.getProductVersion());
      return false;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public int priority()
  {
    return 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.bundlemng.NotifySuccssLoadAppListener
 * JD-Core Version:    0.6.2
 */