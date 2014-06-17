package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import java.util.List;

public class RequestBuilder
{
  c a;
  private final Picasso b;
  private final Uri c;
  private final int d;
  private List e;
  private boolean f;

  RequestBuilder()
  {
    this.b = null;
    this.c = null;
    this.d = 0;
  }

  RequestBuilder(Picasso paramPicasso, Uri paramUri)
  {
    this.b = paramPicasso;
    this.c = paramUri;
    this.d = 0;
  }

  public final void a(Target paramTarget)
  {
    if (paramTarget == null)
      throw new IllegalArgumentException("Target must not be null.");
    String str = l.a(this.c, this.d, this.a, this.e);
    Bitmap localBitmap = this.b.a(paramTarget, this.c, str);
    if (localBitmap != null)
    {
      paramTarget.a(localBitmap);
      return;
    }
    k localk = new k(this.b, this.c, this.d, paramTarget, this.a, this.e, this.f);
    this.b.a(localk);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.RequestBuilder
 * JD-Core Version:    0.6.2
 */