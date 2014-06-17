package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build.VERSION;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class UrlConnectionLoader
  implements Loader
{
  static volatile Object a;
  private static final Object b = new Object();
  private final Context c;

  public UrlConnectionLoader(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
  }

  public final Loader.Response a(Uri paramUri, boolean paramBoolean)
  {
    Context localContext;
    if (Build.VERSION.SDK_INT >= 14)
    {
      localContext = this.c;
      if (a != null);
    }
    try
    {
      synchronized (b)
      {
        if (a == null)
        {
          File localFile = l.b(localContext);
          HttpResponseCache localHttpResponseCache = HttpResponseCache.getInstalled();
          if (localHttpResponseCache == null)
            localHttpResponseCache = HttpResponseCache.install(localFile, l.a(localFile));
          a = localHttpResponseCache;
        }
        label72: HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramUri.toString()).openConnection();
        localHttpURLConnection.setUseCaches(true);
        if (paramBoolean)
          localHttpURLConnection.setRequestProperty("Cache-Control", "only-if-cached");
        boolean bool = l.b(localHttpURLConnection.getHeaderField("X-Android-Response-Source"));
        return new Loader.Response(localHttpURLConnection.getInputStream(), bool);
      }
    }
    catch (IOException localIOException)
    {
      break label72;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.UrlConnectionLoader
 * JD-Core Version:    0.6.2
 */