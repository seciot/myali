package com.alipay.mobile.about.ui;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

final class af
  implements View.OnClickListener
{
  af(FloatWindowBigView paramFloatWindowBigView, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    ag.a().d(this.a);
    ag.a().a(this.a);
    AlipayApplication.getInstance().getMicroApplicationContext().startActivity(AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp(), FeedAssistantActivity_.class.getName());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.af
 * JD-Core Version:    0.6.2
 */