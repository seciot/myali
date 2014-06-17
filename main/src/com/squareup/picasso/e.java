package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

class e
  implements Runnable
{
  final Picasso a;
  final Uri b;
  final int c;
  final WeakReference d;
  final c e;
  final List f;
  final boolean g;
  final boolean h;
  final int i;
  final Drawable j;
  final String k;
  Future l;
  Bitmap m;
  g n;
  int o;
  boolean p;

  e(Picasso paramPicasso, Uri paramUri, int paramInt, c paramc, List paramList, boolean paramBoolean)
  {
    this.a = paramPicasso;
    this.b = paramUri;
    this.c = paramInt;
    this.d = new WeakReference(null);
    this.e = paramc;
    this.f = paramList;
    this.g = paramBoolean;
    this.h = false;
    this.i = 0;
    this.j = null;
    this.o = 2;
    this.k = l.a(this);
  }

  private String d()
  {
    if (this.f == null)
      return "[]";
    StringBuilder localStringBuilder = new StringBuilder(16 * this.f.size());
    localStringBuilder.append('[');
    Iterator localIterator = this.f.iterator();
    int i1 = 1;
    if (localIterator.hasNext())
    {
      Transformation localTransformation = (Transformation)localIterator.next();
      if (i1 != 0)
        i1 = 0;
      while (true)
      {
        localStringBuilder.append(localTransformation.b());
        break;
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  Object a()
  {
    return this.d.get();
  }

  void b()
  {
    if (this.m == null)
      throw new AssertionError(String.format("Attempted to complete request with no result!\n%s", new Object[] { this }));
    ImageView localImageView = (ImageView)this.d.get();
    if (localImageView != null)
    {
      Context localContext = this.a.c;
      boolean bool = this.a.j;
      d.a(localImageView, localContext, this.m, this.n, this.h, bool);
    }
  }

  void c()
  {
    ImageView localImageView = (ImageView)this.d.get();
    if (localImageView == null);
    do
    {
      return;
      if (this.i != 0)
      {
        localImageView.setImageResource(this.i);
        return;
      }
    }
    while (this.j == null);
    localImageView.setImageDrawable(this.j);
  }

  public void run()
  {
    try
    {
      Thread localThread = Thread.currentThread();
      StringBuilder localStringBuilder = new StringBuilder("Picasso-");
      Uri localUri = this.b;
      if (localUri != null);
      String str;
      for (Object localObject2 = localUri.getPath(); ; localObject2 = str)
      {
        localThread.setName((String)localObject2);
        this.a.b(this);
        return;
        str = Integer.toString(this.c);
      }
    }
    catch (Throwable localThrowable)
    {
      this.a.a.post(new f(this, localThrowable));
      return;
    }
    finally
    {
      Thread.currentThread().setName("Picasso-Idle");
    }
  }

  public String toString()
  {
    return "Request[hashCode=" + hashCode() + ", picasso=" + this.a + ", uri=" + this.b + ", resourceId=" + this.c + ", target=" + this.d + ", options=" + this.e + ", transformations=" + d() + ", future=" + this.l + ", result=" + this.m + ", retryCount=" + this.o + ", loadedFrom=" + this.n + ']';
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.e
 * JD-Core Version:    0.6.2
 */