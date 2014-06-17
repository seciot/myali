package com.taobao.securityjni.tools;

public class RetObject
{
  public int errorCode = 0;
  public int extraData = 0;
  public byte[] functionName = null;
  public int reservedData = 0;
  public byte[] rightData = null;

  public String toString()
  {
    String str = "null";
    if (this.rightData != null)
      str = new String(this.rightData);
    return "RetObject [rightData=" + str + ", functionName=" + this.functionName + ", errorCode=" + this.errorCode + ", extraData=" + this.extraData + ", reservedData=" + this.reservedData + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.tools.RetObject
 * JD-Core Version:    0.6.2
 */