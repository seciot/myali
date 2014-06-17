package com.alipay.mobile.alipassapp.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import com.alipay.mobile.alipassapp.R.string;

final class al
  implements Runnable
{
  al(AlipassListActivity paramAlipassListActivity)
  {
  }

  public final void run()
  {
    if (!this.a.isFinishing())
    {
      AlipassListActivity localAlipassListActivity = this.a;
      am localam = new am(this);
      new AlertDialog.Builder(localAlipassListActivity).setMessage(localAlipassListActivity.getResources().getString(R.string.alipass_system_error)).setPositiveButton(localAlipassListActivity.getResources().getString(R.string.alipass_ok), localam).setCancelable(false).create().show();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.al
 * JD-Core Version:    0.6.2
 */