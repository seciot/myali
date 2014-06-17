package com.alipay.mobile.common.ui.contacts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.common.utils.FileUtils;
import java.io.File;
import java.io.IOException;

public class AccountSwitchReceiver extends BroadcastReceiver
{
  private void clearCache(Context paramContext)
  {
    File localFile = new File(paramContext.getCacheDir(), "rpc_cache");
    try
    {
      FileUtils.delFiles(localFile.getAbsoluteFile());
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent.getAction().equals("com.alipay.security.login")) && (paramIntent.getBooleanExtra("switchaccount", false)))
      clearCache(paramContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.AccountSwitchReceiver
 * JD-Core Version:    0.6.2
 */