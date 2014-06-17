package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.view.View;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.app.ActivityApplication;

final class y extends a
{
  y(AlipassOperationViewPager paramAlipassOperationViewPager, Context paramContext, String paramString1, String paramString2, ActivityApplication paramActivityApplication)
  {
    super(paramContext, paramString1, paramString2, paramActivityApplication);
  }

  public final void onClick(View paramView)
  {
    super.onClick(paramView);
    AlipassOperationViewPager.access$700(this.a, BehaviourIdEnum.CLICKED, AlipassOperationViewPager.access$600(this.a), "soundwave");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.y
 * JD-Core Version:    0.6.2
 */