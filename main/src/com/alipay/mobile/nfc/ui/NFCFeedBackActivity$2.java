package com.alipay.mobile.nfc.ui;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APInputBox;

class NFCFeedBackActivity$2
  implements View.OnClickListener
{
  NFCFeedBackActivity$2(NFCFeedBackActivity paramNFCFeedBackActivity)
  {
  }

  public void onClick(View paramView)
  {
    if (!NFCFeedBackActivity.b(this.a))
    {
      NFCFeedBackActivity.v(this.a, "请选择卡类别");
      return;
    }
    if (TextUtils.isEmpty(NFCFeedBackActivity.getBundleByComponentName(this.a).getInputedText()))
    {
      NFCFeedBackActivity.v(this.a, "请填写发送单位名称");
      return;
    }
    NFCFeedBackActivity.d(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCFeedBackActivity.2
 * JD-Core Version:    0.6.2
 */