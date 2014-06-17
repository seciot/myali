package com.alipay.mobile.common.image;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.alipay.mobile.common.cache.disk.CacheException;
import com.alipay.mobile.common.cache.disk.DiskCache;
import com.alipay.mobile.common.cache.mem.MemCache;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.task.TaskManager;
import com.alipay.mobile.common.transport.http.HttpManager;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

public class ImageLoader
{
  private DiskCache a;
  private MemCache b;
  private TaskManager c;
  private HttpManager d;
  private Map e;
  private Map f;

  public ImageLoader(HttpManager paramHttpManager, DiskCache paramDiskCache, MemCache paramMemCache, TaskManager paramTaskManager)
  {
    this.d = paramHttpManager;
    this.a = paramDiskCache;
    this.b = paramMemCache;
    this.c = paramTaskManager;
    this.e = new HashMap();
    this.f = new HashMap();
  }

  private static Bitmap a(Object paramObject, int paramInt1, int paramInt2)
  {
    BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
    int i;
    if ((paramInt1 > 0) && (paramInt2 > 0))
    {
      localOptions1.inJustDecodeBounds = true;
      if ((paramObject instanceof String))
      {
        BitmapFactory.decodeFile((String)paramObject, localOptions1);
        i = Math.max(localOptions1.outWidth / paramInt1, localOptions1.outHeight / paramInt2);
      }
    }
    for (BitmapFactory.Options localOptions2 = new BitmapFactory.Options(); ; localOptions2 = localOptions1)
    {
      localOptions2.inDensity = DeviceInfo.getInstance().getDencity();
      localOptions2.inScaled = true;
      localOptions2.inPurgeable = true;
      localOptions2.inSampleSize = i;
      if ((paramObject instanceof String))
      {
        return BitmapFactory.decodeFile((String)paramObject, localOptions2);
        BitmapFactory.decodeByteArray((byte[])paramObject, 0, ((byte[])paramObject).length, localOptions1);
        break;
      }
      return BitmapFactory.decodeByteArray((byte[])paramObject, 0, ((byte[])paramObject).length, localOptions2);
      i = 1;
    }
  }

  private boolean a(String paramString1, String paramString2, String paramString3, ImageLoaderListener paramImageLoaderListener, int paramInt1, int paramInt2)
  {
    this.a.open();
    try
    {
      byte[] arrayOfByte = this.a.get(paramString1, paramString3);
      if (arrayOfByte != null)
      {
        paramImageLoaderListener.onPreLoad(paramString3);
        Bitmap localBitmap = a(arrayOfByte, paramInt1, paramInt2);
        if (localBitmap != null)
        {
          paramImageLoaderListener.onPostLoad(paramString3, localBitmap);
          this.b.put(paramString1, paramString2, paramString3, localBitmap);
          return true;
        }
        this.a.remove(paramString3);
      }
      return false;
    }
    catch (CacheException localCacheException)
    {
      while (true)
      {
        new StringBuilder("[").append(localCacheException.getCode()).append("]").append(localCacheException.getMsg()).toString();
        this.a.close();
      }
    }
    finally
    {
      this.a.close();
    }
  }

  public void cancel(String paramString, ImageLoaderListener paramImageLoaderListener)
  {
    synchronized (this.e)
    {
      ImageLoader.HttpCallback localHttpCallback = (ImageLoader.HttpCallback)this.e.get(paramString);
      if (localHttpCallback == null)
        return;
      localHttpCallback.removeListener(paramImageLoaderListener);
      if (localHttpCallback.getListenerSize() <= 0)
        ((Future)this.f.get(paramString)).cancel(true);
      return;
    }
  }

  public void startLoad(String paramString1, String paramString2, String paramString3, ImageLoaderListener paramImageLoaderListener, int paramInt1, int paramInt2)
  {
    startLoad(paramString1, paramString2, paramString3, paramImageLoaderListener, paramInt1, paramInt2, null);
  }

  public void startLoad(String paramString1, String paramString2, String paramString3, ImageLoaderListener paramImageLoaderListener, int paramInt1, int paramInt2, ImageCacheListener paramImageCacheListener)
  {
    if (paramString3 == null);
    int i;
    label54: 
    do
    {
      return;
      Bitmap localBitmap = (Bitmap)this.b.get(paramString1, paramString3);
      if ((localBitmap == null) || (localBitmap.isRecycled()))
        break;
      paramImageLoaderListener.onPostLoad(paramString3, localBitmap);
      paramImageLoaderListener.onProgressUpdate(paramString3, 1.0D);
      i = 1;
      if (i != 0)
        break label163;
      Uri localUri = Uri.parse(paramString3);
      if ((!"http".equalsIgnoreCase(localUri.getScheme())) && (!"https".equalsIgnoreCase(localUri.getScheme())))
        break label247;
    }
    while (a(paramString1, paramString2, paramString3, paramImageLoaderListener, paramInt1, paramInt2));
    while (true)
    {
      synchronized (this.e)
      {
        if (!this.e.containsKey(paramString3))
          break label165;
        ((ImageLoader.HttpCallback)this.e.get(paramString3)).addListener(paramImageLoaderListener);
        return;
      }
      i = 0;
      break label54;
      label163: break;
      label165: HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(paramString3);
      ImageLoader.HttpCallback localHttpCallback = new ImageLoader.HttpCallback(this, paramString1, paramString2, paramInt1, paramInt2, paramImageCacheListener);
      localHttpCallback.addListener(paramImageLoaderListener);
      localHttpUrlRequest.setTransportCallback(localHttpCallback);
      Future localFuture = this.d.execute(localHttpUrlRequest);
      this.f.put(paramString3, localFuture);
      this.e.put(paramString3, localHttpCallback);
    }
    label247: this.c.serialExecute(new ImageLoader.1(this, paramImageLoaderListener, paramString3, paramInt1, paramInt2, paramString1, paramString2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.image.ImageLoader
 * JD-Core Version:    0.6.2
 */