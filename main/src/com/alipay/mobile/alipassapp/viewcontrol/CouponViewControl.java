package com.alipay.mobile.alipassapp.viewcontrol;

import android.content.Context;
import android.view.View;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.alipassapp.ui.common.CouponPrimaryFieldLayout;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.List;

public class CouponViewControl extends a
{
  CouponPrimaryFieldLayout e;

  final k a()
  {
    return new q(this);
  }

  public final void a(Context paramContext, View paramView, ActivityApplication paramActivityApplication)
  {
    super.a(paramContext, paramView, paramActivityApplication);
    this.e = ((CouponPrimaryFieldLayout)this.c.findViewById(R.id.layout_primary));
  }

  protected final void a(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo)
  {
    this.e.refresh(paramList, paramDisplayInfo, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.CouponViewControl
 * JD-Core Version:    0.6.2
 */