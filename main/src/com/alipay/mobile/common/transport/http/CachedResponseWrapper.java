package com.alipay.mobile.common.transport.http;

import java.io.Serializable;
import org.apache.http.Header;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.CharArrayBuffer;

public class CachedResponseWrapper
  implements Serializable
{
  private String a;
  private byte[] b;
  private String c;
  private String d;

  public String getEtag()
  {
    return this.a;
  }

  public Header getTypeHeader()
  {
    String str = this.c + ": " + this.d;
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(str.length());
    localCharArrayBuffer.append(str);
    return new BufferedHeader(localCharArrayBuffer);
  }

  public byte[] getValue()
  {
    return this.b;
  }

  public void setEtag(String paramString)
  {
    this.a = paramString;
  }

  public void setTypeHeader(Header paramHeader)
  {
    if (paramHeader != null)
    {
      this.c = paramHeader.getName();
      this.d = paramHeader.getValue();
    }
  }

  public void setValue(byte[] paramArrayOfByte)
  {
    this.b = paramArrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.CachedResponseWrapper
 * JD-Core Version:    0.6.2
 */