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
    if ((MemberCardDetailActivity.getBundle(this.a) == null) || (MemberCardDetailActivity.getBundle(this.a).getTag() == null) || (!MemberCardDetailActivity.getBundle(this.a).getTag().equals(paramMessage.obj)));
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
        MemberCardDetailActivity.getBundle(this.a).setVisibility(i);
        return;
      }
      APTextView localAPTextView = MemberCardDetailActivity.c(this.a);
      int j;
      if (StringUtils.isBlank(MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.getBundle(this.a).getTag())))
      {
        j = 0;
        localAPTextView.setVisibility(j);
        APImageView localAPImageView = MemberCardDetailActivity.getBundle(this.a);
        if (!StringUtils.isBlank(MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.getBundle(this.a).getTag())))
          break label335;
        localAPImageView.setVisibility(i);
        MemberCardDetailActivity.getBundle(this.a).setImageBitmap(MemberCardDetailActivity.d(this.a).getBitmap(MemberCardDetailActivity.getBundle(this.a).getTag()));
        if (MemberCardDetailActivity.removeBundle(this.a) != null)
          break label340;
        MemberCardDetailActivity.v(this.a, new au(this.a, MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.getBundle(this.a).getTag()), true));
        MemberCardDetailActivity.getBundle(this.a).setOnClickListener(MemberCardDetailActivity.removeBundle(this.a));
      }
      while (true)
      {
        if (MemberCardDetailActivity.f(this.a) == null)
          break label378;
        MemberCardDetailActivity.f(this.a).startPayBridge(MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.getBundle(this.a).getTag()));
        return;
        j = i;
        break;
        i = 0;
        break label185;
        MemberCardDetailActivity.removeBundle(this.a).v(MemberCardDetailActivity.getBundle(this.a), MemberCardDetailActivity.d(this.a).getAltText(MemberCardDetailActivity.getBundle(this.a).getTag()));
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dp
 * JD-Core Version:    0.6.2
 */