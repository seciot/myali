package com.alipay.mobile.alipassapp.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import com.alipay.kabaoprod.biz.mwallet.card.request.MemberCardRequest;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class bq
  implements Runnable
{
  bq(AlipassQueryCardActivity paramAlipassQueryCardActivity, MemberCardRequest paramMemberCardRequest, String paramString)
  {
  }

  public final void run()
  {
    new AlertDialog.Builder(this.c).setMessage(AlipassQueryCardActivity.d(this.c).getMicroApplicationContext().getApplicationContext().getResources().getString(R.string.mFundCard_bind_phone)).setPositiveButton(AlipassQueryCardActivity.b(this.c).getMicroApplicationContext().getApplicationContext().getResources().getString(R.string.alipass_ok), new br(this)).setNegativeButton(AlipassQueryCardActivity.getBundle(this.c).getMicroApplicationContext().getApplicationContext().getResources().getString(R.string.alipass_cancel), null).create().show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.bq
 * JD-Core Version:    0.6.2
 */