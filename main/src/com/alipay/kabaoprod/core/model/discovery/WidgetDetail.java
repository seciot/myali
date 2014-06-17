package com.alipay.kabaoprod.core.model.discovery;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class WidgetDetail extends ToString
  implements Serializable
{
  public boolean hasData;
  public String outlineContent;
  public boolean redMark = false;
  public String redMarkTip;
  public boolean showStatus = false;
  public String tips;
  public String widgetId;
  public String widgetName;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.discovery.WidgetDetail
 * JD-Core Version:    0.6.2
 */