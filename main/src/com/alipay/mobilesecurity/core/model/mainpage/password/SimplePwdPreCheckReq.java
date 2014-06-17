package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;
import java.io.Serializable;

public class SimplePwdPreCheckReq extends ToString
  implements Serializable
{
  public String loginId;
  public boolean smsAuth;
  public Tid tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.SimplePwdPreCheckReq
 * JD-Core Version:    0.6.2
 */