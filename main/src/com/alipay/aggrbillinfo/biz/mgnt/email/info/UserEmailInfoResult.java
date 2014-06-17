package com.alipay.aggrbillinfo.biz.mgnt.email.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import java.util.ArrayList;
import java.util.List;

public class UserEmailInfoResult extends Result
{
  public List<UserEmailInfo> emails = new ArrayList();

  public List<UserEmailInfo> getEmails()
  {
    return this.emails;
  }

  public void setEmails(List<UserEmailInfo> paramList)
  {
    this.emails = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.email.info.UserEmailInfoResult
 * JD-Core Version:    0.6.2
 */