package com.alipay.mobile.browser.handler;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.browser.HtmlActivityV2;

class CMSHtmlActivityHandler$2
  implements DialogInterface.OnClickListener
{
  CMSHtmlActivityHandler$2(CMSHtmlActivityHandler paramCMSHtmlActivityHandler, HtmlActivityV2 paramHtmlActivityV2)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.val$htmlActivity.finishActivity();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.handler.CMSHtmlActivityHandler.2
 * JD-Core Version:    0.6.2
 */