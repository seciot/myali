package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.discovery.WidgetDetail;
import java.io.Serializable;
import java.util.Map;

public class IndexWidgetResult extends KabaoCommonResult
  implements Serializable
{
  public boolean redMark = false;
  public String tabRedMarkTip;
  public Map<String, WidgetDetail> widgetDetails;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.IndexWidgetResult
 * JD-Core Version:    0.6.2
 */