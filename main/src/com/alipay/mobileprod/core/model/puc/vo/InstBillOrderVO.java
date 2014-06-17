package com.alipay.mobileprod.core.model.puc.vo;

import java.io.Serializable;
import java.util.List;

public class InstBillOrderVO
  implements Serializable
{
  public boolean available;
  public String balance;
  public String billAmount;
  public String billDate;
  public String billId;
  public List<InstBillOrderExtendField> extendField;
  public String fineAmount;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.InstBillOrderVO
 * JD-Core Version:    0.6.2
 */