package android.util;

class Base64$Encoder extends Base64.Coder
{
  public static final int LINE_GROUPS = 19;
  private static final byte[] a;
  private static final byte[] b;
  private final byte[] c;
  private int d;
  public final boolean do_cr;
  public final boolean do_newline;
  public final boolean do_padding;
  private final byte[] e;
  int tailLen;

  static
  {
    if (!Base64.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      a = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      b = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }

  public Base64$Encoder(int paramInt, byte[] paramArrayOfByte)
  {
    this.output = paramArrayOfByte;
    boolean bool2;
    boolean bool3;
    label35: label47: byte[] arrayOfByte;
    if ((paramInt & 0x1) == 0)
    {
      bool2 = bool1;
      this.do_padding = bool2;
      if ((paramInt & 0x2) != 0)
        break label106;
      bool3 = bool1;
      this.do_newline = bool3;
      if ((paramInt & 0x4) == 0)
        break label112;
      this.do_cr = bool1;
      if ((paramInt & 0x8) != 0)
        break label117;
      arrayOfByte = a;
      label64: this.e = arrayOfByte;
      this.c = new byte[2];
      this.tailLen = 0;
      if (!this.do_newline)
        break label125;
    }
    label106: label112: label117: label125: for (int i = 19; ; i = -1)
    {
      this.d = i;
      return;
      bool2 = false;
      break;
      bool3 = false;
      break label35;
      bool1 = false;
      break label47;
      arrayOfByte = b;
      break label64;
    }
  }

  public int maxOutputSize(int paramInt)
  {
    return 10 + paramInt * 8 / 5;
  }

  public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte1 = this.e;
    byte[] arrayOfByte2 = this.output;
    int i = this.d;
    int j = paramInt2 + paramInt1;
    int i1;
    int m;
    label58: int i36;
    int i37;
    int i3;
    int i2;
    switch (this.tailLen)
    {
    default:
      i1 = -1;
      m = paramInt1;
      if (i1 != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(0x3F & i1 >> 18)];
        arrayOfByte2[1] = arrayOfByte1[(0x3F & i1 >> 12)];
        arrayOfByte2[2] = arrayOfByte1[(0x3F & i1 >> 6)];
        i36 = 4;
        arrayOfByte2[3] = arrayOfByte1[(i1 & 0x3F)];
        i37 = i - 1;
        if (i37 == 0)
        {
          if (this.do_cr)
          {
            i36 = 5;
            arrayOfByte2[4] = 13;
          }
          i3 = i36 + 1;
          arrayOfByte2[i36] = 10;
          i2 = 19;
        }
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      label168: int i32;
      int i33;
      int i34;
      int i35;
      if (m + 3 <= j)
      {
        int i31 = (0xFF & paramArrayOfByte[m]) << 16 | (0xFF & paramArrayOfByte[(m + 1)]) << 8 | 0xFF & paramArrayOfByte[(m + 2)];
        arrayOfByte2[i3] = arrayOfByte1[(0x3F & i31 >> 18)];
        arrayOfByte2[(i3 + 1)] = arrayOfByte1[(0x3F & i31 >> 12)];
        arrayOfByte2[(i3 + 2)] = arrayOfByte1[(0x3F & i31 >> 6)];
        arrayOfByte2[(i3 + 3)] = arrayOfByte1[(i31 & 0x3F)];
        i32 = m + 3;
        i33 = i3 + 4;
        i34 = i2 - 1;
        if (i34 != 0)
          break label1235;
        if (!this.do_cr)
          break label1228;
        i35 = i33 + 1;
        arrayOfByte2[i33] = 13;
      }
      while (true)
      {
        i3 = i35 + 1;
        arrayOfByte2[i35] = 10;
        m = i32;
        i2 = 19;
        break label168;
        i1 = -1;
        m = paramInt1;
        break label58;
        if (paramInt1 + 2 > j)
          break;
        int i38 = (0xFF & this.c[0]) << 16;
        int i39 = paramInt1 + 1;
        int i40 = i38 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
        int i41 = i39 + 1;
        int i42 = i40 | 0xFF & paramArrayOfByte[i39];
        this.tailLen = 0;
        i1 = i42;
        m = i41;
        break label58;
        if (paramInt1 + 1 > j)
          break;
        int k = (0xFF & this.c[0]) << 16 | (0xFF & this.c[1]) << 8;
        m = paramInt1 + 1;
        int n = k | 0xFF & paramArrayOfByte[paramInt1];
        this.tailLen = 0;
        i1 = n;
        break label58;
        int i10;
        int i9;
        label770: int i13;
        label811: int i17;
        int i18;
        if (paramBoolean)
        {
          if (m - this.tailLen == j - 1)
          {
            int i24;
            int i23;
            if (this.tailLen > 0)
            {
              byte[] arrayOfByte8 = this.c;
              i24 = 1;
              i23 = arrayOfByte8[0];
            }
            while (true)
            {
              int i25 = (i23 & 0xFF) << 4;
              this.tailLen -= i24;
              int i26 = i3 + 1;
              arrayOfByte2[i3] = arrayOfByte1[(0x3F & i25 >> 6)];
              int i27 = i26 + 1;
              arrayOfByte2[i26] = arrayOfByte1[(i25 & 0x3F)];
              if (this.do_padding)
              {
                int i30 = i27 + 1;
                arrayOfByte2[i27] = 61;
                i27 = i30 + 1;
                arrayOfByte2[i30] = 61;
              }
              if (this.do_newline)
              {
                if (this.do_cr)
                {
                  int i29 = i27 + 1;
                  arrayOfByte2[i27] = 13;
                  i27 = i29;
                }
                int i28 = i27 + 1;
                arrayOfByte2[i27] = 10;
                i27 = i28;
              }
              i3 = i27;
              if (($assertionsDisabled) || (this.tailLen == 0))
                break;
              throw new AssertionError();
              int i22 = m + 1;
              i23 = paramArrayOfByte[m];
              m = i22;
              i24 = 0;
            }
          }
          if (m - this.tailLen == j - 2)
            if (this.tailLen > 1)
            {
              byte[] arrayOfByte7 = this.c;
              i10 = 1;
              i9 = arrayOfByte7[0];
              int i11 = (i9 & 0xFF) << 10;
              if (this.tailLen <= 0)
                break label995;
              byte[] arrayOfByte6 = this.c;
              int i21 = i10 + 1;
              i13 = arrayOfByte6[i10];
              i10 = i21;
              int i14 = i11 | (i13 & 0xFF) << 2;
              this.tailLen -= i10;
              int i15 = i3 + 1;
              arrayOfByte2[i3] = arrayOfByte1[(0x3F & i14 >> 12)];
              int i16 = i15 + 1;
              arrayOfByte2[i15] = arrayOfByte1[(0x3F & i14 >> 6)];
              i17 = i16 + 1;
              arrayOfByte2[i16] = arrayOfByte1[(i14 & 0x3F)];
              if (!this.do_padding)
                break label1221;
              i18 = i17 + 1;
              arrayOfByte2[i17] = 61;
            }
        }
        while (true)
        {
          if (this.do_newline)
          {
            if (this.do_cr)
            {
              int i20 = i18 + 1;
              arrayOfByte2[i18] = 13;
              i18 = i20;
            }
            int i19 = i18 + 1;
            arrayOfByte2[i18] = 10;
            i18 = i19;
          }
          i3 = i18;
          break;
          int i8 = m + 1;
          i9 = paramArrayOfByte[m];
          m = i8;
          i10 = 0;
          break label770;
          label995: int i12 = m + 1;
          i13 = paramArrayOfByte[m];
          m = i12;
          break label811;
          if ((!this.do_newline) || (i3 <= 0) || (i2 == 19))
            break;
          int i7;
          if (this.do_cr)
          {
            i7 = i3 + 1;
            arrayOfByte2[i3] = 13;
          }
          while (true)
          {
            i3 = i7 + 1;
            arrayOfByte2[i7] = 10;
            break;
            if ((!$assertionsDisabled) && (m != j))
            {
              throw new AssertionError();
              if (m != j - 1)
                break label1142;
              byte[] arrayOfByte5 = this.c;
              int i6 = this.tailLen;
              this.tailLen = (i6 + 1);
              arrayOfByte5[i6] = paramArrayOfByte[m];
            }
            while (true)
            {
              this.op = i3;
              this.d = i2;
              return true;
              label1142: if (m == j - 2)
              {
                byte[] arrayOfByte3 = this.c;
                int i4 = this.tailLen;
                this.tailLen = (i4 + 1);
                arrayOfByte3[i4] = paramArrayOfByte[m];
                byte[] arrayOfByte4 = this.c;
                int i5 = this.tailLen;
                this.tailLen = (i5 + 1);
                arrayOfByte4[i5] = paramArrayOfByte[(m + 1)];
              }
            }
            i7 = i3;
          }
          label1221: i18 = i17;
        }
        label1228: i35 = i33;
      }
      label1235: i2 = i34;
      i3 = i33;
      m = i32;
      continue;
      i2 = i37;
      i3 = i36;
      continue;
      i2 = i;
      i3 = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.util.Base64.Encoder
 * JD-Core Version:    0.6.2
 */