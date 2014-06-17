package com.squareup.picasso;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Picasso$Builder
{
  private final Context a;
  private Loader b;
  private ExecutorService c;
  private Cache d;
  private Picasso.Listener e;

  public Picasso$Builder(Context paramContext)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("Context must not be null.");
    this.a = paramContext.getApplicationContext();
  }

  public final Picasso a()
  {
    Context localContext = this.a;
    if (this.b == null)
      this.b = l.a(localContext);
    if (this.d == null)
      this.d = new LruCache(localContext);
    if (this.c == null)
      this.c = Executors.newFixedThreadPool(3, new n());
    h localh = new h(this.d);
    return new Picasso(localContext, this.b, this.c, this.d, this.e, localh);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Picasso.Builder
 * JD-Core Version:    0.6.2
 */