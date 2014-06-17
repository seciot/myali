package com.google.zxing.common.reedsolomon;

public final class ReedSolomonDecoder
{
  private final GenericGF a;

  public ReedSolomonDecoder(GenericGF paramGenericGF)
  {
    this.a = paramGenericGF;
  }

  public final void decode(int[] paramArrayOfInt, int paramInt)
  {
    GenericGFPoly localGenericGFPoly1 = new GenericGFPoly(this.a, paramArrayOfInt);
    int[] arrayOfInt1 = new int[paramInt];
    boolean bool = this.a.equals(GenericGF.DATA_MATRIX_FIELD_256);
    int i = 1;
    int j = 0;
    int i17;
    if (j < paramInt)
    {
      GenericGF localGenericGF = this.a;
      if (bool)
      {
        i17 = j + 1;
        label59: int i18 = localGenericGFPoly1.evaluateAt(localGenericGF.exp(i17));
        arrayOfInt1[(-1 + arrayOfInt1.length - j)] = i18;
        if (i18 == 0)
          break label863;
      }
    }
    label525: label552: label595: label863: for (int i19 = 0; ; i19 = i)
    {
      j++;
      i = i19;
      break;
      i17 = j;
      break label59;
      if (i != 0)
        return;
      Object localObject1 = new GenericGFPoly(this.a, arrayOfInt1);
      Object localObject2 = this.a.buildMonomial(paramInt, 1);
      if (((GenericGFPoly)localObject2).getDegree() < ((GenericGFPoly)localObject1).getDegree());
      while (true)
      {
        Object localObject4 = this.a.getOne();
        Object localObject5 = this.a.getZero();
        Object localObject6 = this.a.getZero();
        Object localObject7 = this.a.getOne();
        Object localObject8 = localObject2;
        Object localObject11;
        for (Object localObject9 = localObject1; localObject8.getDegree() >= paramInt / 2; localObject9 = localObject11)
        {
          if (localObject8.isZero())
            throw new ReedSolomonException("r_{i-1} was zero");
          GenericGFPoly localGenericGFPoly4 = this.a.getZero();
          int i13 = localObject8.getCoefficient(localObject8.getDegree());
          int i14 = this.a.inverse(i13);
          while ((((GenericGFPoly)localObject9).getDegree() >= localObject8.getDegree()) && (!((GenericGFPoly)localObject9).isZero()))
          {
            int i15 = ((GenericGFPoly)localObject9).getDegree() - localObject8.getDegree();
            int i16 = this.a.multiply(((GenericGFPoly)localObject9).getCoefficient(((GenericGFPoly)localObject9).getDegree()), i14);
            localGenericGFPoly4 = localGenericGFPoly4.addOrSubtract(this.a.buildMonomial(i15, i16));
            localObject9 = ((GenericGFPoly)localObject9).addOrSubtract(localObject8.multiplyByMonomial(i15, i16));
          }
          GenericGFPoly localGenericGFPoly5 = localGenericGFPoly4.multiply((GenericGFPoly)localObject5).addOrSubtract((GenericGFPoly)localObject4);
          GenericGFPoly localGenericGFPoly6 = localGenericGFPoly4.multiply((GenericGFPoly)localObject7).addOrSubtract((GenericGFPoly)localObject6);
          localObject6 = localObject7;
          localObject7 = localGenericGFPoly6;
          localObject4 = localObject5;
          localObject5 = localGenericGFPoly5;
          localObject11 = localObject8;
          localObject8 = localObject9;
        }
        int k = ((GenericGFPoly)localObject7).getCoefficient(0);
        if (k == 0)
          throw new ReedSolomonException("sigmaTilde(0) was zero");
        int m = this.a.inverse(k);
        GenericGFPoly[] arrayOfGenericGFPoly = { ((GenericGFPoly)localObject7).multiply(m), localObject8.multiply(m) };
        GenericGFPoly localGenericGFPoly2 = arrayOfGenericGFPoly[0];
        GenericGFPoly localGenericGFPoly3 = arrayOfGenericGFPoly[1];
        int n = localGenericGFPoly2.getDegree();
        Object localObject10;
        label511: int[] arrayOfInt3;
        int i4;
        int i7;
        int i8;
        int i9;
        int i11;
        int i12;
        if (n == 1)
        {
          localObject10 = new int[1];
          localObject10[0] = localGenericGFPoly2.getCoefficient(1);
          int i3 = localObject10.length;
          arrayOfInt3 = new int[i3];
          i4 = 0;
          if (i4 >= i3)
            break label774;
          i7 = this.a.inverse(localObject10[i4]);
          i8 = 1;
          i9 = 0;
          if (i9 >= i3)
            break label716;
          if (i4 == i9)
            break label841;
          i11 = this.a.multiply(localObject10[i9], i7);
          if ((i11 & 0x1) != 0)
            break label706;
          i12 = i11 | 0x1;
        }
        for (int i10 = this.a.multiply(i8, i12); ; i10 = i8)
        {
          i9++;
          i8 = i10;
          break label552;
          int[] arrayOfInt2 = new int[n];
          int i1 = 0;
          for (int i2 = 1; (i2 < this.a.getSize()) && (i1 < n); i2++)
            if (localGenericGFPoly2.evaluateAt(i2) == 0)
            {
              arrayOfInt2[i1] = this.a.inverse(i2);
              i1++;
            }
          if (i1 != n)
            throw new ReedSolomonException("Error locator degree does not match number of roots");
          localObject10 = arrayOfInt2;
          break label511;
          i12 = i11 & 0xFFFFFFFE;
          break label595;
          arrayOfInt3[i4] = this.a.multiply(localGenericGFPoly3.evaluateAt(i7), this.a.inverse(i8));
          if (bool)
            arrayOfInt3[i4] = this.a.multiply(arrayOfInt3[i4], i7);
          i4++;
          break label525;
          for (int i5 = 0; i5 < localObject10.length; i5++)
          {
            int i6 = -1 + paramArrayOfInt.length - this.a.log(localObject10[i5]);
            if (i6 < 0)
              throw new ReedSolomonException("Bad error location");
            paramArrayOfInt[i6] = GenericGF.addOrSubtract(paramArrayOfInt[i6], arrayOfInt3[i5]);
          }
          break;
        }
        Object localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonDecoder
 * JD-Core Version:    0.6.2
 */