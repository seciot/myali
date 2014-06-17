package com.alipay.mobile.alipassapp.ui;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;

final class ex extends Handler
{
  ex(MemberChargeOffActivity paramMemberChargeOffActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((MemberChargeOffActivity.a(this.a) == null) || (MemberChargeOffActivity.a(this.a).getTag() == null) || (!MemberChargeOffActivity.a(this.a).getTag().equals(paramMessage.obj)));
    label308: label352: 
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        return;
      case 2:
      }
      APTextView localAPTextView = (APTextView)this.a.findViewById(R.id.member_qrcode_msg);
      int i;
      if (StringUtils.isBlank(MemberChargeOffActivity.b(this.a).getAltText(MemberChargeOffActivity.a(this.a).getTag())))
      {
        i = 0;
        localAPTextView.setVisibility(i);
        ((APTextView)this.a.findViewById(R.id.member_qrcode_altText)).setText(MemberChargeOffActivity.b(this.a).getAltText(MemberChargeOffActivity.a(this.a).getTag()));
        ((APImageView)this.a.findViewById(R.id.member_qrcode)).setImageBitmap(MemberChargeOffActivity.b(this.a).getBitmap(MemberChargeOffActivity.a(this.a).getTag()));
        if (MemberChargeOffActivity.c(this.a) != null)
          break label308;
        MemberChargeOffActivity.a(this.a, new au(this.a, MemberChargeOffActivity.b(this.a).getAltText(MemberChargeOffActivity.a(this.a).getTag()), false));
        ((APImageView)this.a.findViewById(R.id.member_qrcode)).setOnClickListener(MemberChargeOffActivity.c(this.a));
      }
      while (true)
      {
        if (MemberChargeOffActivity.d(this.a) == null)
          break label352;
        MemberChargeOffActivity.d(this.a).startPayBridge(MemberChargeOffActivity.b(this.a).getAltText(MemberChargeOffActivity.a(this.a).getTag()));
        return;
        i = 8;
        break;
        MemberChargeOffActivity.c(this.a).a((APImageView)this.a.findViewById(R.id.member_qrcode), MemberChargeOffActivity.b(this.a).getAltText(MemberChargeOffActivity.a(this.a).getTag()));
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ex
 * JD-Core Version:    0.6.2
 */