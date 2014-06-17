package com.alipay.mobile.security.authcenter.service;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.text.TextUtils;
import com.alipay.mobile.framework.AlipayApplication;
import java.util.concurrent.atomic.AtomicBoolean;

final class e
  implements Runnable
{
  e(LoginServiceImpl paramLoginServiceImpl, String paramString)
  {
  }

  public final void run()
  {
    while (true)
    {
      AccountManager localAccountManager;
      int j;
      try
      {
        localAccountManager = AccountManager.get(AlipayApplication.getInstance());
        Account[] arrayOfAccount = localAccountManager.getAccountsByType("com.eg.android.AlipayGphone");
        if (arrayOfAccount != null)
        {
          int i = arrayOfAccount.length;
          j = 0;
          if (j < i)
          {
            Account localAccount1 = arrayOfAccount[j];
            if (TextUtils.equals(localAccount1.name, this.a))
            {
              this.b.b.set(true);
            }
            else
            {
              localAccountManager.removeAccount(localAccount1, null, null);
              new StringBuilder("accountManager需要删除当前账户：").append(localAccount1.toString()).toString();
            }
          }
        }
      }
      catch (Exception localException)
      {
        this.b.b.set(false);
        new StringBuilder("accountManager异常：").append(localException.toString()).toString();
        return;
      }
      Account localAccount2 = new Account(this.a, "com.eg.android.AlipayGphone");
      if (!this.b.b.get())
      {
        new StringBuilder("当前添加账户信息:").append(localAccount2.toString()).toString();
        localAccountManager.addAccountExplicitly(localAccount2, null, null);
      }
      this.b.b.set(false);
      return;
      j++;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.e
 * JD-Core Version:    0.6.2
 */