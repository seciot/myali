package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;

final class h
{
  final Cache a;
  final Handler b;
  long c;
  long d;
  long e;
  long f;
  long g;
  long h;
  int i;
  int j;

  h(Cache paramCache)
  {
    this.a = paramCache;
    HandlerThread localHandlerThread = new HandlerThread("Picasso-Stats", 10);
    localHandlerThread.start();
    this.b = new i(this, localHandlerThread.getLooper());
  }

  private void a(Bitmap paramBitmap, int paramInt)
  {
    int k = l.a(paramBitmap);
    this.b.sendMessage(this.b.obtainMessage(paramInt, k, 0));
  }

  final void a()
  {
    this.b.sendEmptyMessage(1);
  }

  final void a(Bitmap paramBitmap)
  {
    a(paramBitmap, 3);
  }

  final void b(Bitmap paramBitmap)
  {
    a(paramBitmap, 4);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.h
 * JD-Core Version:    0.6.2
 */