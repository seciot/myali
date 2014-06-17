package com.alipay.publiccore.core.model;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class FollowRelation extends ToString
{
  public String followedeeId;
  public String followedeeType;
  public String followerId;

  public String getFollowedeeId()
  {
    return this.followedeeId;
  }

  public String getFollowedeeType()
  {
    return this.followedeeType;
  }

  public String getFollowerId()
  {
    return this.followerId;
  }

  public void setFollowedeeId(String paramString)
  {
    this.followedeeId = paramString;
  }

  public void setFollowedeeType(String paramString)
  {
    this.followedeeType = paramString;
  }

  public void setFollowerId(String paramString)
  {
    this.followerId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.core.model.FollowRelation
 * JD-Core Version:    0.6.2
 */