package com.alipay.livetradeprod.core.model.base;

import com.alipay.livetradeprod.core.model.ToString;
import java.io.Serializable;

public class OnsiteBaseRes extends ToString
  implements Serializable
{
  public boolean queryOrNo;
  public String resultCode;
  public String resultDes;
  public boolean success = false;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.base.OnsiteBaseRes
 * JD-Core Version:    0.6.2
 */