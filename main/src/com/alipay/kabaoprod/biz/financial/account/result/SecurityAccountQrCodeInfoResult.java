package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.shared.result.SecurityKabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.SecurityQrCodeInfo;
import com.alipay.kabaoprod.core.model.model.SecurityShareInfo;
import java.util.Map;

public class SecurityAccountQrCodeInfoResult extends SecurityKabaoCommonResult
{
  public Map<String, String> extraInfo;
  public SecurityQrCodeInfo qrCodInfo;
  public Map<String, SecurityShareInfo> shareInfoMap;

  public Map<String, String> getExtraInfo()
  {
    return this.extraInfo;
  }

  public SecurityQrCodeInfo getQrCodInfo()
  {
    return this.qrCodInfo;
  }

  public Map<String, SecurityShareInfo> getShareInfoMap()
  {
    return this.shareInfoMap;
  }

  public void setExtraInfo(Map<String, String> paramMap)
  {
    this.extraInfo = paramMap;
  }

  public void setQrCodInfo(SecurityQrCodeInfo paramSecurityQrCodeInfo)
  {
    this.qrCodInfo = paramSecurityQrCodeInfo;
  }

  public void setShareInfoMap(Map<String, SecurityShareInfo> paramMap)
  {
    this.shareInfoMap = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.SecurityAccountQrCodeInfoResult
 * JD-Core Version:    0.6.2
 */