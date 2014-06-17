package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class IndexPassDetail extends ToString
  implements Serializable
{
  public boolean freeze = false;
  public boolean hidden = false;
  public boolean mark = false;
  public String outlineContent;
  public String targetUrl;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.IndexPassDetail
 * JD-Core Version:    0.6.2
 */