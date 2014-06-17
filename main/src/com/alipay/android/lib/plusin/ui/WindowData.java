package com.alipay.android.lib.plusin.ui;

import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.lib.plusin.protocol.FrameData;

public abstract class WindowData extends FrameData
{
  private boolean a = false;
  private boolean b = false;
  private int c = -1;

  protected WindowData(Request paramRequest, Response paramResponse)
  {
    super(paramRequest, paramResponse);
  }

  public abstract String a();

  public final void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public abstract int c();

  public abstract boolean d();

  public final void l()
  {
    this.c = (1 + this.c);
  }

  public final int m()
  {
    return this.c;
  }

  public final boolean n()
  {
    return this.a;
  }

  public final void o()
  {
    this.a = true;
  }

  public final boolean p()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.ui.WindowData
 * JD-Core Version:    0.6.2
 */