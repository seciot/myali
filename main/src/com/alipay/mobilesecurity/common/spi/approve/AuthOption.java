package com.alipay.mobilesecurity.common.spi.approve;

import com.alipay.mobilesecurity.common.spi.ToString;
import java.io.Serializable;

public class AuthOption extends ToString
  implements Serializable
{
  public boolean defaultChecked;
  public boolean forceChecked;
  public String optionKey;
  public String optionText;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.common.spi.approve.AuthOption
 * JD-Core Version:    0.6.2
 */