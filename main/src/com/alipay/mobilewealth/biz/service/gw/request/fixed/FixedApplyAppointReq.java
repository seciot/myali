package com.alipay.mobilewealth.biz.service.gw.request.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.List;

public class FixedApplyAppointReq extends ToString
  implements Serializable
{
  public double applyAmount;
  public List<String> categories;
  public String password;
  public String passwordType;
  public double profitRate;
  public String tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedApplyAppointReq
 * JD-Core Version:    0.6.2
 */