package com.alipay.mobilesecuritysdk.deviceID;

import java.util.ArrayList;
import java.util.List;

final class b
  implements Runnable
{
  b(DeviceIdManager paramDeviceIdManager)
  {
  }

  public final void run()
  {
    try
    {
      LOG.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("");
      localArrayList.add("");
      localArrayList.add("");
      localArrayList.add(LOG.a(localThrowable));
      LOG.a(localArrayList);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.b
 * JD-Core Version:    0.6.2
 */