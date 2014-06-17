package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.view.View;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

final class u extends au
{
  u(t paramt, Context paramContext, String paramString)
  {
    super(paramContext, paramString, true);
  }

  public final void onClick(View paramView)
  {
    super.onClick(paramView);
    AlipassOperationViewPager.access$700(this.a.b.c, BehaviourIdEnum.CLICKED, AlipassOperationViewPager.access$600(this.a.b.c), "barcode");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.u
 * JD-Core Version:    0.6.2
 */