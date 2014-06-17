package com.alipay.livetradeprod.core.model.base;

import com.alipay.livetradeprod.core.model.ToString;
import java.io.Serializable;

public class DisplayUserInfo extends ToString
  implements Serializable
{
  public String account;
  public String headImageUrl;
  public String name;
  public String userId;

  public String toString()
  {
    return "DisplayUserInfo [name=" + this.name + ", account=" + this.account + ", headImageUrl=" + this.headImageUrl + ", userId=" + this.userId + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.base.DisplayUserInfo
 * JD-Core Version:    0.6.2
 */