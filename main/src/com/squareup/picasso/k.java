package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import java.lang.ref.WeakReference;
import java.util.List;

final class k extends e
{
  private final WeakReference q;
  private final Target r;

  k(Picasso paramPicasso, Uri paramUri, int paramInt, Target paramTarget, c paramc, List paramList, boolean paramBoolean)
  {
    super(paramPicasso, paramUri, paramInt, paramc, paramList, paramBoolean);
    this.q = new WeakReference(paramTarget);
    this.r = null;
  }

  private Target d()
  {
    if (this.r != null)
      return this.r;
    return (Target)this.q.get();
  }

  final void b()
  {
    if (this.m == null)
      throw new AssertionError(String.format("Attempted to complete request with no result!\n%s", new Object[] { this }));
    Target localTarget = d();
    if (localTarget != null)
    {
      localTarget.a(this.m);
      if (this.m.isRecycled())
        throw new IllegalStateException("Target callback must not recycle bitmap!");
    }
  }

  final void c()
  {
    Target localTarget = d();
    if (localTarget == null)
      return;
    localTarget.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.k
 * JD-Core Version:    0.6.2
 */