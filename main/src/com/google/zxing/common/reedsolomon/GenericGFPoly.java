package com.google.zxing.common.reedsolomon;

final class GenericGFPoly
{
  private final GenericGF a;
  private final int[] b;

  GenericGFPoly(GenericGF paramGenericGF, int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0))
      throw new IllegalArgumentException();
    this.a = paramGenericGF;
    int j = paramArrayOfInt.length;
    if ((j > i) && (paramArrayOfInt[0] == 0))
    {
      while ((i < j) && (paramArrayOfInt[i] == 0))
        i++;
      if (i == j)
      {
        this.b = paramGenericGF.getZero().b;
        return;
      }
      this.b = new int[j - i];
      System.arraycopy(paramArrayOfInt, i, this.b, 0, this.b.length);
      return;
    }
    this.b = paramArrayOfInt;
  }

  final GenericGFPoly addOrSubtract(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.a.equals(paramGenericGFPoly.a))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (isZero())
      return paramGenericGFPoly;
    if (paramGenericGFPoly.isZero())
      return this;
    Object localObject1 = this.b;
    Object localObject2 = paramGenericGFPoly.b;
    if (localObject1.length > localObject2.length);
    while (true)
    {
      int[] arrayOfInt = new int[localObject1.length];
      int i = localObject1.length - localObject2.length;
      System.arraycopy(localObject1, 0, arrayOfInt, 0, i);
      for (int j = i; j < localObject1.length; j++)
        arrayOfInt[j] = GenericGF.addOrSubtract(localObject2[(j - i)], localObject1[j]);
      return new GenericGFPoly(this.a, arrayOfInt);
      Object localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }

  final GenericGFPoly[] divide(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.a.equals(paramGenericGFPoly.a))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (paramGenericGFPoly.isZero())
      throw new IllegalArgumentException("Divide by 0");
    GenericGFPoly localGenericGFPoly1 = this.a.getZero();
    int i = paramGenericGFPoly.getCoefficient(paramGenericGFPoly.getDegree());
    int j = this.a.inverse(i);
    GenericGFPoly localGenericGFPoly2 = localGenericGFPoly1;
    GenericGFPoly localGenericGFPoly4;
    for (GenericGFPoly localGenericGFPoly3 = this; (localGenericGFPoly3.getDegree() >= paramGenericGFPoly.getDegree()) && (!localGenericGFPoly3.isZero()); localGenericGFPoly3 = localGenericGFPoly3.addOrSubtract(localGenericGFPoly4))
    {
      int k = localGenericGFPoly3.getDegree() - paramGenericGFPoly.getDegree();
      int m = this.a.multiply(localGenericGFPoly3.getCoefficient(localGenericGFPoly3.getDegree()), j);
      localGenericGFPoly4 = paramGenericGFPoly.multiplyByMonomial(k, m);
      localGenericGFPoly2 = localGenericGFPoly2.addOrSubtract(this.a.buildMonomial(k, m));
    }
    return new GenericGFPoly[] { localGenericGFPoly2, localGenericGFPoly3 };
  }

  final int evaluateAt(int paramInt)
  {
    int i = 0;
    int k;
    if (paramInt == 0)
      k = getCoefficient(0);
    while (true)
    {
      return k;
      int j = this.b.length;
      if (paramInt == 1)
      {
        int i1;
        for (k = 0; i < j; k = i1)
        {
          i1 = GenericGF.addOrSubtract(k, this.b[i]);
          i++;
        }
      }
      else
      {
        k = this.b[0];
        int m = 1;
        while (m < j)
        {
          int n = GenericGF.addOrSubtract(this.a.multiply(paramInt, k), this.b[m]);
          m++;
          k = n;
        }
      }
    }
  }

  final int getCoefficient(int paramInt)
  {
    return this.b[(-1 + this.b.length - paramInt)];
  }

  final int[] getCoefficients()
  {
    return this.b;
  }

  final int getDegree()
  {
    return -1 + this.b.length;
  }

  final boolean isZero()
  {
    int i = this.b[0];
    boolean bool = false;
    if (i == 0)
      bool = true;
    return bool;
  }

  final GenericGFPoly multiply(int paramInt)
  {
    if (paramInt == 0)
      this = this.a.getZero();
    while (paramInt == 1)
      return this;
    int i = this.b.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.a.multiply(this.b[j], paramInt);
    return new GenericGFPoly(this.a, arrayOfInt);
  }

  final GenericGFPoly multiply(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.a.equals(paramGenericGFPoly.a))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if ((isZero()) || (paramGenericGFPoly.isZero()))
      return this.a.getZero();
    int[] arrayOfInt1 = this.b;
    int i = arrayOfInt1.length;
    int[] arrayOfInt2 = paramGenericGFPoly.b;
    int j = arrayOfInt2.length;
    int[] arrayOfInt3 = new int[-1 + (i + j)];
    for (int k = 0; k < i; k++)
    {
      int m = arrayOfInt1[k];
      for (int n = 0; n < j; n++)
        arrayOfInt3[(k + n)] = GenericGF.addOrSubtract(arrayOfInt3[(k + n)], this.a.multiply(m, arrayOfInt2[n]));
    }
    return new GenericGFPoly(this.a, arrayOfInt3);
  }

  final GenericGFPoly multiplyByMonomial(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.a.getZero();
    int i = this.b.length;
    int[] arrayOfInt = new int[i + paramInt1];
    for (int j = 0; j < i; j++)
      arrayOfInt[j] = this.a.multiply(this.b[j], paramInt2);
    return new GenericGFPoly(this.a, arrayOfInt);
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(8 * getDegree());
    int i = getDegree();
    if (i >= 0)
    {
      int j = getCoefficient(i);
      label48: int k;
      if (j != 0)
      {
        if (j >= 0)
          break label101;
        localStringBuffer.append(" - ");
        j = -j;
        if ((i == 0) || (j != 1))
        {
          k = this.a.log(j);
          if (k != 0)
            break label118;
          localStringBuffer.append('1');
        }
        label79: if (i != 0)
        {
          if (i != 1)
            break label151;
          localStringBuffer.append('x');
        }
      }
      while (true)
      {
        i--;
        break;
        label101: if (localStringBuffer.length() <= 0)
          break label48;
        localStringBuffer.append(" + ");
        break label48;
        label118: if (k == 1)
        {
          localStringBuffer.append('a');
          break label79;
        }
        localStringBuffer.append("a^");
        localStringBuffer.append(k);
        break label79;
        label151: localStringBuffer.append("x^");
        localStringBuffer.append(i);
      }
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.GenericGFPoly
 * JD-Core Version:    0.6.2
 */