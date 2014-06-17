package com.alipay.mobile.security.securitycommon;

import android.accounts.Account;
import android.accounts.AccountManager;
import com.alipay.mobile.framework.AlipayApplication;

final class SecurityUtil$2
  implements Runnable
{
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
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityUtil.2
 * JD-Core Version:    0.6.2
 */