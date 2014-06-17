package com.alipay.mobile.alipassapp.ui;

import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPopupWindow;

final class dx
  implements View.OnClickListener
{
  dx(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if ((MemberCardDetailActivity.j(this.a) == null) || (MemberCardDetailActivity.k(this.a) == null))
      return;
    this.a.c("operate");
    MemberCardDetailActivity.a(this.a, null);
    View localView = LayoutInflater.from(this.a).inflate(R.layout.member_detail_more_dialog, null);
    MemberCardDetailActivity.a(this.a, new APPopupWindow(localView, -2, -2));
    MemberCardDetailActivity.l(this.a).setFocusable(true);
    MemberCardDetailActivity.l(this.a).setOutsideTouchable(true);
    MemberCardDetailActivity.l(this.a).update();
    MemberCardDetailActivity.l(this.a).setBackgroundDrawable(new BitmapDrawable());
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(R.id.layout_member_detail_share);
    localViewGroup.setOnClickListener(MemberCardDetailActivity.m(this.a));
    if ((MemberCardDetailActivity.j(this.a).getPassBaseInfo() != null) && (StringUtils.equals(MemberCardDetailActivity.j(this.a).getPassBaseInfo().getStatus(), "expired")))
    {
      localViewGroup.setVisibility(8);
      ((APImageView)localView.findViewById(R.id.iv_member_detail_divide)).setVisibility(8);
      APLinearLayout localAPLinearLayout = (APLinearLayout)localView.findViewById(R.id.layout_more_dialog);
      localAPLinearLayout.setOrientation(0);
      localAPLinearLayout.setGravity(16);
    }
    ((ViewGroup)localView.findViewById(R.id.layout_member_detail_del)).setOnClickListener(MemberCardDetailActivity.n(this.a));
    MemberCardDetailActivity.l(this.a).showAsDropDown(MemberCardDetailActivity.k(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dx
 * JD-Core Version:    0.6.2
 */