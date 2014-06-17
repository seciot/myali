package com.alipay.publiccore.common.service.facade.model;

import java.io.Serializable;
import java.util.List;

public class PublicEventImageMsgEntry extends PublicEventBaseMsgEntry
  implements Serializable
{
  public List<PublicEventImageMsgItem> articles = null;
  public String createTime = null;
  public String publicId = null;
  public String showType = null;
  public String toUserId = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.PublicEventImageMsgEntry
 * JD-Core Version:    0.6.2
 */