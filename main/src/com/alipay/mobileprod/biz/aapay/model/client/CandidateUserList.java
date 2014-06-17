package com.alipay.mobileprod.biz.aapay.model.client;

import com.alipay.mobileprod.biz.aapay.model.AAPayUserInfo;
import java.io.Serializable;
import java.util.List;

public class CandidateUserList
  implements Serializable
{
  public String serverTime;
  public List<AAPayUserInfo> userList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.model.client.CandidateUserList
 * JD-Core Version:    0.6.2
 */