package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class OfficialMsgShareReq extends ToString
  implements Serializable
{
  public String actionParam;
  public String publicId;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.OfficialMsgShareReq
 * JD-Core Version:    0.6.2
 */