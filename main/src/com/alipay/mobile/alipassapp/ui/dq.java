package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.common.utils.StringUtils;

final class dq
  implements View.OnClickListener
{
  dq(MemberCardDetailActivity paramMemberCardDetailActivity, AlipassInfo.EinfoFields paramEinfoFields)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.getBundleByComponentName("offerDetails");
    if (StringUtils.equals("openWeb", this.a.getType()))
      MemberCardDetailActivity.v(this.b, this.a);
    do
    {
      return;
      if (StringUtils.equals("openNative", this.a.getType()))
      {
        MemberCardDetailActivity.d(this.b, this.a);
        return;
      }
    }
    while (!StringUtils.equals("openSchema", this.a.getType()));
    MemberCardDetailActivity.i(this.b, this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dq
 * JD-Core Version:    0.6.2
 */