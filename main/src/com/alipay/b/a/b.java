package com.alipay.b.a;

import android.util.FloatMath;
import android.util.Log;
import com.alipay.sonicwavenfc.SonicWaveNFC;
import java.lang.reflect.Array;
import java.util.Date;

public final class b
{
  private static float[] h = { 17560.0F, 17740.0F, 17920.0F, 18100.0F };
  private static float[] i = { 1500.0F, 1700.0F, 1900.0F, 2100.0F };
  private static float[] j = new float[4];
  private static float[] k = new float[4];
  private static float[] l = new float[4];
  private static float[] m = new float[4];
  private static b y;
  private float[] A;
  private float[] B;
  protected byte[] a;
  protected int b;
  protected int c;
  protected float d;
  protected boolean e;
  protected int f;
  protected long g;
  private float[][] n;
  private StringBuffer[][] o;
  private float[][] p;
  private StringBuffer[][] q;
  private short[] r;
  private int s;
  private StringBuffer t;
  private char[] u;
  private int v;
  private float w;
  private c x;
  private int[] z;

  public b()
  {
    int[] arrayOfInt1 = { 2, 144 };
    this.n = ((float[][])Array.newInstance(Float.TYPE, arrayOfInt1));
    this.o = ((StringBuffer[][])Array.newInstance(StringBuffer.class, new int[] { 2, 144 }));
    int[] arrayOfInt2 = { 2, 144 };
    this.p = ((float[][])Array.newInstance(Float.TYPE, arrayOfInt2));
    this.q = ((StringBuffer[][])Array.newInstance(StringBuffer.class, new int[] { 2, 144 }));
    this.r = new short[63800];
    this.t = new StringBuffer(289);
    this.u = new char[''];
    this.a = new byte[32];
    this.w = 12.0F;
    this.d = 0.0F;
    this.e = false;
    this.x = null;
    this.z = new int[] { -1, -1 };
    this.A = new float[] { 0.0F, 0.0F };
    this.B = new float[4];
    int i1 = 0;
    int i2;
    label217: int i3;
    if (i1 >= 4)
    {
      i2 = 0;
      if (i2 < 4)
        break label290;
      i3 = 0;
      label226: if (i3 < 4)
        break label325;
    }
    int i5;
    for (int i4 = 0; ; i4++)
    {
      if (i4 >= 4)
      {
        this.w = 12.0F;
        i5 = 0;
        if (i5 < 2)
          break label395;
        return;
        j[i1] = ((float)(2.0D * Math.cos(6.283185307179586D * h[i1] / 44100.0D)));
        i1++;
        break;
        label290: k[i2] = ((float)(2.0D * Math.sin(6.283185307179586D * h[i2] / 44100.0D)));
        i2++;
        break label217;
        label325: l[i3] = ((float)(2.0D * Math.cos(6.283185307179586D * i[i3] / 44100.0D)));
        i3++;
        break label226;
      }
      m[i4] = ((float)(2.0D * Math.sin(6.283185307179586D * i[i4] / 44100.0D)));
    }
    label395: for (int i6 = 0; ; i6++)
    {
      if (i6 >= 144)
      {
        i5++;
        break;
      }
      this.o[i5][i6] = new StringBuffer(4);
      this.q[i5][i6] = new StringBuffer(4);
    }
  }

  private static float a(short[] paramArrayOfShort, int paramInt, float paramFloat1, float paramFloat2)
  {
    float f1 = 0.0F;
    int i1 = paramInt + 220;
    float f2 = 0.0F;
    while (true)
    {
      if (paramInt >= i1)
      {
        float f5 = f2 * (0.5F * paramFloat1) - f1;
        float f6 = f2 * (0.5F * paramFloat2) - f1;
        return FloatMath.sqrt(f5 * f5 + f6 * f6) / 220.0F;
      }
      float f3 = paramArrayOfShort[paramInt] + paramFloat1 * f2 - f1;
      paramInt++;
      float f4 = f2;
      f2 = f3;
      f1 = f4;
    }
  }

  public static b a()
  {
    if (y == null)
      y = new b();
    return y;
  }

  private static StringBuffer a(float[] paramArrayOfFloat1, int[] paramArrayOfInt, float[] paramArrayOfFloat2, StringBuffer paramStringBuffer)
  {
    paramStringBuffer.setLength(0);
    paramArrayOfInt[1] = -1;
    paramArrayOfInt[0] = -1;
    paramArrayOfFloat2[1] = 0.0F;
    paramArrayOfFloat2[0] = 0.0F;
    int i1 = 0;
    int i2;
    if (i1 >= 4)
    {
      i2 = 0;
      label33: if (i2 < 4)
        break label84;
      if (paramArrayOfInt[0] != -1)
        break label121;
      paramStringBuffer = paramStringBuffer.append('0');
    }
    label84: label121: 
    do
    {
      return paramStringBuffer;
      if (paramArrayOfFloat1[i1] > paramArrayOfFloat2[0])
      {
        paramArrayOfFloat2[0] = paramArrayOfFloat1[i1];
        paramArrayOfInt[0] = i1;
      }
      i1++;
      break;
      if ((paramArrayOfFloat1[i2] > paramArrayOfFloat2[1]) && (i2 != paramArrayOfInt[0]))
      {
        paramArrayOfFloat2[1] = paramArrayOfFloat1[i2];
        paramArrayOfInt[1] = i2;
      }
      i2++;
      break label33;
      paramStringBuffer.append("0123".charAt(paramArrayOfInt[0]));
    }
    while ((paramArrayOfFloat2[0] >= 2.0F * paramArrayOfFloat2[1]) || (paramArrayOfInt[1] == -1));
    paramStringBuffer.append("0123".charAt(paramArrayOfInt[1]));
    return paramStringBuffer;
  }

  private byte[] a(int paramInt1, int paramInt2, float[][] paramArrayOfFloat, StringBuffer[][] paramArrayOfStringBuffer)
  {
    int i1 = 0;
    float f1 = 0.0F;
    int i2 = 0;
    boolean bool;
    label35: float f4;
    label57: float f2;
    int i3;
    if (i2 >= 2)
    {
      this.d = (f1 / paramInt2);
      if (this.p == paramArrayOfFloat)
      {
        bool = true;
        this.e = bool;
        if (!this.e)
          break label215;
        f4 = 5.0F * this.w;
        if ((this.e) && (f4 < 120.0F))
          f4 = 120.0F;
        if (this.e)
        {
          SonicWaveNFC.getInstance().getReceiveDataHandler().OnReceiveDataInfo(String.valueOf((int)this.d));
          Log.d("SonicWaveNFC", "m_dLastSubAmplitude=" + (int)this.d + " dMinSubAmp=" + (int)f4);
        }
        if (this.d >= f4)
          break label224;
        return null;
      }
    }
    else
    {
      f2 = 0.0F;
      i3 = 0;
      label157: if (i3 >= paramInt2)
      {
        if (f2 <= f1)
          break label574;
        i1 = i2;
      }
    }
    while (true)
    {
      i2++;
      f1 = f2;
      break;
      float f3 = f2 + paramArrayOfFloat[i2][(paramInt1 + i3)];
      i3++;
      f2 = f3;
      break label157;
      bool = false;
      break label35;
      label215: f4 = this.w;
      break label57;
      label224: for (int i4 = 0; ; i4++)
      {
        if (i4 >= paramInt2)
        {
          if (a(this.u, paramInt2) == null)
            break;
          return this.a;
        }
        this.u[i4] = paramArrayOfStringBuffer[i1][(paramInt1 + i4)].charAt(0);
      }
      int i5 = 0;
      int i8;
      if (i5 >= paramInt2)
      {
        i8 = 0;
        if (i8 >= paramInt2)
          return null;
      }
      else
      {
        int i6 = this.u[i5];
        for (int i7 = 1; ; i7++)
        {
          if (i7 >= paramArrayOfStringBuffer[i1][(paramInt1 + i5)].length())
          {
            this.u[i5] = i6;
            i5++;
            break;
          }
          this.u[i5] = paramArrayOfStringBuffer[i1][(paramInt1 + i5)].charAt(i7);
          if (a(this.u, paramInt2) != null)
            return this.a;
        }
      }
      int i9 = this.u[i8];
      int i11;
      for (int i10 = 1; ; i10++)
      {
        if ((i10 > 1) || (i10 >= paramArrayOfStringBuffer[i1][(paramInt1 + i8)].length()))
        {
          this.u[i8] = i9;
          i8++;
          break;
        }
        this.u[i8] = paramArrayOfStringBuffer[i1][(paramInt1 + i8)].charAt(i10);
        i11 = i8 + 1;
        if (i11 < paramInt2)
          break label478;
      }
      label478: int i12 = this.u[i11];
      for (int i13 = 1; ; i13++)
      {
        if ((i13 > 1) || (i13 >= paramArrayOfStringBuffer[i1][(paramInt1 + i11)].length()))
        {
          this.u[i11] = i12;
          i11++;
          break;
        }
        this.u[i11] = paramArrayOfStringBuffer[i1][(paramInt1 + i11)].charAt(i13);
        if (a(this.u, paramInt2) != null)
          return this.a;
      }
      label574: f2 = f1;
    }
  }

  private byte[] a(int paramInt, String paramString)
  {
    int i2;
    for (int i1 = 0; i1 < paramInt << 1; i1 = i2 + 1)
    {
      i2 = this.t.indexOf(paramString, i1);
      if (i2 == -1)
        break;
      if (i2 > 12 + (this.b << 2))
      {
        int i3 = -12 + (i2 - (this.b << 2));
        int i4 = i2 - 12;
        for (int i5 = 0; ; i5++)
        {
          if (i5 >= this.b)
          {
            int i10 = com.alipay.a.a.a(this.a, 0, this.b);
            if (('\0*0' + this.t.charAt(i4) != (0x3 & i10 >>> 22)) || ('\0*0' + this.t.charAt(i4 + 1) != (0x3 & i10 >>> 20)) || ('\0*0' + this.t.charAt(i4 + 2) != (0x3 & i10 >>> 18)) || ('\0*0' + this.t.charAt(i4 + 3) != (0x3 & i10 >>> 16)) || ('\0*0' + this.t.charAt(i4 + 4) != (0x3 & i10 >>> 14)) || ('\0*0' + this.t.charAt(i4 + 5) != (0x3 & i10 >>> 12)) || ('\0*0' + this.t.charAt(i4 + 6) != (0x3 & i10 >>> 10)) || ('\0*0' + this.t.charAt(i4 + 7) != (0x3 & i10 >>> 8)) || ('\0*0' + this.t.charAt(i4 + 8) != (0x3 & i10 >>> 6)) || ('\0*0' + this.t.charAt(i4 + 9) != (0x3 & i10 >>> 4)) || ('\0*0' + this.t.charAt(i4 + 10) != (0x3 & i10 >>> 2)) || ('\0*0' + this.t.charAt(i4 + 11) != (i10 & 0x3)))
              break;
            return this.a;
          }
          int i6 = "0123".indexOf(this.t.charAt(i3 + (i5 << 2)));
          int i7 = "0123".indexOf(this.t.charAt(1 + (i3 + (i5 << 2))));
          int i8 = "0123".indexOf(this.t.charAt(2 + (i3 + (i5 << 2))));
          int i9 = "0123".indexOf(this.t.charAt(3 + (i3 + (i5 << 2))));
          this.a[i5] = ((byte)(i9 | (i6 << 6 | i7 << 4 | i8 << 2)));
        }
      }
    }
    return null;
  }

  private byte[] a(char[] paramArrayOfChar, int paramInt)
  {
    this.t.setLength(0);
    this.t.append(paramArrayOfChar, 0, paramInt);
    this.t.append(paramArrayOfChar, 0, paramInt);
    String str2;
    String str3;
    String str1;
    switch ((-4 + (paramInt - 12)) / 4)
    {
    default:
      return null;
    case 8:
      str2 = "3200";
      this.b = 8;
      str3 = "0212";
      str1 = null;
      label99: if (str2 == null)
        break;
    case 16:
    case 15:
    case 24:
    }
    for (byte[] arrayOfByte = a(paramInt, str2); ; arrayOfByte = null)
    {
      if (arrayOfByte != null)
      {
        this.c = 1;
        return arrayOfByte;
        str2 = "3211";
        this.b = 16;
        str3 = "1212";
        str1 = null;
        break label99;
        this.b = 15;
        str1 = "0303";
        str2 = null;
        str3 = null;
        break label99;
        this.b = 24;
        str1 = "1313";
        str2 = null;
        str3 = null;
        break label99;
      }
      if (str1 != null)
        arrayOfByte = a(paramInt, str1);
      if (arrayOfByte != null)
      {
        this.c = 3;
        return arrayOfByte;
      }
      if (str3 != null)
        arrayOfByte = a(paramInt, str3);
      if (arrayOfByte == null)
        break;
      this.c = 0;
      return arrayOfByte;
    }
  }

  public final void a(float paramFloat)
  {
    this.w = paramFloat;
  }

  public final void a(int paramInt)
  {
    this.v = 0;
    this.s = 0;
    this.f = (paramInt * 1000);
    this.g = new Date().getTime();
    if (this.x == null)
    {
      this.x = new c(this);
      this.x.start();
    }
    this.x.a(true);
  }

  public final boolean a(short[] paramArrayOfShort, int paramInt)
  {
    int i1 = this.s;
    int i2 = 63800 - i1;
    if (i2 <= 0)
      return false;
    if (i2 > paramInt);
    while (true)
    {
      System.arraycopy(paramArrayOfShort, 0, this.r, i1, paramInt);
      if (i1 == this.s)
        this.s = (paramInt + this.s);
      return true;
      paramInt = i2;
    }
  }

  protected final byte[] b()
  {
    if ((this.v >= 144) || (this.s - (220 * this.v << 1) < 880))
    {
      if (this.v >= 144)
      {
        this.v = 0;
        this.s = 0;
        this.b = 0;
      }
      return null;
    }
    int i1 = 0;
    while (true)
    {
      int i6;
      int[] arrayOfInt;
      int i7;
      if (i1 >= 2)
      {
        this.v = (1 + this.v);
        int i5 = (-4 + (-12 + this.v)) % 16;
        i6 = (-4 + (-12 + this.v)) / 4;
        if (i5 != 0)
          break;
        arrayOfInt = new int[] { 8, 15, 16, 24 };
        i7 = 0;
      }
      while (i7 < arrayOfInt.length)
      {
        int i2;
        int i3;
        if (i6 >= arrayOfInt[i7])
          if (a(i6 - arrayOfInt[i7] << 2, 4 + (12 + (arrayOfInt[i7] << 2)), this.n, this.o) != null)
          {
            return this.a;
            i2 = i1 * 220;
            i3 = 0;
            if (i3 < 4);
          }
        try
        {
          a(this.B, this.z, this.A, this.o[i1][this.v]);
          this.n[i1][this.v] = (this.A[0] - this.A[1]);
          for (int i4 = 0; ; i4++)
          {
            if (i4 >= 4)
            {
              a(this.B, this.z, this.A, this.q[i1][this.v]);
              this.p[i1][this.v] = (this.A[0] - this.A[1]);
              break label459;
              this.B[i3] = a(this.r, i2 + (220 * this.v << 1), j[i3], k[i3]);
              i3++;
              break;
            }
            this.B[i4] = a(this.r, i2 + (220 * this.v << 1), l[i4], m[i4]);
          }
          if (a(i6 - arrayOfInt[i7] << 2, 4 + (12 + (arrayOfInt[i7] << 2)), this.p, this.q) != null)
            return this.a;
          i7++;
        }
        catch (Exception localException)
        {
          label459: i1++;
        }
      }
    }
  }

  public final void c()
  {
    this.v = 0;
    this.s = 0;
    if (this.x != null)
      this.x.a(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.b
 * JD-Core Version:    0.6.2
 */