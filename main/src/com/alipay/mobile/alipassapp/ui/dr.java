package com.alipay.mobile.alipassapp.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.common.utils.StringUtils;

final class dr
  implements View.OnClickListener
{
  dr(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    MemberCardDetailActivity.r(this.a);
    String str = this.a.getString(R.string.alipass_delete_message);
    if (StringUtils.equalsIgnoreCase(MemberCardDetailActivity.j(this.a).getPassBaseInfo().getChildType(), "mFundCard"))
      str = this.a.getString(R.string.mFundCard_delete_message);
    MemberCardDetailActivity localMemberCardDetailActivity = this.a;
    ds localds = new ds(this);
    new AlertDialog.Builder(localMemberCardDetailActivity).setMessage(str).setPositiveButton(localMemberCardDetailActivity.getResources().getString(R.string.alipass_ok), localds).setNegativeButton(localMemberCardDetailActivity.getResources().getString(R.string.alipass_cancel), null).create().show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dr
 * JD-Core Version:    0.6.2
 */