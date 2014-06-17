package com.alipay.publiccore.core.model.account;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import com.alipay.publiccore.core.model.ThirdPartyAccount;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class UserAccountLayoutResult extends PublicResult
  implements Serializable
{
  public LayoutModel layoutModel;
  public Map<String, ButtonObjectList> thirdAccountMenus;
  public List<ThirdPartyAccount> thirdPartyAccounts;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.core.model.account.UserAccountLayoutResult
 * JD-Core Version:    0.6.2
 */