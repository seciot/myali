package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;
import java.io.Serializable;

public class VerifyAuthCodeReq extends ToString
  implements Serializable
{
  public String businessMobileValidateStatus;
  public String code;
  public String loginId;
  public String phone;
  public Tid tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeReq
 * JD-Core Version:    0.6.2
 */