package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class ShareInfo extends ToString
  implements Serializable
{
  public String content;
  public String imgUrl;
  public boolean isCapture;
  public String shortUrl;
  public String targetUrl;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.ShareInfo
 * JD-Core Version:    0.6.2
 */