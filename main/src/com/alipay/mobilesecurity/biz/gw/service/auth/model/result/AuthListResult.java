package com.alipay.mobilesecurity.biz.gw.service.auth.model.result;

import com.alipay.mobilesecurity.biz.gw.service.auth.model.info.AuthInfo;
import java.util.List;

public class AuthListResult extends AuthBaseResult
{
  public List<AuthInfo> authModels;

  public List<AuthInfo> getAuthModels()
  {
    return this.authModels;
  }

  public void setAuthModels(List<AuthInfo> paramList)
  {
    this.authModels = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.auth.model.result.AuthListResult
 * JD-Core Version:    0.6.2
 */