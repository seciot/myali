package com.alipay.mobilesecurity.core.model.account.certify;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.io.Serializable;

public class SubmitACertifyReq extends ToString
  implements Serializable
{
  public String certNo;
  public String downImgUrl;
  public String expireDate;
  public boolean isForever;
  public String logonId;
  public String name;
  public String upImgUrl;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.certify.SubmitACertifyReq
 * JD-Core Version:    0.6.2
 */