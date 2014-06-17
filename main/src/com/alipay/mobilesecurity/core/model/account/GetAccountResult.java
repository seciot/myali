package com.alipay.mobilesecurity.core.model.account;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.UserFlagEntity;
import java.util.List;

public class GetAccountResult extends MobileSecurityResult
{
  public List<UserFlagEntity> userIds;

  public List<UserFlagEntity> getUserIds()
  {
    return this.userIds;
  }

  public void setUserIds(List<UserFlagEntity> paramList)
  {
    this.userIds = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.GetAccountResult
 * JD-Core Version:    0.6.2
 */