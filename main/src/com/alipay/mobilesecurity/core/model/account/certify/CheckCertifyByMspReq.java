package com.alipay.mobilesecurity.core.model.account.certify;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.io.Serializable;

public class CheckCertifyByMspReq extends ToString
  implements Serializable
{
  public String logonId;
  public boolean noticeBindCardNotCert;
  public boolean showBankList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspReq
 * JD-Core Version:    0.6.2
 */