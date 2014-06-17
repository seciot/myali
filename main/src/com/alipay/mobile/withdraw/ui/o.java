package com.alipay.mobile.withdraw.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class o
  implements DialogInterface.OnClickListener
{
  o(WithdrawActivity paramWithdrawActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("appId", "09999988");
      localBundle.putString("sourceId", WithdrawActivity.o(this.a).getAppId());
      localBundle.putString("actionType", "toCard");
      WithdrawActivity.q(this.a).getMicroApplicationContext().startApp(WithdrawActivity.p(this.a).getAppId(), "09999988", localBundle);
      this.a.finish();
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=alertNoBankCard], [msg= ").append(localAppLoadException.getMessage()).append(" ]}").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.o
 * JD-Core Version:    0.6.2
 */