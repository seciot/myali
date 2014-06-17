package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.model.FollowAccountInfo;
import java.util.ArrayList;
import java.util.List;

public class OfficialHomeResult extends PagingResult
{
  public List<FollowAccountInfo> followAccounts = new ArrayList();

  public List<FollowAccountInfo> getFollowAccounts()
  {
    return this.followAccounts;
  }

  public void setFollowAccounts(List<FollowAccountInfo> paramList)
  {
    this.followAccounts = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.OfficialHomeResult
 * JD-Core Version:    0.6.2
 */