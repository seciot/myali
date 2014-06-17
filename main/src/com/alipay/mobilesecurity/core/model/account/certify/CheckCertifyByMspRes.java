package com.alipay.mobilesecurity.core.model.account.certify;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.io.Serializable;
import java.util.List;

public class CheckCertifyByMspRes extends MobileSecurityResult
  implements Serializable
{
  public List<CertifyBank> bankList;
  public boolean canUpgradeACertify;
  public CardInfo cardInfo;
  public String viewStyle = "1";
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes
 * JD-Core Version:    0.6.2
 */