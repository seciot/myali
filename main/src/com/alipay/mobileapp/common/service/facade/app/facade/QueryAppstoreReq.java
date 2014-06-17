package com.alipay.mobileapp.common.service.facade.app.facade;

import java.io.Serializable;
import java.util.List;

public class QueryAppstoreReq
  implements Serializable
{
  public String cateId;
  public List<String> myAppIds;
  public int page;
  public int pagesize;
  public String platform;
  public boolean pre;
  public String resolution;
  public String stage;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.app.facade.QueryAppstoreReq
 * JD-Core Version:    0.6.2
 */