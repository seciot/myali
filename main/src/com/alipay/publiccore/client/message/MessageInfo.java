package com.alipay.publiccore.client.message;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class MessageInfo extends ToString
  implements Serializable
{
  public ConsuBillMsgEntry consuBillMsgEntry = null;
  public ConsuRecordMsgEntry consuMsgEntry = null;
  public ConsuStatistMsgEntry consuStatistMsgEntry = null;
  public ImageMsgEntry imageMsgEntry = null;
  public String msgType = null;
  public String time = null;
  public TodoMsgEntry todoMsgEntry = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.message.MessageInfo
 * JD-Core Version:    0.6.2
 */