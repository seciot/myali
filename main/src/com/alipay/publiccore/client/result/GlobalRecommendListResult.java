package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.model.OfficialRecommendInfo;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import java.util.ArrayList;
import java.util.List;

public class GlobalRecommendListResult extends PublicResult
{
  private boolean hasNextPage;
  private List<OfficialRecommendInfo> officialRecommendInfos = new ArrayList();

  public List<OfficialRecommendInfo> getOfficialRecommendInfos()
  {
    return this.officialRecommendInfos;
  }

  public boolean isHasNextPage()
  {
    return this.hasNextPage;
  }

  public void setHasNextPage(boolean paramBoolean)
  {
    this.hasNextPage = paramBoolean;
  }

  public void setOfficialRecommendInfos(List<OfficialRecommendInfo> paramList)
  {
    this.officialRecommendInfos = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.GlobalRecommendListResult
 * JD-Core Version:    0.6.2
 */