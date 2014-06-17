package com.alipay.mobileapp.common.service.facade.app.facade;

import com.alipay.mobileapp.core.model.app.MobileAppInfoVO;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class QueryMyAppRes
  implements Serializable
{
  public List<MobileAppInfoVO> appList = new ArrayList();
  public String memo;
  public int resultStatus;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.app.facade.QueryMyAppRes
 * JD-Core Version:    0.6.2
 */