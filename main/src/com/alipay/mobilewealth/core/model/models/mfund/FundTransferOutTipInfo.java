package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FundTransferOutTipInfo extends ToString
  implements Serializable
{
  public String bankChannelTip;
  public String canTransferOutZeroTip;
  public boolean displayBankChannelTip;
  public boolean displayTransferOutTimes;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.FundTransferOutTipInfo
 * JD-Core Version:    0.6.2
 */