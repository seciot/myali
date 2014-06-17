package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.PassShareInfo;
import java.util.List;

public class ShareInfoResult extends KabaoCommonResult
{
  public List<PassShareInfo> shareInfoList;

  public List<PassShareInfo> getShareInfoList()
  {
    return this.shareInfoList;
  }

  public void setShareInfoList(List<PassShareInfo> paramList)
  {
    this.shareInfoList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.ShareInfoResult
 * JD-Core Version:    0.6.2
 */