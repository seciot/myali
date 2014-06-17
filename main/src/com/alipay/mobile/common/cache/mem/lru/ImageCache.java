package com.alipay.mobile.common.cache.mem.lru;

import android.graphics.Bitmap;
import com.alipay.mobile.common.cache.mem.Entity;
import com.alipay.mobile.common.cache.mem.MemCache;
import java.util.HashMap;

public class ImageCache extends MemCache
{
  private static ImageCache a;
  protected long mSize = 0L;

  private ImageCache()
  {
    this.mMap = new ImageCache.1(this, 10, 0.75F, true);
    this.mGroup = new HashMap();
  }

  private static long a()
  {
    return Runtime.getRuntime().maxMemory() / 8L;
  }

  public static ImageCache getInstance()
  {
    try
    {
      if (a == null)
        a = new ImageCache();
      ImageCache localImageCache = a;
      return localImageCache;
    }
    finally
    {
    }
  }

  public Bitmap get(String paramString1, String paramString2)
  {
    try
    {
      Bitmap localBitmap = (Bitmap)super.get(paramString1, paramString2);
      return localBitmap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long getMaxsize()
  {
    return a();
  }

  public long getSize()
  {
    try
    {
      long l = this.mSize;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected Entity makeEntity(String paramString1, String paramString2, Bitmap paramBitmap)
  {
    return new ImageEntity(paramString1, paramString2, paramBitmap);
  }

  public void put(String paramString1, String paramString2, String paramString3, Bitmap paramBitmap)
  {
    try
    {
      super.put(paramString1, paramString2, paramString3, paramBitmap);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void recordPut(Entity paramEntity)
  {
    ImageEntity localImageEntity = (ImageEntity)paramEntity;
    this.mSize += localImageEntity.getSize();
  }

  protected void recordRemove(Entity paramEntity)
  {
    ImageEntity localImageEntity = (ImageEntity)paramEntity;
    this.mSize -= localImageEntity.getSize();
  }

  public Bitmap remove(String paramString)
  {
    try
    {
      Bitmap localBitmap = (Bitmap)super.remove(paramString);
      return localBitmap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.mem.lru.ImageCache
 * JD-Core Version:    0.6.2
 */