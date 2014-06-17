package com.alipay.android.widgets.asset.rpc;

import android.app.Activity;
import android.content.Context;

public final class AssetDynamicDataProcessor_ extends AssetDynamicDataProcessor
{
  private Context a;

  private AssetDynamicDataProcessor_(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    if ((this.a instanceof Activity));
  }

  public static AssetDynamicDataProcessor_ a(Context paramContext)
  {
    return new AssetDynamicDataProcessor_(paramContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.rpc.AssetDynamicDataProcessor_
 * JD-Core Version:    0.6.2
 */