package com.androidquery.util;

import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class BitmapCache extends LinkedHashMap<String, Bitmap>
{
  private int a;
  private int b;
  private int c;
  private int d;

  public BitmapCache(int paramInt1, int paramInt2, int paramInt3)
  {
    super(8, 0.75F, true);
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
  }

  private int pixels(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return 0;
    return paramBitmap.getWidth() * paramBitmap.getHeight();
  }

  private void shrink()
  {
    Iterator localIterator;
    if (this.d > this.c)
      localIterator = keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext());
      do
      {
        return;
        localIterator.next();
        localIterator.remove();
      }
      while (this.d <= this.c);
    }
  }

  public void clear()
  {
    super.clear();
    this.d = 0;
  }

  public Bitmap put(String paramString, Bitmap paramBitmap)
  {
    int i = pixels(paramBitmap);
    int j = this.b;
    Bitmap localBitmap = null;
    if (i <= j)
    {
      this.d = (i + this.d);
      localBitmap = (Bitmap)super.put(paramString, paramBitmap);
      if (localBitmap != null)
        this.d -= pixels(localBitmap);
    }
    return localBitmap;
  }

  public Bitmap remove(Object paramObject)
  {
    Bitmap localBitmap = (Bitmap)super.remove(paramObject);
    if (localBitmap != null)
      this.d -= pixels(localBitmap);
    return localBitmap;
  }

  public boolean removeEldestEntry(Map.Entry<String, Bitmap> paramEntry)
  {
    if ((this.d > this.c) || (size() > this.a))
      remove(paramEntry.getKey());
    shrink();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.BitmapCache
 * JD-Core Version:    0.6.2
 */