package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.ImgInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.List;

public class FundGuideInfoResult extends KabaoCommonResult
{
  public List<ImgInfo> imgUrls;
  public String opText;

  public List<ImgInfo> getImgUrls()
  {
    return this.imgUrls;
  }

  public String getOpText()
  {
    return this.opText;
  }

  public void setImgUrls(List<ImgInfo> paramList)
  {
    this.imgUrls = paramList;
  }

  public void setOpText(String paramString)
  {
    this.opText = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundGuideInfoResult
 * JD-Core Version:    0.6.2
 */