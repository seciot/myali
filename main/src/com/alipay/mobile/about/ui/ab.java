package com.alipay.mobile.about.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.about.service.FloatWindowService;

final class ab
  implements View.OnClickListener
{
  ab(FloatWindowBigView paramFloatWindowBigView, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    ag.a().d(this.a);
    ag.a().dexopt(this.a);
    Intent localIntent = new Intent(this.b.getContext(), FloatWindowService.class);
    this.a.stopService(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.ab
 * JD-Core Version:    0.6.2
 */