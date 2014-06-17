package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.model.FollowAccountInfo;
import com.alipay.publiccore.common.service.facade.model.result.PagingResult;
import java.util.ArrayList;
import java.util.List;

public class OfficialHomeListResult extends PagingResult
{
  public String dynamicConfigUid;
  public List<FollowAccountInfo> followAccounts = new ArrayList();
  public String userId;

  public String getDynamicConfigUid()
  {
    return this.dynamicConfigUid;
  }

  public List<FollowAccountInfo> getFollowAccounts()
  {
    return this.followAccounts;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setDynamicConfigUid(String paramString)
  {
    this.dynamicConfigUid = paramString;
  }

  public void setFollowAccounts(List<FollowAccountInfo> paramList)
  {
    this.followAccounts = paramList;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.OfficialHomeListResult
 * JD-Core Version:    0.6.2
 */