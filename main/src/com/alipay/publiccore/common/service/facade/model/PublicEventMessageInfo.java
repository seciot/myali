package com.alipay.publiccore.common.service.facade.model;

import java.io.Serializable;

public class PublicEventMessageInfo extends ToString
  implements Serializable
{
  public PublicEventConsuBillMsgEntry consuBillMsgEntry = null;
  public PublicEventConsuRecordMsgEntry consuMsgEntry = null;
  public PublicEventConsuStatistMsgEntry consuStatistMsgEntry = null;
  public PublicEventImageMsgEntry imageMsgEntry = null;
  public String msgType = null;
  public String time = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.PublicEventMessageInfo
 * JD-Core Version:    0.6.2
 */