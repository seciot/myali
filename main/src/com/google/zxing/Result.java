package com.google.zxing;

import java.util.Enumeration;
import java.util.Hashtable;

public final class Result
{
  private final String a;
  private final byte[] b;
  private ResultPoint[] c;
  private final BarcodeFormat d;
  private Hashtable e;
  private final long f;

  public Result(String paramString, byte[] paramArrayOfByte, ResultPoint[] paramArrayOfResultPoint, BarcodeFormat paramBarcodeFormat)
  {
    this(paramString, paramArrayOfByte, paramArrayOfResultPoint, paramBarcodeFormat, System.currentTimeMillis());
  }

  public Result(String paramString, byte[] paramArrayOfByte, ResultPoint[] paramArrayOfResultPoint, BarcodeFormat paramBarcodeFormat, long paramLong)
  {
    if ((paramString == null) && (paramArrayOfByte == null))
      throw new IllegalArgumentException("Text and bytes are null");
    this.a = paramString;
    this.b = paramArrayOfByte;
    this.c = paramArrayOfResultPoint;
    this.d = paramBarcodeFormat;
    this.e = null;
    this.f = paramLong;
  }

  public final void addResultPoints(ResultPoint[] paramArrayOfResultPoint)
  {
    if (this.c == null)
      this.c = paramArrayOfResultPoint;
    while ((paramArrayOfResultPoint == null) || (paramArrayOfResultPoint.length <= 0))
      return;
    ResultPoint[] arrayOfResultPoint = new ResultPoint[this.c.length + paramArrayOfResultPoint.length];
    System.arraycopy(this.c, 0, arrayOfResultPoint, 0, this.c.length);
    System.arraycopy(paramArrayOfResultPoint, 0, arrayOfResultPoint, this.c.length, paramArrayOfResultPoint.length);
    this.c = arrayOfResultPoint;
  }

  public final BarcodeFormat getBarcodeFormat()
  {
    return this.d;
  }

  public final byte[] getRawBytes()
  {
    return this.b;
  }

  public final Hashtable getResultMetadata()
  {
    return this.e;
  }

  public final ResultPoint[] getResultPoints()
  {
    return this.c;
  }

  public final String getText()
  {
    return this.a;
  }

  public final long getTimestamp()
  {
    return this.f;
  }

  public final void putAllMetadata(Hashtable paramHashtable)
  {
    if (paramHashtable != null)
    {
      if (this.e != null)
        break label17;
      this.e = paramHashtable;
    }
    while (true)
    {
      return;
      label17: Enumeration localEnumeration = paramHashtable.keys();
      while (localEnumeration.hasMoreElements())
      {
        ResultMetadataType localResultMetadataType = (ResultMetadataType)localEnumeration.nextElement();
        Object localObject = paramHashtable.get(localResultMetadataType);
        this.e.put(localResultMetadataType, localObject);
      }
    }
  }

  public final void putMetadata(ResultMetadataType paramResultMetadataType, Object paramObject)
  {
    if (this.e == null)
      this.e = new Hashtable(3);
    this.e.put(paramResultMetadataType, paramObject);
  }

  public final String toString()
  {
    if (this.a == null)
      return "[" + this.b.length + " bytes]";
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.Result
 * JD-Core Version:    0.6.2
 */