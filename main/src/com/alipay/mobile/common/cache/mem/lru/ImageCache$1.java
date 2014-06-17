package com.alipay.mobile.common.cache.mem.lru;

import android.graphics.Bitmap;
import com.alipay.mobile.common.cache.mem.Entity;
import com.alipay.mobile.common.logging.PerformanceLog;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

class ImageCache$1 extends LinkedHashMap
{
  ImageCache$1(ImageCache paramImageCache, int paramInt, float paramFloat, boolean paramBoolean)
  {
    super(paramInt, paramFloat, paramBoolean);
  }

  protected boolean removeEldestEntry(Map.Entry paramEntry)
  {
    if (this.this$0.mSize >= ImageCache.access$000(this.this$0))
    {
      PerformanceLog.getInstance().log("ImageCache evict: key=" + (String)paramEntry.getKey());
      ((Bitmap)((Entity)paramEntry.getValue()).getValue()).recycle();
      ImageEntity localImageEntity = (ImageEntity)paramEntry.getValue();
      ImageCache localImageCache = this.this$0;
      localImageCache.mSize -= localImageEntity.getSize();
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.mem.lru.ImageCache.1
 * JD-Core Version:    0.6.2
 */