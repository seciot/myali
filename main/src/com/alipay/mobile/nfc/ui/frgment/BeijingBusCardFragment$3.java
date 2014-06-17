package com.alipay.mobile.nfc.ui.frgment;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;

class BeijingBusCardFragment$3
  implements Runnable
{
  BeijingBusCardFragment$3(BeijingBusCardFragment paramBeijingBusCardFragment)
  {
  }

  public void run()
  {
    AuthService localAuthService = (AuthService)BeijingBusCardFragment.d(this.a).getExtServiceByInterface(AuthService.class.getName());
    if ((localAuthService != null) && (localAuthService.showActivityLogin(null, localAuthService.getUserInfo())))
    {
      BeijingBusCardFragment.a();
      BeijingBusCardFragment.b(this.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BeijingBusCardFragment.3
 * JD-Core Version:    0.6.2
 */