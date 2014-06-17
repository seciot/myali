package com.alipay.android.widget.security.service;

import android.app.Activity;
import android.content.Context;
import android.view.View;

public final class SecurityInitServiceImpl_ extends SecurityInitServiceImpl
{
  private Context e;

  private SecurityInitServiceImpl_(Context paramContext)
  {
    this.e = paramContext;
    a();
  }

  private void a()
  {
    if ((this.e instanceof Activity));
  }

  public static SecurityInitServiceImpl_ getInstance_(Context paramContext)
  {
    return new SecurityInitServiceImpl_(paramContext);
  }

  public final void afterSetContentView_()
  {
    if (!(this.e instanceof Activity));
  }

  public final View findViewById(int paramInt)
  {
    return ((Activity)this.e).findViewById(paramInt);
  }

  public final void rebind(Context paramContext)
  {
    this.e = paramContext;
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.SecurityInitServiceImpl_
 * JD-Core Version:    0.6.2
 */