package com.alipay.mobilesecurity.core.model.account.certify;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.io.Serializable;

public class DoRealNameReq extends ToString
  implements Serializable
{
  public String certNo;
  public String logonId;
  public String name;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.certify.DoRealNameReq
 * JD-Core Version:    0.6.2
 */