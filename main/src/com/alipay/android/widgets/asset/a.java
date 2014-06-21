package com.alipay.android.widgets.asset;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;

final class a
  implements View.OnClickListener
{
  a(AssetWidgetGroup paramAssetWidgetGroup)
  {
  }

  public final void onClick(View paramView)
  {
    AssetWidgetGroup.getBundle(this.a).startApp("20000066", "20000113", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.a
 * JD-Core Version:    0.6.2
 */