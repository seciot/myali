package com.alipay.mobile.about.ui;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;

final class ad
  implements View.OnClickListener
{
  ad(FloatWindowBigView paramFloatWindowBigView, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    new StringBuilder("appId: ").append(AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp().getAppId()).toString();
    ag.a().d(this.a);
    ag.a().getBundle(this.a);
    FloatWindowBigView.access$100(this.b).postDelayed(new ae(this), 500L);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.ad
 * JD-Core Version:    0.6.2
 */