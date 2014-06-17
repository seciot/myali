package com.alipay.mobile.alipassapp.ui;

import android.os.Handler;
import android.os.Message;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;

final class dp extends Handler
{
  dp(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = 8;
    if ((MemberCardDetailActivity.a(this.a) == null) || (MemberCardDetailActivity.a(this.a).getTag() == null) || (!MemberCardDetailActivity.a(this.a).getTag().equals(paramMessage.obj)));
    label185: label335: label340: label378: 
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        return;
      case 1:
      }
      if (!StringUtils.equalsIgnoreCase(MemberCardDetailActivity.b(this.a), "dbarcode"))
      {
        MemberCardDetailActivity.c(this.a).setVisibility(i);
        MemberCardDetailActivity.a(this.a).setVisibility(i);
        return;
      }
      APTextView localAPTextView = MemberCardDetailActivity.c(this.a);
      int j;
      if (StringUtils.isBlank(MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.a(this.a).getTag())))
      {
        j = 0;
        localAPTextView.setVisibility(j);
        APImageView localAPImageView = MemberCardDetailActivity.a(this.a);
        if (!StringUtils.isBlank(MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.a(this.a).getTag())))
          break label335;
        localAPImageView.setVisibility(i);
        MemberCardDetailActivity.a(this.a).setImageBitmap(MemberCardDetailActivity.d(this.a).getBitmap(MemberCardDetailActivity.a(this.a).getTag()));
        if (MemberCardDetailActivity.e(this.a) != null)
          break label340;
        MemberCardDetailActivity.a(this.a, new au(this.a, MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.a(this.a).getTag()), true));
        MemberCardDetailActivity.a(this.a).setOnClickListener(MemberCardDetailActivity.e(this.a));
      }
      while (true)
      {
        if (MemberCardDetailActivity.f(this.a) == null)
          break label378;
        MemberCardDetailActivity.f(this.a).startPayBridge(MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.a(this.a).getTag()));
        return;
        j = i;
        break;
        i = 0;
        break label185;
        MemberCardDetailActivity.e(this.a).a(MemberCardDetailActivity.a(this.a), MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.a(this.a).getTag()));
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dp
 * JD-Core Version:    0.6.2
 */