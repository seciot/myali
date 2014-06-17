package com.alipay.mobilesecuritysdk.deviceID;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class a
  implements Runnable
{
  a(DeviceIdManager paramDeviceIdManager, Context paramContext, Map paramMap)
  {
  }

  public final void run()
  {
    try
    {
      DeviceIdModel localDeviceIdModel = new DeviceIdModel();
      localDeviceIdModel.a(this.b, this.c);
      localDeviceIdModel.b(this.b, DeviceIdManager.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      ArrayList localArrayList = new ArrayList();
      if ((this.c.get("tid") != null) && (((String)this.c.get("tid")).length() > 20))
        localArrayList.add(((String)this.c.get("tid")).substring(0, 20));
      if ((this.c.get("utdid") != null) && (((String)this.c.get("utdid")).length() > 20))
        localArrayList.add(((String)this.c.get("utdid")).substring(0, 20));
      localArrayList.add(LOG.a(localThrowable));
      LOG.a(localArrayList);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.a
 * JD-Core Version:    0.6.2
 */