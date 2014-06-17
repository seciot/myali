package com.alipay.mobile.common.cache.mem.lru;

import android.graphics.Bitmap;
import com.alipay.mobile.common.cache.mem.Entity;

public class ImageEntity extends Entity
{
  private int a;

  public ImageEntity(String paramString1, String paramString2, Bitmap paramBitmap)
  {
    super(paramString1, paramString2, paramBitmap);
    this.a = (paramBitmap.getRowBytes() * paramBitmap.getHeight());
  }

  public int getSize()
  {
    return this.a;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = ((Bitmap)this.mValue).toString();
    arrayOfObject[1] = Integer.valueOf(this.a);
    return String.format("value: %s size: %d", arrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.mem.lru.ImageEntity
 * JD-Core Version:    0.6.2
 */