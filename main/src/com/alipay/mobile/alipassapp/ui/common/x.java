package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.view.View;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

final class x extends au
{
  x(w paramw, Context paramContext)
  {
    super(paramContext);
  }

  public final void onClick(View paramView)
  {
    super.onClick(paramView);
    AlipassOperationViewPager.access$700(this.a.b.d, BehaviourIdEnum.CLICKED, AlipassOperationViewPager.access$600(this.a.b.d), "qrcode");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.x
 * JD-Core Version:    0.6.2
 */