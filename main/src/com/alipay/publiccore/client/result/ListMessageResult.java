package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.message.MessageInfo;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import java.io.Serializable;
import java.util.List;

public class ListMessageResult extends PublicResult
  implements Serializable
{
  public List<MessageInfo> messages;
  public String publicId;
  public Integer total;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.ListMessageResult
 * JD-Core Version:    0.6.2
 */