package com.alipay.mobilesecurity.core.model.account.certify;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.io.Serializable;

public class DoRealNameResult extends MobileSecurityResult
  implements Serializable
{
  public boolean canUpgradeACertify;
  public String logonId;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.certify.DoRealNameResult
 * JD-Core Version:    0.6.2
 */