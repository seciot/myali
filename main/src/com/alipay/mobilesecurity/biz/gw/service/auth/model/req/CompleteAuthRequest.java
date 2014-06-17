package com.alipay.mobilesecurity.biz.gw.service.auth.model.req;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;
import java.util.List;

public class CompleteAuthRequest extends ToString
{
  public String authId;
  public String password;
  public List<String> permPoints;
  public Tid tid;
  public String validType;

  public String getAuthId()
  {
    return this.authId;
  }

  public String getPassword()
  {
    return this.password;
  }

  public List<String> getPermPoints()
  {
    return this.permPoints;
  }

  public Tid getTid()
  {
    return this.tid;
  }

  public String getValidType()
  {
    return this.validType;
  }

  public void setAuthId(String paramString)
  {
    this.authId = paramString;
  }

  public void setPassword(String paramString)
  {
    this.password = paramString;
  }

  public void setPermPoints(List<String> paramList)
  {
    this.permPoints = paramList;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }

  public void setValidType(String paramString)
  {
    this.validType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.auth.model.req.CompleteAuthRequest
 * JD-Core Version:    0.6.2
 */