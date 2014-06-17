package com.alipay.publiccore.client.result;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import java.io.Serializable;

public class OfficialSmartRecommendResult extends PublicResult
  implements Serializable
{
  private boolean hasRecommend;
  private String publicId;
  private String publicName;
  private String thirdPartyNo;

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getPublicName()
  {
    return this.publicName;
  }

  public String getThirdPartyNo()
  {
    return this.thirdPartyNo;
  }

  public boolean isHasRecommend()
  {
    return this.hasRecommend;
  }

  public void setHasRecommend(boolean paramBoolean)
  {
    this.hasRecommend = paramBoolean;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setPublicName(String paramString)
  {
    this.publicName = paramString;
  }

  public void setThirdPartyNo(String paramString)
  {
    this.thirdPartyNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.OfficialSmartRecommendResult
 * JD-Core Version:    0.6.2
 */