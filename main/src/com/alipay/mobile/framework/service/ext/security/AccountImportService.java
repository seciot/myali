package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.List;

public abstract class AccountImportService extends ExternalService
{
  public abstract List<UserInfo> importMspAccount();

  public abstract List<UserInfo> importSSOAccount();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.AccountImportService
 * JD-Core Version:    0.6.2
 */