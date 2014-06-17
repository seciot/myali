package com.alipay.mobile.common.info;

import com.ut.device.UTDevice;
import java.util.concurrent.atomic.AtomicBoolean;

class DeviceInfo$1
  implements Runnable
{
  DeviceInfo$1(DeviceInfo paramDeviceInfo)
  {
  }

  public void run()
  {
    DeviceInfo.access$000(this.this$0).set(true);
    DeviceInfo.access$102(this.this$0, UTDevice.getUtdid(DeviceInfo.access$200(this.this$0)));
    DeviceInfo.access$000(this.this$0).set(false);
    synchronized (DeviceInfo.access$300(this.this$0))
    {
      DeviceInfo.access$300(this.this$0).notifyAll();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.info.DeviceInfo.1
 * JD-Core Version:    0.6.2
 */