package com.alipay.publiccore.common.service.facade.model.result;

import com.alipay.publiccore.common.service.facade.model.PublicEventMessageInfo;
import java.io.Serializable;
import java.util.List;

public class PublicEventMessageResult extends PublicResult
  implements Serializable
{
  public List<PublicEventMessageInfo> messages;
  public String publicId;
  public Integer total;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.result.PublicEventMessageResult
 * JD-Core Version:    0.6.2
 */