package com.alipay.mobile.framework.service.ext.security;

import android.content.Intent;
import com.alipay.mobile.framework.service.ext.ExternalService;
import java.util.List;

public abstract class SecurityInitService extends ExternalService
{
  public abstract void copyMspTidToWalletId();

  public abstract void securityInit(Intent paramIntent);

  public abstract void updateWalletLoginAuth(List<String> paramList);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.SecurityInitService
 * JD-Core Version:    0.6.2
 */