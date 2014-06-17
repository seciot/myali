package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.QrCodeInfo;
import com.alipay.kabaoprod.core.model.model.ShareInfo;
import java.io.Serializable;
import java.util.Map;

public class AccountQrCodeInfoResult extends KabaoCommonResult
  implements Serializable
{
  public Map<String, String> extraInfo;
  public QrCodeInfo qrCodInfo;
  public Map<String, ShareInfo> shareInfoMap;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.AccountQrCodeInfoResult
 * JD-Core Version:    0.6.2
 */