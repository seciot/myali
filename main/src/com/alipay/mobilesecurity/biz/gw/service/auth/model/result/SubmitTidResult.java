package com.alipay.mobilesecurity.biz.gw.service.auth.model.result;

import com.alipay.mobilesecurity.biz.gw.service.auth.model.info.AuthInfo;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.info.PermPointInfo;
import java.util.ArrayList;
import java.util.List;

public class SubmitTidResult extends AuthBaseResult
{
  public AuthInfo authInfo;
  public List<PermPointInfo> permPoints = new ArrayList();
  public String validType;

  public AuthInfo getAuthInfo()
  {
    return this.authInfo;
  }

  public List<PermPointInfo> getPermPoints()
  {
    return this.permPoints;
  }

  public String getValidType()
  {
    return this.validType;
  }

  public void setAuthInfo(AuthInfo paramAuthInfo)
  {
    this.authInfo = paramAuthInfo;
  }

  public void setPermPoints(List<PermPointInfo> paramList)
  {
    this.permPoints = paramList;
  }

  public void setValidType(String paramString)
  {
    this.validType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.auth.model.result.SubmitTidResult
 * JD-Core Version:    0.6.2
 */