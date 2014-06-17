package com.alipay.livetradeprod.core.model.rpc;

import com.alipay.livetradeprod.core.model.base.OnsiteBaseRes;
import java.io.Serializable;

public class SendPayeeInfoRes extends OnsiteBaseRes
  implements Serializable
{
  public String dynamicId;
  public String hidenPayerAccount;
  public String payerAccount;
  public String payerHeadImageUrl;
  public boolean payerIsOnline = false;
  public String payerName;
  public String payerUserId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.rpc.SendPayeeInfoRes
 * JD-Core Version:    0.6.2
 */