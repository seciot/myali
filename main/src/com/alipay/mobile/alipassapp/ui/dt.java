package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class dt
  implements View.OnClickListener
{
  dt(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    MemberCardDetailActivity.r(this.a);
    this.a.getBundleByComponentName("share");
    Intent localIntent = new Intent(this.a, AlipassForShareActivity_.class);
    if ((MemberCardDetailActivity.j(this.a) != null) && (MemberCardDetailActivity.j(this.a).getPassBaseInfo() != null))
      localIntent.putExtra("p", String.valueOf(MemberCardDetailActivity.j(this.a).getPassBaseInfo().getPassId()));
    localIntent.putExtra("aid", "20000062");
    MemberCardDetailActivity.v(this.a).getMicroApplicationContext().startActivity(MemberCardDetailActivity.u(this.a), localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dt
 * JD-Core Version:    0.6.2
 */