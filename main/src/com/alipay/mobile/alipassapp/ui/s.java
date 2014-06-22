package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.commonui.widget.APShareSelectDialog.OnShareSelectListener;
import com.alipay.mobile.framework.service.ShareService;
import java.util.Map;

final class s
  implements APShareSelectDialog.OnShareSelectListener
{
  s(AlipassForShareActivity paramAlipassForShareActivity, ShareService paramShareService)
  {
  }

  public final void onSelect(int paramInt)
  {
    if ((this.a != null) && (AlipassForShareActivity.getBundle(this.b) != null))
    {
      ShareContent localShareContent = (ShareContent)AlipassForShareActivity.getBundle(this.b).get(Integer.valueOf(paramInt));
      AlipassForShareActivity.getInitLevel();
      new StringBuilder("content=").append(localShareContent.toString()).append(";type=").append(paramInt).toString();
      this.a.silentShare(localShareContent, paramInt, AlipassForShareActivity.dexopt(this.b));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.s
 * JD-Core Version:    0.6.2
 */