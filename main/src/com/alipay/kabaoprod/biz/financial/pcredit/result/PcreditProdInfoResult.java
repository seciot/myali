package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class PcreditProdInfoResult extends KabaoCommonResult
{
  public String prodInfoImgUrl;
  public String prodInfoText;

  public String getProdInfoImgUrl()
  {
    return this.prodInfoImgUrl;
  }

  public String getProdInfoText()
  {
    return this.prodInfoText;
  }

  public void setProdInfoImgUrl(String paramString)
  {
    this.prodInfoImgUrl = paramString;
  }

  public void setProdInfoText(String paramString)
  {
    this.prodInfoText = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.PcreditProdInfoResult
 * JD-Core Version:    0.6.2
 */