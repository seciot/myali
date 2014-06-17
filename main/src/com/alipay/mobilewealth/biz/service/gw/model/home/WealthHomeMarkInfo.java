package com.alipay.mobilewealth.biz.service.gw.model.home;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class WealthHomeMarkInfo extends ToString
  implements Serializable
{
  public boolean mark;
  public String markLable;
  public String markStyle = "point";
  public String markTag;
  public String markType;
  public String widgetId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeMarkInfo
 * JD-Core Version:    0.6.2
 */