package com.alipay.mobile.security.securitycommon;

import android.content.Context;
import com.alipay.mobile.a.a.b;
import com.alipay.mobile.a.a.c;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;

public class OldDataTransferUtil
{
  private static OldDataTransferUtil a;

  public static OldDataTransferUtil a()
  {
    try
    {
      if (a == null)
        a = new OldDataTransferUtil();
      OldDataTransferUtil localOldDataTransferUtil = a;
      return localOldDataTransferUtil;
    }
    finally
    {
    }
  }

  public static boolean b()
  {
    CacheSet localCacheSet = CacheSet.getInstance(AlipayApplication.getInstance());
    if (localCacheSet.getBoolean("isNeedOldDataToNewTable", true))
    {
      SecurityDbHelper localSecurityDbHelper = SecurityDbHelper.getInstance(AlipayApplication.getInstance());
      b localb = new b(AlipayApplication.getInstance());
      try
      {
        if (localb.a(AlipayApplication.getInstance()))
        {
          ArrayList localArrayList = localb.a();
          if ((localArrayList != null) && (!localArrayList.isEmpty()))
          {
            Iterator localIterator = localArrayList.iterator();
            while (true)
            {
              if (!localIterator.hasNext())
                break label238;
              localc = (c)localIterator.next();
              if (!"taobao".equalsIgnoreCase(localc.c))
                break;
              TaoBaoUserInfo localTaoBaoUserInfo = new TaoBaoUserInfo();
              localTaoBaoUserInfo.setTaoBaoUserId(localc.a);
              localSecurityDbHelper.addTaobaoUserInfo(localTaoBaoUserInfo);
            }
          }
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          c localc;
          localException.printStackTrace();
          return false;
          if ("alipay".equalsIgnoreCase(localc.c))
          {
            UserInfo localUserInfo = new UserInfo();
            localUserInfo.setLogonId(localc.a);
            localUserInfo.setUserId(localc.d);
            localSecurityDbHelper.addUserInfo(localUserInfo);
          }
        }
      }
      finally
      {
        localCacheSet.putBoolean("isNeedOldDataToNewTable", false);
        localb.b();
        AlipayApplication.getInstance().deleteDatabase("RecentDB");
      }
      label238: localCacheSet.putBoolean("isNeedOldDataToNewTable", false);
      localb.b();
      AlipayApplication.getInstance().deleteDatabase("RecentDB");
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.OldDataTransferUtil
 * JD-Core Version:    0.6.2
 */