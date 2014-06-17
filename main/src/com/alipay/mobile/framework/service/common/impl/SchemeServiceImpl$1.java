package com.alipay.mobile.framework.service.common.impl;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class SchemeServiceImpl$1
  implements DialogInterface.OnClickListener
{
  SchemeServiceImpl$1(SchemeServiceImpl paramSchemeServiceImpl, Activity paramActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("http://d.alipay.com"));
    this.val$context.startActivity(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.SchemeServiceImpl.1
 * JD-Core Version:    0.6.2
 */