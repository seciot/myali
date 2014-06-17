package com.google.zxing.common.reedsolomon;

import java.util.Vector;

public final class ReedSolomonEncoder
{
  private final GenericGF a;
  private final Vector b;

  public ReedSolomonEncoder(GenericGF paramGenericGF)
  {
    if (!GenericGF.QR_CODE_FIELD_256.equals(paramGenericGF))
      throw new IllegalArgumentException("Only QR Code is supported at this time");
    this.a = paramGenericGF;
    this.b = new Vector();
    this.b.addElement(new GenericGFPoly(paramGenericGF, new int[] { 1 }));
  }

  private GenericGFPoly a(int paramInt)
  {
    if (paramInt >= this.b.size())
    {
      GenericGFPoly localGenericGFPoly1 = (GenericGFPoly)this.b.elementAt(-1 + this.b.size());
      int i = this.b.size();
      GenericGFPoly localGenericGFPoly2 = localGenericGFPoly1;
      for (int j = i; j <= paramInt; j++)
      {
        GenericGF localGenericGF = this.a;
        int[] arrayOfInt = new int[2];
        arrayOfInt[0] = 1;
        arrayOfInt[1] = this.a.exp(j - 1);
        localGenericGFPoly2 = localGenericGFPoly2.multiply(new GenericGFPoly(localGenericGF, arrayOfInt));
        this.b.addElement(localGenericGFPoly2);
      }
    }
    return (GenericGFPoly)this.b.elementAt(paramInt);
  }

  public final void encode(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("No error correction bytes");
    int i = paramArrayOfInt.length - paramInt;
    if (i <= 0)
      throw new IllegalArgumentException("No data bytes provided");
    GenericGFPoly localGenericGFPoly = a(paramInt);
    int[] arrayOfInt1 = new int[i];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt1, 0, i);
    int[] arrayOfInt2 = new GenericGFPoly(this.a, arrayOfInt1).multiplyByMonomial(paramInt, 1).divide(localGenericGFPoly)[1].getCoefficients();
    int j = paramInt - arrayOfInt2.length;
    for (int k = 0; k < j; k++)
      paramArrayOfInt[(i + k)] = 0;
    System.arraycopy(arrayOfInt2, 0, paramArrayOfInt, i + j, arrayOfInt2.length);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonEncoder
 * JD-Core Version:    0.6.2
 */