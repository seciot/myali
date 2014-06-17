package com.google.zxing;

import java.util.Hashtable;

public abstract interface Reader
{
  public abstract Result decode(BinaryBitmap paramBinaryBitmap);

  public abstract Result decode(BinaryBitmap paramBinaryBitmap, Hashtable paramHashtable);

  public abstract void reset();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.Reader
 * JD-Core Version:    0.6.2
 */