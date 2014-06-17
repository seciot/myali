package com.alipay.mobileapp.common.service.facade.app.facade;

import com.alipay.mobileapp.core.model.app.MobileAppInfoVO;
import java.io.Serializable;
import java.util.List;

public class QueryMyAppReq
  implements Serializable
{
  public List<MobileAppInfoVO> appList;
  public String channel;
  public String platform;
  public String platformVersion;
  public boolean pre;
  public String productID;
  public String productVersion;
  public String resolution;
  public String userAgent;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.app.facade.QueryMyAppReq
 * JD-Core Version:    0.6.2
 */