package com.alipay.b.b;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.util.FloatMath;
import android.util.Log;
import java.io.InputStream;
import java.lang.reflect.Array;

public final class c
{
  private static c j;
  private static float[] k = { 17560.0F, 17740.0F, 17920.0F, 18100.0F };
  private static float[] l = { 1500.0F, 1700.0F, 1900.0F, 2100.0F };
  private byte[][] a = null;
  private byte[][] b = null;
  private byte[] c = new byte[880];
  private boolean d = false;
  private byte[] e = new byte[529200];
  private boolean f = false;
  private byte[] g = null;
  private int h = 0;
  private String i = "";

  protected c()
  {
    b();
    c();
    d();
  }

  private static byte a(byte paramByte)
  {
    for (int m = 0; ; m++)
    {
      if (m >= 64)
        return -1;
      if (paramByte == "0123456789abcdefghijklmnopqrstuvwxyz~!@#$%^&*()_+-`';:|/.<>?\\\"X ".charAt(m))
        return (byte)m;
    }
  }

  private static byte a(byte paramByte, String paramString)
  {
    int m = paramString.length();
    for (int n = 0; ; n++)
    {
      if (n >= m)
        return -1;
      if (paramByte == paramString.charAt(n))
        return (byte)n;
    }
  }

  public static c a()
  {
    if (j == null)
      j = new c();
    return j;
  }

  private static String a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
      return "1111111111111111";
    int m = paramArrayOfByte.length;
    if ((m <= 0) || (m > 32))
      return null;
    byte[] arrayOfByte1;
    int i1;
    int i2;
    label60: int i3;
    label68: int i19;
    label77: int i5;
    int i4;
    if ((m == 16) || (m == 32))
    {
      arrayOfByte1 = new byte[''];
      int n = paramArrayOfByte.length;
      i1 = 0;
      if (i1 >= n)
      {
        i2 = 1;
        if (i2 == 0)
          break label1034;
        i3 = 1;
        if (i3 != 1)
          break label1022;
        i19 = 0;
        if (i19 < m / 2)
          break label543;
        int i21 = m / 2;
        int i22 = i3;
        i5 = i21;
        i4 = i22;
      }
    }
    while (true)
    {
      int i10;
      label124: int i11;
      label134: byte[] arrayOfByte4;
      byte[] arrayOfByte5;
      int i12;
      label156: int i13;
      label175: int i14;
      label192: int i7;
      byte[] arrayOfByte2;
      int i6;
      if ((i4 == 0) && (i5 > 16) && (i5 <= 32))
      {
        i10 = 0;
        if (i10 >= i5)
        {
          i11 = 1;
          if (i11 == 0)
            break label1008;
          arrayOfByte4 = new byte[''];
          arrayOfByte5 = new byte[''];
          i12 = 0;
          if (i12 < 128)
            break label617;
          if (i5 > 20)
            break label630;
          i13 = 20;
          System.arraycopy(arrayOfByte1, 0, arrayOfByte5, i13 - i5, i5);
          i14 = 0;
          if (i14 < i13 / 4)
            break label637;
          i7 = 3 * (i13 / 4);
          arrayOfByte2 = arrayOfByte4;
          i6 = 3;
        }
      }
      while (true)
      {
        byte[] arrayOfByte3;
        if (i6 == 0)
        {
          arrayOfByte3 = new byte[32];
          if ((i7 > 0) && (i7 <= 8))
          {
            System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 8 - i7, i7);
            i7 = 8;
          }
        }
        while (true)
        {
          label258: StringBuffer localStringBuffer = new StringBuffer(145);
          int i8 = 0;
          label273: if (i8 >= i7)
          {
            int i9 = com.alipay.a.a.a(arrayOfByte3, 0, i7);
            Object[] arrayOfObject2 = new Object[12];
            arrayOfObject2[0] = Integer.valueOf(0x3 & i9 >>> 22);
            arrayOfObject2[1] = Integer.valueOf(0x3 & i9 >>> 20);
            arrayOfObject2[2] = Integer.valueOf(0x3 & i9 >>> 18);
            arrayOfObject2[3] = Integer.valueOf(0x3 & i9 >>> 16);
            arrayOfObject2[4] = Integer.valueOf(0x3 & i9 >>> 14);
            arrayOfObject2[5] = Integer.valueOf(0x3 & i9 >>> 12);
            arrayOfObject2[6] = Integer.valueOf(0x3 & i9 >>> 10);
            arrayOfObject2[7] = Integer.valueOf(0x3 & i9 >>> 8);
            arrayOfObject2[8] = Integer.valueOf(0x3 & i9 >>> 6);
            arrayOfObject2[9] = Integer.valueOf(0x3 & i9 >>> 4);
            arrayOfObject2[10] = Integer.valueOf(0x3 & i9 >>> 2);
            arrayOfObject2[11] = Integer.valueOf(i9 & 0x3);
            localStringBuffer.append(String.format("%X%X%X%X%X%X%X%X%X%X%X%X", arrayOfObject2));
            if (i7 != 8)
              break label907;
            switch (i6)
            {
            default:
            case 0:
            case 1:
            }
          }
          while (true)
          {
            return localStringBuffer.toString();
            if (a(paramArrayOfByte[i1], "0123456789abcdef") == -1)
            {
              i2 = 0;
              break label60;
            }
            i1++;
            break;
            label543: int i20 = a(paramArrayOfByte[(i19 << 1)], "0123456789abcdef");
            arrayOfByte1[i19] = ((byte)(a(paramArrayOfByte[(1 + (i19 << 1))], "0123456789abcdef") | i20 << 4));
            i19++;
            break label77;
            if ((arrayOfByte1[i10] == 32) || (a(arrayOfByte1[i10]) == -1))
            {
              i11 = 0;
              break label134;
            }
            i10++;
            break label124;
            label617: arrayOfByte5[i12] = 32;
            i12++;
            break label156;
            label630: i13 = 32;
            break label175;
            label637: int i15 = a(arrayOfByte5[(i14 << 2)]);
            int i16 = a(arrayOfByte5[(1 + (i14 << 2))]);
            int i17 = a(arrayOfByte5[(2 + (i14 << 2))]);
            int i18 = a(arrayOfByte5[(3 + (i14 << 2))]);
            arrayOfByte4[(i14 * 3)] = ((byte)(i15 << 2 | 0x3 & i16 >>> 4));
            arrayOfByte4[(1 + i14 * 3)] = ((byte)(i16 << 4 | 0xF & i17 >>> 2));
            arrayOfByte4[(2 + i14 * 3)] = ((byte)(i17 << 6 | i18 & 0x3F));
            i14++;
            break label192;
            if ((i7 > 8) && (i7 <= 16))
            {
              System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 16 - i7, i7);
              i7 = 16;
              break label258;
            }
            return null;
            Object[] arrayOfObject1 = new Object[4];
            arrayOfObject1[0] = Integer.valueOf(0x3 & arrayOfByte3[i8] >>> 6);
            arrayOfObject1[1] = Integer.valueOf(0x3 & arrayOfByte3[i8] >>> 4);
            arrayOfObject1[2] = Integer.valueOf(0x3 & arrayOfByte3[i8] >>> 2);
            arrayOfObject1[3] = Integer.valueOf(0x3 & arrayOfByte3[i8]);
            localStringBuffer.append(String.format("%X%X%X%X", arrayOfObject1));
            i8++;
            break label273;
            localStringBuffer.append("0212");
            continue;
            localStringBuffer.append("3200");
            continue;
            label907: if (i7 == 16)
              switch (i6)
              {
              default:
                break;
              case 0:
                localStringBuffer.append("1212");
                break;
              case 1:
                localStringBuffer.append("3211");
                break;
              }
            else if (i7 == 15)
              localStringBuffer.append("0303");
            else if (i7 == 24)
              localStringBuffer.append("1313");
          }
          arrayOfByte3 = arrayOfByte2;
        }
        label1008: i6 = i4;
        arrayOfByte2 = arrayOfByte1;
        i7 = i5;
      }
      label1022: i4 = i3;
      arrayOfByte1 = paramArrayOfByte;
      i5 = m;
      continue;
      label1034: i3 = 0;
      break label68;
      i5 = m;
      arrayOfByte1 = paramArrayOfByte;
      i4 = 0;
    }
  }

  private boolean a(int paramInt)
  {
    if ((this.g == null) || (this.h <= 0))
      return false;
    int m = 0;
    int n = 529200 / this.h;
    int i1;
    label51: int i2;
    if (paramInt < 6)
    {
      i1 = 44100 * paramInt / (this.h / 2);
      if (n >= i1)
        break label80;
      i2 = 0;
      label54: if (i2 < n)
        break label86;
    }
    for (int i7 = m / 2; ; i7++)
    {
      if (i7 >= 264600)
      {
        return true;
        paramInt = 6;
        break;
        label80: n = i1;
        break label51;
        label86: int i3 = 0;
        if (i3 >= this.h / 2)
        {
          i2++;
          break label54;
        }
        int i4 = (short)(0xFF & this.e[(i2 * this.h + (i3 << 1))] | (0xFF & this.e[(1 + (i2 * this.h + (i3 << 1)))]) << 8);
        int i6;
        if (i2 % 3 == 0)
          i6 = (short)(0xFF & this.g[(i3 << 1)] | (0xFF & this.g[(1 + (i3 << 1))]) << 8);
        for (int i5 = (short)(int)(0.8D * i4 + 0.2D * i6); ; i5 = (short)(int)(0.8D * i4))
        {
          this.e[(i2 * this.h + (i3 << 1))] = ((byte)i5);
          this.e[(1 + (i2 * this.h + (i3 << 1)))] = ((byte)(i5 >> 8));
          m += 2;
          i3++;
          break;
        }
      }
      int i8 = (short)(int)(0.8D * (short)(0xFF & this.e[(i7 << 1)] | (0xFF & this.e[(1 + (i7 << 1))]) << 8));
      this.e[(i7 << 1)] = ((byte)i8);
      this.e[(1 + (i7 << 1))] = ((byte)(i8 >> 8));
    }
  }

  private boolean a(InputStream paramInputStream)
  {
    for (boolean bool = false; ; bool = false)
    {
      int m;
      int n;
      do
        try
        {
          byte[] arrayOfByte = new byte[paramInputStream.available()];
          m = paramInputStream.read(arrayOfByte);
          if (this.g != null)
            this.g = null;
          this.h = 0;
          bool = false;
          char[] arrayOfChar;
          if (m > 0)
          {
            arrayOfChar = new char[] { 100, 97, 116, 97 };
            n = 0;
          }
          else
          {
            while (true)
            {
              paramInputStream.close();
              return bool;
              if ((arrayOfByte[n] != arrayOfChar[0]) || (arrayOfByte[(n + 1)] != arrayOfChar[1]) || (arrayOfByte[(n + 2)] != arrayOfChar[2]) || (arrayOfByte[(n + 3)] != arrayOfChar[3]))
                break;
              int i1 = 0xFF & arrayOfByte[(n + 4)] | (0xFF & arrayOfByte[(1 + (n + 4))]) << 8 | (0xFF & arrayOfByte[(2 + (n + 4))]) << 16 | (0xFF & arrayOfByte[(3 + (n + 4))]) << 24;
              if (i1 <= 0)
                break;
              int i2 = -4 + (-4 + (m - n));
              bool = false;
              if (i1 > i2)
                break;
              this.h = i1;
              this.g = new byte[i1];
              System.arraycopy(arrayOfByte, 4 + (n + 4), this.g, 0, i1);
              bool = true;
            }
            n++;
          }
        }
        catch (Exception localException)
        {
          return bool;
        }
      while (n < -4 + (m - 4));
    }
  }

  private void b()
  {
    int[] arrayOfInt = { 4, 880 };
    this.a = ((byte[][])Array.newInstance(Byte.TYPE, arrayOfInt));
    int m = 0;
    if (m >= 4)
      return;
    float f1 = (float)(6.283185307179586D * k[m] / 44100.0D);
    for (int n = 0; ; n++)
    {
      if (n >= 440)
      {
        m++;
        break;
      }
      int i1 = (short)(int)((297.88181F * n - 0.6770042F * n * n) * FloatMath.sin(f1 * n));
      this.a[m][(n << 1)] = ((byte)i1);
      this.a[m][(1 + (n << 1))] = ((byte)(i1 >> 8));
    }
  }

  private byte[] b(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    paramArrayOfInt[0] = 0;
    if (paramInt <= 0);
    String str;
    int m;
    int n;
    do
    {
      do
      {
        return null;
        str = a(paramArrayOfByte);
      }
      while (str == null);
      Log.d("SonicWaveNFC", "strHex=" + str);
      m = str.length();
      n = 264600 / (m * 220 << 1);
    }
    while (n <= 0);
    int i2;
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= n)
        return this.e;
      i2 = 0;
      if (i2 < m)
        break;
    }
    byte[] arrayOfByte;
    if ((this.d) && (i1 >= n * 3 / 4))
      arrayOfByte = this.c;
    while (true)
    {
      System.arraycopy(arrayOfByte, 0, this.e, paramArrayOfInt[0], 880);
      paramArrayOfInt[0] = (880 + paramArrayOfInt[0]);
      i2++;
      break;
      int i3 = "0123".indexOf(str.charAt(i2));
      if (i3 >= 0)
      {
        if (this.d)
          arrayOfByte = this.b[i3];
        else
          arrayOfByte = this.a[i3];
      }
      else
        arrayOfByte = null;
    }
  }

  private void c()
  {
    int[] arrayOfInt = { 4, 880 };
    this.b = ((byte[][])Array.newInstance(Byte.TYPE, arrayOfInt));
    int m = 0;
    if (m >= 4)
      return;
    float f1 = (float)(6.283185307179586D * l[m] / 44100.0D);
    for (int n = 0; ; n++)
    {
      if (n >= 440)
      {
        m++;
        break;
      }
      int i1 = (short)(int)((float)(0.3D * (297.88181F * n - 0.6770042F * n * n)) * FloatMath.sin(f1 * n));
      this.b[m][(n << 1)] = ((byte)i1);
      this.b[m][(1 + (n << 1))] = ((byte)(i1 >> 8));
    }
  }

  private void d()
  {
    for (int m = 0; ; m++)
    {
      if (m >= 220)
        return;
      this.c[(m << 1)] = 0;
      this.c[(1 + (m << 1))] = 0;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public final boolean a(Context paramContext, String paramString)
  {
    String str = String.format("Asset:%s", new Object[] { paramString });
    boolean bool1;
    if (str.equalsIgnoreCase(this.i))
    {
      byte[] arrayOfByte = this.g;
      bool1 = false;
      if (arrayOfByte != null)
        bool1 = true;
    }
    InputStream localInputStream;
    while (true)
    {
      return bool1;
      this.i = str;
      localInputStream = null;
      try
      {
        localInputStream = paramContext.getResources().getAssets().open(paramString);
        bool1 = false;
        if (localInputStream != null)
        {
          boolean bool2 = a(localInputStream);
          bool1 = bool2;
        }
        if (localInputStream != null)
          try
          {
            localInputStream.close();
            return bool1;
          }
          catch (Exception localException4)
          {
            return bool1;
          }
      }
      catch (Exception localException2)
      {
        bool1 = false;
        if (localInputStream != null)
          try
          {
            localInputStream.close();
            return false;
          }
          catch (Exception localException3)
          {
            return false;
          }
      }
      finally
      {
        if (localInputStream == null);
      }
    }
    try
    {
      localInputStream.close();
      label137: throw localObject;
    }
    catch (Exception localException1)
    {
      break label137;
    }
  }

  public final byte[] a(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt)
  {
    byte[] arrayOfByte;
    if (this.d)
    {
      paramArrayOfInt[0] = 0;
      if (paramInt <= 0)
        arrayOfByte = null;
    }
    label160: label230: 
    do
    {
      return arrayOfByte;
      String str = a(paramArrayOfByte);
      if (str == null)
        return null;
      Log.d("SonicWaveNFC", "strHex=" + str);
      if (paramInt > 6)
        paramInt = 6;
      int m = str.length();
      int n = 44100 * paramInt / (m * 220 << 1);
      if (n <= 0)
        return null;
      a locala = new a();
      if (this.d);
      int i1;
      for (float[] arrayOfFloat = l; ; arrayOfFloat = k)
      {
        i1 = 0;
        if (i1 < n)
          break;
        return this.e;
      }
      int i2;
      if ((this.d) && (i1 >= (n << 1) / 3))
        i2 = 1;
      int i4;
      for (int i3 = 0; ; i3++)
      {
        if (i3 >= m)
        {
          i1++;
          break;
          i2 = 0;
          break label160;
        }
        locala.a((int)arrayOfFloat["0123".indexOf(str.charAt(i3))]);
        i4 = 0;
        if (i4 < 440)
          break label230;
        paramArrayOfInt[0] = (880 + paramArrayOfInt[0]);
      }
      if (i2 != 0);
      for (int i5 = 0; ; i5 = locala.a())
      {
        this.e[(paramArrayOfInt[0] + (i4 << 1))] = ((byte)i5);
        this.e[(1 + (paramArrayOfInt[0] + (i4 << 1)))] = ((byte)(i5 >> 8));
        i4++;
        break;
      }
      arrayOfByte = b(paramArrayOfByte, paramArrayOfInt, paramInt);
    }
    while (!this.f);
    a(paramInt);
    return arrayOfByte;
  }

  public final void b(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.b.c
 * JD-Core Version:    0.6.2
 */