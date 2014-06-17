package com.alipay.mobilesecuritysdk.deviceID;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DeviceIdManager
{
  public static Map a = null;
  private final Context b;

  public DeviceIdManager(Context paramContext)
  {
    this.b = paramContext;
    LOG.a(paramContext);
  }

  private void a(Context paramContext, Map paramMap)
  {
    try
    {
      new Thread(new a(this, paramContext, paramMap)).start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String a(Map paramMap)
  {
    new Thread(new b(this)).start();
    try
    {
      Map localMap = new DeviceIdModel().a(this.b);
      a = localMap;
      if (localMap == null)
      {
        ArrayList localArrayList2 = new ArrayList();
        if ((paramMap.get("tid") != null) && (((String)paramMap.get("tid")).length() > 20))
          localArrayList2.add(((String)paramMap.get("tid")).substring(0, 20));
        if ((paramMap.get("utdid") != null) && (((String)paramMap.get("utdid")).length() > 20))
          localArrayList2.add(((String)paramMap.get("utdid")).substring(0, 20));
        localArrayList2.add("model.GetPrivateData(mcontext)  strMap is null");
        LOG.a(localArrayList2);
        a(this.b, paramMap);
        return null;
      }
      if (DeviceIdModel.a(a))
      {
        str2 = (String)a.get("deviceId");
        try
        {
          ArrayList localArrayList3 = new ArrayList();
          if ((paramMap.get("tid") != null) && (((String)paramMap.get("tid")).length() > 20))
            localArrayList3.add(((String)paramMap.get("tid")).substring(0, 20));
          if ((paramMap.get("utdid") != null) && (((String)paramMap.get("utdid")).length() > 20))
            localArrayList3.add(((String)paramMap.get("utdid")).substring(0, 20));
          localArrayList3.add("GetApDid  deviceID is " + str2);
          LOG.a(localArrayList3);
          a(this.b, paramMap);
          return str2;
        }
        catch (Exception localException2)
        {
          localObject = localException2;
          str1 = str2;
        }
        ArrayList localArrayList1 = new ArrayList();
        if ((paramMap.get("tid") != null) && (((String)paramMap.get("tid")).length() > 20))
          localArrayList1.add(((String)paramMap.get("tid")).substring(0, 20));
        if ((paramMap.get("utdid") != null) && (((String)paramMap.get("utdid")).length() > 20))
          localArrayList1.add(((String)paramMap.get("utdid")).substring(0, 20));
        localArrayList1.add(LOG.a((Throwable)localObject));
        LOG.a(localArrayList1);
        return str1;
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        Object localObject = localException1;
        String str1 = null;
        continue;
        String str2 = null;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.DeviceIdManager
 * JD-Core Version:    0.6.2
 */