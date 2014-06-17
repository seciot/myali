package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.util.zip.Inflater;

class NameValueBlockReader$2 extends Inflater
{
  NameValueBlockReader$2(NameValueBlockReader paramNameValueBlockReader)
  {
  }

  public int inflate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
    if ((i == 0) && (needsDictionary()))
    {
      setDictionary(Spdy3.DICTIONARY);
      i = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
    }
    return i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.NameValueBlockReader.2
 * JD-Core Version:    0.6.2
 */