package com.alipay.mobile.common.cache.disk;

import java.io.File;

class DiskCache$3
  implements Runnable
{
  DiskCache$3(DiskCache paramDiskCache)
  {
  }

  public void run()
  {
    File localFile = new File(this.this$0.getDirectory());
    File[] arrayOfFile;
    if ((localFile.exists()) && (localFile.isDirectory()))
    {
      arrayOfFile = localFile.listFiles();
      if (arrayOfFile != null)
        break label39;
    }
    while (true)
    {
      return;
      label39: int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        arrayOfFile[j].delete();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.DiskCache.3
 * JD-Core Version:    0.6.2
 */