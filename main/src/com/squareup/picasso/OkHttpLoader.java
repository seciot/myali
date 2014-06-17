package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.HttpResponseCache;
import com.squareup.okhttp.OkHttpClient;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class OkHttpLoader
  implements Loader
{
  private final OkHttpClient a;

  public OkHttpLoader(Context paramContext)
  {
    this(l.b(paramContext));
  }

  private OkHttpLoader(OkHttpClient paramOkHttpClient)
  {
    this.a = paramOkHttpClient;
  }

  private OkHttpLoader(File paramFile)
  {
    this(paramFile, l.a(paramFile));
  }

  private OkHttpLoader(File paramFile, int paramInt)
  {
    this(new OkHttpClient());
    try
    {
      this.a.setResponseCache(new HttpResponseCache(paramFile, paramInt));
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public final Loader.Response a(Uri paramUri, boolean paramBoolean)
  {
    HttpURLConnection localHttpURLConnection = this.a.open(new URL(paramUri.toString()));
    localHttpURLConnection.setUseCaches(true);
    if (paramBoolean)
      localHttpURLConnection.setRequestProperty("Cache-Control", "only-if-cached");
    boolean bool = l.b(localHttpURLConnection.getHeaderField("X-Android-Response-Source"));
    return new Loader.Response(localHttpURLConnection.getInputStream(), bool);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.OkHttpLoader
 * JD-Core Version:    0.6.2
 */