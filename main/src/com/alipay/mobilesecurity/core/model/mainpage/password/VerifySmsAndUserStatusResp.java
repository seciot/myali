package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.VerifyCertifyByMspUserInfo;
import java.util.List;

public class VerifySmsAndUserStatusResp extends MobileSecurityResult
{
  public String token;
  public List<VerifyCertifyByMspUserInfo> userList;

  public List<VerifyCertifyByMspUserInfo> getUserList()
  {
    return this.userList;
  }

  public void setUserList(List<VerifyCertifyByMspUserInfo> paramList)
  {
    this.userList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusResp
 * JD-Core Version:    0.6.2
 */