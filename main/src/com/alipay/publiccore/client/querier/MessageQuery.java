package com.alipay.publiccore.client.querier;

import java.io.Serializable;

public class MessageQuery extends BaseMessageQuery
  implements Serializable
{
  public String agreementId;
  public String endTime;
  public String[] includeMsgType;
  public boolean includeTotalCount = true;
  public Integer pageSize = Integer.valueOf(10);
  public String publicId;
  public String startTime;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.querier.MessageQuery
 * JD-Core Version:    0.6.2
 */