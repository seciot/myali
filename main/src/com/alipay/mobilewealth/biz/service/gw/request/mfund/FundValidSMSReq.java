package com.alipay.mobilewealth.biz.service.gw.request.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FundValidSMSReq extends ToString
  implements Serializable
{
  public String fillType;
  public String mobile;
  public String tairKey;
  public String validCode;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.mfund.FundValidSMSReq
 * JD-Core Version:    0.6.2
 */