package com.alipay.publiccore.client.model;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.util.List;

public class DynamicConfig extends ToString
{
  private String addPublicPageWelcomeMsg;
  private String dynamicConfigUid;
  private List<String> mapiPayUrls;
  private List<String> taobaoBatchPayUrls;
  private List<String> taobaoPayUrls;
  private List<String> thirdPayUrls;

  public String getAddPublicPageWelcomeMsg()
  {
    return this.addPublicPageWelcomeMsg;
  }

  public String getDynamicConfigUid()
  {
    return this.dynamicConfigUid;
  }

  public List<String> getMapiPayUrls()
  {
    return this.mapiPayUrls;
  }

  public List<String> getTaobaoBatchPayUrls()
  {
    return this.taobaoBatchPayUrls;
  }

  public List<String> getTaobaoPayUrls()
  {
    return this.taobaoPayUrls;
  }

  public List<String> getThirdPayUrls()
  {
    return this.thirdPayUrls;
  }

  public void setAddPublicPageWelcomeMsg(String paramString)
  {
    this.addPublicPageWelcomeMsg = paramString;
  }

  public void setDynamicConfigUid(String paramString)
  {
    this.dynamicConfigUid = paramString;
  }

  public void setMapiPayUrls(List<String> paramList)
  {
    this.mapiPayUrls = paramList;
  }

  public void setTaobaoBatchPayUrls(List<String> paramList)
  {
    this.taobaoBatchPayUrls = paramList;
  }

  public void setTaobaoPayUrls(List<String> paramList)
  {
    this.taobaoPayUrls = paramList;
  }

  public void setThirdPayUrls(List<String> paramList)
  {
    this.thirdPayUrls = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.model.DynamicConfig
 * JD-Core Version:    0.6.2
 */