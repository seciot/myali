package com.alipay.mobile.common.image;

import android.graphics.Bitmap;
import com.alipay.mobile.common.cache.disk.DiskCache;
import com.alipay.mobile.common.cache.mem.MemCache;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpUrlResponse;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class ImageLoader$HttpCallback
  implements TransportCallback
{
  private String a;
  private String b;
  private Set c;
  private int d;
  private int e;
  private ImageCacheListener f;

  public ImageLoader$HttpCallback(ImageLoader paramImageLoader, String paramString1, String paramString2, int paramInt1, int paramInt2, ImageCacheListener paramImageCacheListener)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = new HashSet();
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramImageCacheListener;
  }

  public void addListener(ImageLoaderListener paramImageLoaderListener)
  {
    this.c.add(paramImageLoaderListener);
  }

  public int getListenerSize()
  {
    return this.c.size();
  }

  public void onCancelled(Request paramRequest)
  {
    HttpUrlRequest localHttpUrlRequest = (HttpUrlRequest)paramRequest;
    synchronized (ImageLoader.access$200(this.this$0))
    {
      Iterator localIterator = this.c.iterator();
      if (localIterator.hasNext())
        ((ImageLoaderListener)localIterator.next()).onCancelled(localHttpUrlRequest.getUrl());
    }
    ImageLoader.access$200(this.this$0).remove(localHttpUrlRequest.getUrl());
    ImageLoader.access$400(this.this$0).remove(localHttpUrlRequest.getUrl());
  }

  public void onFailed(Request paramRequest, int paramInt, String paramString)
  {
    HttpUrlRequest localHttpUrlRequest = (HttpUrlRequest)paramRequest;
    synchronized (ImageLoader.access$200(this.this$0))
    {
      Iterator localIterator = this.c.iterator();
      if (localIterator.hasNext())
        ((ImageLoaderListener)localIterator.next()).onFailed(localHttpUrlRequest.getUrl(), paramInt, paramString);
    }
    ImageLoader.access$200(this.this$0).remove(localHttpUrlRequest.getUrl());
    ImageLoader.access$400(this.this$0).remove(localHttpUrlRequest.getUrl());
  }

  public void onPostExecute(Request paramRequest, Response paramResponse)
  {
    HttpUrlRequest localHttpUrlRequest = (HttpUrlRequest)paramRequest;
    HttpUrlResponse localHttpUrlResponse;
    byte[] arrayOfByte;
    Bitmap localBitmap;
    synchronized (ImageLoader.access$200(this.this$0))
    {
      if (this.c.size() <= 0)
        break label199;
      localHttpUrlResponse = (HttpUrlResponse)paramResponse;
      arrayOfByte = paramResponse.getResData();
      localBitmap = ImageLoader.access$000(this.this$0, arrayOfByte, this.d, this.e);
      if (localBitmap == null)
        break label251;
      Iterator localIterator1 = this.c.iterator();
      if (localIterator1.hasNext())
        ((ImageLoaderListener)localIterator1.next()).onPostLoad(localHttpUrlRequest.getUrl(), localBitmap);
    }
    ImageLoader.access$100(this.this$0).put(this.a, this.b, localHttpUrlRequest.getUrl(), localBitmap);
    long l;
    if (this.f != null)
    {
      l = this.f.getCachePeriod(localHttpUrlRequest, localHttpUrlResponse);
      ImageLoader.access$300(this.this$0).put(this.a, this.b, localHttpUrlRequest.getUrl(), arrayOfByte, localHttpUrlResponse.getCreateTime(), l, localHttpUrlResponse.getContentType());
    }
    while (true)
    {
      label199: ImageLoader.access$200(this.this$0).remove(localHttpUrlRequest.getUrl());
      ImageLoader.access$400(this.this$0).remove(localHttpUrlRequest.getUrl());
      return;
      l = 1000L * localHttpUrlResponse.getPeriod();
      break;
      label251: Iterator localIterator2 = this.c.iterator();
      while (localIterator2.hasNext())
        ((ImageLoaderListener)localIterator2.next()).onFailed(localHttpUrlRequest.getUrl(), 999, "网络请求返回的不是图片");
    }
  }

  public void onPreExecute(Request paramRequest)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((ImageLoaderListener)localIterator.next()).onPreLoad(((HttpUrlRequest)paramRequest).getUrl());
  }

  public void onProgressUpdate(Request paramRequest, double paramDouble)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((ImageLoaderListener)localIterator.next()).onProgressUpdate(((HttpUrlRequest)paramRequest).getUrl(), paramDouble);
  }

  public void removeListener(ImageLoaderListener paramImageLoaderListener)
  {
    this.c.remove(paramImageLoaderListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.image.ImageLoader.HttpCallback
 * JD-Core Version:    0.6.2
 */