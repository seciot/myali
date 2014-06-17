package com.alipay.android.widget.security.ui;

import android.accounts.Account;
import android.accounts.AccountManager;
import com.alipay.mobile.framework.AlipayApplication;

final class d
  implements Runnable
{
  d(SecurityWidgetGroupAcitivity paramSecurityWidgetGroupAcitivity)
  {
  }

  public final void run()
  {
    try
    {
      AccountManager localAccountManager = AccountManager.get(AlipayApplication.getInstance());
      Account[] arrayOfAccount = localAccountManager.getAccountsByType("com.eg.android.AlipayGphone");
      if (arrayOfAccount != null)
      {
        int i = arrayOfAccount.length;
        for (int j = 0; j < i; j++)
        {
          Account localAccount = arrayOfAccount[j];
          localAccountManager.removeAccount(localAccount, null, null);
          new StringBuilder("accountManager需要删除当前账户：").append(localAccount.toString()).toString();
        }
      }
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.d
 * JD-Core Version:    0.6.2
 */