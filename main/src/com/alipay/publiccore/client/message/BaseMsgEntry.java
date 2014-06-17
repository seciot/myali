package com.alipay.publiccore.client.message;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class BaseMsgEntry extends ToString
  implements Serializable
{
  public String agreementId;
  public boolean clieckedDelete;
  public boolean couldDelete;
  public String msgId;
  public String msgType;
  public boolean readed;
  public String thirdAccountId;
  public String time;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.message.BaseMsgEntry
 * JD-Core Version:    0.6.2
 */