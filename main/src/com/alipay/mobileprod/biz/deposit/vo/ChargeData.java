package com.alipay.mobileprod.biz.deposit.vo;

import java.io.Serializable;
import java.util.Map;

public class ChargeData
  implements Serializable
{
  public String mAccount;
  public ComponetData mAmount;
  public ComponetData mAreaData;
  public Map<String, String> mExtDatas;
  public String mGoodsName;
  public String mPermitAccout;
  public String mPrice;
  public ComponetData mSkuData;
  public ComponetData mSubAreaData;
  public ComponetData mType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.vo.ChargeData
 * JD-Core Version:    0.6.2
 */