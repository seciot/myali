package com.alipay.mobile.appstoreapp.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class a
  implements View.OnClickListener
{
  a(FastLoginAppAdapter paramFastLoginAppAdapter, App paramApp, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    FastLoginAppAdapter localFastLoginAppAdapter = this.c;
    App localApp = this.a;
    FastLoginAppAdapter.e(localFastLoginAppAdapter, paramView, localApp);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.adapter.a
 * JD-Core Version:    0.6.2
 */