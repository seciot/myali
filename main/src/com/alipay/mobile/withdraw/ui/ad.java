package com.alipay.mobile.withdraw.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class ad
  implements DialogInterface.OnClickListener
{
  ad(WithdrawSmsCheckActivity paramWithdrawSmsCheckActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("isSmsCheckOk", true);
    this.a.setResult(-1, localIntent);
    this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.ad
 * JD-Core Version:    0.6.2
 */