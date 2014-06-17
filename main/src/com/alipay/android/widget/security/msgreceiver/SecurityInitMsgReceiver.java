package com.alipay.android.widget.security.msgreceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.SecurityInitService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SecurityInitMsgReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    SecurityInitService localSecurityInitService = (SecurityInitService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(SecurityInitService.class.getName());
    if ("com.alipay.security.init".equals(paramIntent.getAction()))
      localSecurityInitService.securityInit(paramIntent);
    while (!"com.alipay.security.login".equals(paramIntent.getAction()))
      return;
    List localList = ((AccountService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName())).getAutoLoginAlipayUser();
    Object localObject;
    if (localList == null)
      localObject = null;
    while (true)
    {
      localSecurityInitService.updateWalletLoginAuth((List)localObject);
      return;
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        UserInfo localUserInfo = (UserInfo)localIterator.next();
        if (localUserInfo.isAutoLogin())
          localArrayList.add(localUserInfo.getUserId());
      }
      if (localArrayList.size() == 0)
        localObject = null;
      else
        localObject = localArrayList;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.msgreceiver.SecurityInitMsgReceiver
 * JD-Core Version:    0.6.2
 */