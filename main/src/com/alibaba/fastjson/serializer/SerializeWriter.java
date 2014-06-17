package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.CharTypes;
import com.alibaba.fastjson.util.Base64;
import com.alibaba.fastjson.util.IOUtils;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.ref.SoftReference;
import java.math.BigDecimal;
import java.nio.charset.Charset;

public final class SerializeWriter extends Writer
{
  private static final ThreadLocal<SoftReference<char[]>> bufLocal = new ThreadLocal();
  protected char[] buf;
  protected int count;
  private int features;

  public SerializeWriter()
  {
    this.features = JSON.DEFAULT_GENERATE_FEATURE;
    SoftReference localSoftReference = (SoftReference)bufLocal.get();
    if (localSoftReference != null)
    {
      this.buf = ((char[])localSoftReference.get());
      bufLocal.set(null);
    }
    if (this.buf == null)
      this.buf = new char[1024];
  }

  public SerializeWriter(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("Negative initial size: " + paramInt);
    this.buf = new char[paramInt];
  }

  public SerializeWriter(SerializerFeature[] paramArrayOfSerializerFeature)
  {
    SoftReference localSoftReference = (SoftReference)bufLocal.get();
    if (localSoftReference != null)
    {
      this.buf = ((char[])localSoftReference.get());
      bufLocal.set(null);
    }
    if (this.buf == null)
      this.buf = new char[1024];
    int j = paramArrayOfSerializerFeature.length;
    for (int k = 0; k < j; k++)
      i |= paramArrayOfSerializerFeature[k].getMask();
    this.features = i;
  }

  static final boolean isSpecial(char paramChar, int paramInt)
  {
    if (paramChar == ' ');
    do
    {
      return false;
      if ((paramChar == '/') && (SerializerFeature.isEnabled(paramInt, SerializerFeature.WriteSlashAsSpecial)))
        return true;
    }
    while (((paramChar > '#') && (paramChar != '\\')) || ((paramChar != '\b') && (paramChar != '\n') && (paramChar != '\r') && (paramChar != '\f') && (paramChar != '\\') && (paramChar != '"') && ((paramChar != '\t') || (!SerializerFeature.isEnabled(paramInt, SerializerFeature.WriteTabAsSpecial)))));
    return true;
  }

  private void writeFieldValueStringWithDoubleQuote(char paramChar, String paramString1, String paramString2, boolean paramBoolean)
  {
    int i = paramString1.length();
    int j = this.count;
    int k;
    if (paramString2 == null)
      k = 4;
    int i3;
    for (int m = j + (i + 8); ; m = j + (6 + (i + k)))
    {
      if (m > this.buf.length)
        expandCapacity(m);
      this.buf[this.count] = paramChar;
      int n = 2 + this.count;
      int i1 = n + i;
      this.buf[(1 + this.count)] = '"';
      paramString1.getChars(0, i, this.buf, n);
      this.count = m;
      this.buf[i1] = '"';
      int i2 = i1 + 1;
      char[] arrayOfChar1 = this.buf;
      i3 = i2 + 1;
      arrayOfChar1[i2] = ':';
      if (paramString2 != null)
        break;
      char[] arrayOfChar4 = this.buf;
      int i18 = i3 + 1;
      arrayOfChar4[i3] = 'n';
      char[] arrayOfChar5 = this.buf;
      int i19 = i18 + 1;
      arrayOfChar5[i18] = 'u';
      char[] arrayOfChar6 = this.buf;
      int i20 = i19 + 1;
      arrayOfChar6[i19] = 'l';
      this.buf[i20] = 'l';
      return;
      k = paramString2.length();
    }
    char[] arrayOfChar2 = this.buf;
    int i4 = i3 + 1;
    arrayOfChar2[i3] = '"';
    int i5 = i4 + k;
    paramString2.getChars(0, k, this.buf, i4);
    int i6;
    int i7;
    char c1;
    int i8;
    char c2;
    int i17;
    int i16;
    if ((paramBoolean) && (!isEnabled(SerializerFeature.DisableCheckSpecialChar)))
    {
      i6 = 0;
      i7 = -1;
      c1 = '\000';
      i8 = i4;
      if (i8 < i5)
      {
        c2 = this.buf[i8];
        if ((c2 >= ']') || (!isSpecial(c2, this.features)))
          break label698;
        i17 = i6 + 1;
        i16 = i8;
      }
    }
    while (true)
    {
      i8++;
      i6 = i17;
      i7 = i16;
      c1 = c2;
      break;
      if (i6 > 0)
      {
        int i15 = m + i6;
        if (i15 > this.buf.length)
          expandCapacity(i15);
        this.count = i15;
      }
      if (i6 == 1)
      {
        System.arraycopy(this.buf, i7 + 1, this.buf, i7 + 2, -1 + (i5 - i7));
        this.buf[i7] = '\\';
        this.buf[(i7 + 1)] = CharTypes.replaceChars[c1];
      }
      while (true)
      {
        this.buf[(-1 + this.count)] = '"';
        return;
        if (i6 > 1)
        {
          System.arraycopy(this.buf, i7 + 1, this.buf, i7 + 2, -1 + (i5 - i7));
          this.buf[i7] = '\\';
          char[] arrayOfChar3 = this.buf;
          int i9 = i7 + 1;
          arrayOfChar3[i9] = CharTypes.replaceChars[c1];
          int i10 = i5 + 1;
          int i11 = i9 - 2;
          int i12 = i10;
          for (int i13 = i11; i13 >= i4; i13--)
          {
            int i14 = this.buf[i13];
            if ((i14 == 8) || (i14 == 10) || (i14 == 13) || (i14 == 12) || (i14 == 92) || (i14 == 34) || ((i14 == 9) && (isEnabled(SerializerFeature.WriteTabAsSpecial))) || ((i14 == 47) && (isEnabled(SerializerFeature.WriteSlashAsSpecial))))
            {
              System.arraycopy(this.buf, i13 + 1, this.buf, i13 + 2, -1 + (i12 - i13));
              this.buf[i13] = '\\';
              this.buf[(i13 + 1)] = CharTypes.replaceChars[i14];
              i12++;
            }
          }
        }
      }
      label698: c2 = c1;
      i16 = i7;
      i17 = i6;
    }
  }

  private void writeKeyWithDoubleQuoteIfHasSpecial(String paramString)
  {
    boolean[] arrayOfBoolean = CharTypes.specicalFlags_doubleQuotes;
    int i = paramString.length();
    int j = 1 + (i + this.count);
    if (j > this.buf.length)
      expandCapacity(j);
    int k = this.count;
    int m = k + i;
    paramString.getChars(0, i, this.buf, k);
    this.count = j;
    int n = 0;
    int i1 = k;
    if (i1 < m)
    {
      int i2 = this.buf[i1];
      if ((i2 < arrayOfBoolean.length) && (arrayOfBoolean[i2] != 0))
      {
        if (n != 0)
          break label250;
        j += 3;
        if (j > this.buf.length)
          expandCapacity(j);
        this.count = j;
        System.arraycopy(this.buf, i1 + 1, this.buf, i1 + 3, -1 + (m - i1));
        System.arraycopy(this.buf, 0, this.buf, 1, i1);
        this.buf[k] = '"';
        char[] arrayOfChar2 = this.buf;
        int i3 = i1 + 1;
        arrayOfChar2[i3] = '\\';
        char[] arrayOfChar3 = this.buf;
        i1 = i3 + 1;
        arrayOfChar3[i1] = CharTypes.replaceChars[i2];
        m += 2;
        this.buf[(-2 + this.count)] = '"';
        n = 1;
      }
      while (true)
      {
        i1++;
        break;
        label250: j++;
        if (j > this.buf.length)
          expandCapacity(j);
        this.count = j;
        System.arraycopy(this.buf, i1 + 1, this.buf, i1 + 2, m - i1);
        this.buf[i1] = '\\';
        char[] arrayOfChar1 = this.buf;
        i1++;
        arrayOfChar1[i1] = CharTypes.replaceChars[i2];
        m++;
      }
    }
    this.buf[(-1 + this.count)] = ':';
  }

  private void writeKeyWithSingleQuote(String paramString)
  {
    boolean[] arrayOfBoolean = CharTypes.specicalFlags_singleQuotes;
    int i = paramString.length();
    int j = 3 + (i + this.count);
    if (j > this.buf.length)
      expandCapacity(j);
    int k = 1 + this.count;
    int m = k + i;
    this.buf[this.count] = '\'';
    paramString.getChars(0, i, this.buf, k);
    this.count = j;
    while (k < m)
    {
      int n = this.buf[k];
      if (((n < arrayOfBoolean.length) && (arrayOfBoolean[n] != 0)) || ((n == 9) && (isEnabled(SerializerFeature.WriteTabAsSpecial))) || ((n == 47) && (isEnabled(SerializerFeature.WriteSlashAsSpecial))))
      {
        j++;
        if (j > this.buf.length)
          expandCapacity(j);
        this.count = j;
        System.arraycopy(this.buf, k + 1, this.buf, k + 2, -1 + (m - k));
        this.buf[k] = '\\';
        char[] arrayOfChar = this.buf;
        k++;
        arrayOfChar[k] = CharTypes.replaceChars[n];
        m++;
      }
      k++;
    }
    this.buf[(-2 + this.count)] = '\'';
    this.buf[(-1 + this.count)] = ':';
  }

  private void writeKeyWithSingleQuoteIfHasSpecial(String paramString)
  {
    boolean[] arrayOfBoolean = CharTypes.specicalFlags_singleQuotes;
    int i = paramString.length();
    int j = 1 + (i + this.count);
    if (j > this.buf.length)
      expandCapacity(j);
    int k = this.count;
    int m = k + i;
    paramString.getChars(0, i, this.buf, k);
    this.count = j;
    int n = 0;
    int i1 = k;
    if (i1 < m)
    {
      int i2 = this.buf[i1];
      if ((i2 < arrayOfBoolean.length) && (arrayOfBoolean[i2] != 0))
      {
        if (n != 0)
          break label250;
        j += 3;
        if (j > this.buf.length)
          expandCapacity(j);
        this.count = j;
        System.arraycopy(this.buf, i1 + 1, this.buf, i1 + 3, -1 + (m - i1));
        System.arraycopy(this.buf, 0, this.buf, 1, i1);
        this.buf[k] = '\'';
        char[] arrayOfChar2 = this.buf;
        int i3 = i1 + 1;
        arrayOfChar2[i3] = '\\';
        char[] arrayOfChar3 = this.buf;
        i1 = i3 + 1;
        arrayOfChar3[i1] = CharTypes.replaceChars[i2];
        m += 2;
        this.buf[(-2 + this.count)] = '\'';
        n = 1;
      }
      while (true)
      {
        i1++;
        break;
        label250: j++;
        if (j > this.buf.length)
          expandCapacity(j);
        this.count = j;
        System.arraycopy(this.buf, i1 + 1, this.buf, i1 + 2, m - i1);
        this.buf[i1] = '\\';
        char[] arrayOfChar1 = this.buf;
        i1++;
        arrayOfChar1[i1] = CharTypes.replaceChars[i2];
        m++;
      }
    }
    this.buf[(j - 1)] = ':';
  }

  private void writeStringWithDoubleQuote(String paramString, char paramChar)
  {
    writeStringWithDoubleQuote(paramString, paramChar, true);
  }

  private void writeStringWithDoubleQuote(String paramString, char paramChar, boolean paramBoolean)
  {
    if (paramString == null)
    {
      writeNull();
      return;
    }
    int i = paramString.length();
    int j = 2 + (i + this.count);
    if (paramChar != 0)
      j++;
    if (j > this.buf.length)
      expandCapacity(j);
    int k = 1 + this.count;
    int m = k + i;
    this.buf[this.count] = '"';
    paramString.getChars(0, i, this.buf, k);
    this.count = j;
    if (isEnabled(SerializerFeature.BrowserCompatible))
    {
      int i12 = -1;
      int i13 = k;
      if (i13 < m)
      {
        int i16 = this.buf[i13];
        if ((i16 == 34) || (i16 == 47) || (i16 == 92))
        {
          j++;
          i12 = i13;
        }
        while (true)
        {
          i13++;
          break;
          if ((i16 == 8) || (i16 == 12) || (i16 == 10) || (i16 == 13) || (i16 == 9))
          {
            j++;
            i12 = i13;
          }
          else if (i16 < 32)
          {
            j += 5;
            i12 = i13;
          }
          else if (i16 >= 127)
          {
            j += 5;
            i12 = i13;
          }
        }
      }
      if (j > this.buf.length)
        expandCapacity(j);
      this.count = j;
      int i14 = m;
      if (i12 >= k)
      {
        int i15 = this.buf[i12];
        if ((i15 == 8) || (i15 == 12) || (i15 == 10) || (i15 == 13) || (i15 == 9))
        {
          System.arraycopy(this.buf, i12 + 1, this.buf, i12 + 2, -1 + (i14 - i12));
          this.buf[i12] = '\\';
          this.buf[(i12 + 1)] = CharTypes.replaceChars[i15];
          i14++;
        }
        while (true)
        {
          i12--;
          break;
          if ((i15 == 34) || (i15 == 47) || (i15 == 92))
          {
            System.arraycopy(this.buf, i12 + 1, this.buf, i12 + 2, -1 + (i14 - i12));
            this.buf[i12] = '\\';
            this.buf[(i12 + 1)] = i15;
            i14++;
          }
          else if (i15 < 32)
          {
            System.arraycopy(this.buf, i12 + 1, this.buf, i12 + 6, -1 + (i14 - i12));
            this.buf[i12] = '\\';
            this.buf[(i12 + 1)] = 'u';
            this.buf[(i12 + 2)] = '0';
            this.buf[(i12 + 3)] = '0';
            this.buf[(i12 + 4)] = CharTypes.ASCII_CHARS[(i15 * 2)];
            this.buf[(i12 + 5)] = CharTypes.ASCII_CHARS[(1 + i15 * 2)];
            i14 += 5;
          }
          else if (i15 >= 127)
          {
            System.arraycopy(this.buf, i12 + 1, this.buf, i12 + 6, -1 + (i14 - i12));
            this.buf[i12] = '\\';
            this.buf[(i12 + 1)] = 'u';
            this.buf[(i12 + 2)] = CharTypes.digits[(0xF & i15 >>> 12)];
            this.buf[(i12 + 3)] = CharTypes.digits[(0xF & i15 >>> 8)];
            this.buf[(i12 + 4)] = CharTypes.digits[(0xF & i15 >>> 4)];
            this.buf[(i12 + 5)] = CharTypes.digits[(i15 & 0xF)];
            i14 += 5;
          }
        }
      }
      if (paramChar != 0)
      {
        this.buf[(-2 + this.count)] = '"';
        this.buf[(-1 + this.count)] = paramChar;
        return;
      }
      this.buf[(-1 + this.count)] = '"';
      return;
    }
    int n = -1;
    int i1 = 0;
    int i2 = 0;
    int i8;
    int i11;
    int i10;
    if (paramBoolean)
    {
      i8 = k;
      if (i8 < m)
      {
        int i9 = this.buf[i8];
        if ((i9 >= 93) || (i9 == 32) || ((i9 >= 48) && (i9 != 92)) || (((i9 >= CharTypes.specicalFlags_doubleQuotes.length) || (CharTypes.specicalFlags_doubleQuotes[i9] == 0)) && ((i9 != 9) || (!isEnabled(SerializerFeature.WriteTabAsSpecial))) && ((i9 != 47) || (!isEnabled(SerializerFeature.WriteSlashAsSpecial)))))
          break label1226;
        i11 = i2 + 1;
        i1 = i9;
        i10 = i8;
      }
    }
    while (true)
    {
      i8++;
      i2 = i11;
      n = i10;
      break;
      int i3 = j + i2;
      if (i3 > this.buf.length)
        expandCapacity(i3);
      this.count = i3;
      if (i2 == 1)
      {
        System.arraycopy(this.buf, n + 1, this.buf, n + 2, -1 + (m - n));
        this.buf[n] = '\\';
        this.buf[(n + 1)] = CharTypes.replaceChars[i1];
      }
      while (paramChar != 0)
      {
        this.buf[(-2 + this.count)] = '"';
        this.buf[(-1 + this.count)] = paramChar;
        return;
        if (i2 > 1)
        {
          System.arraycopy(this.buf, n + 1, this.buf, n + 2, -1 + (m - n));
          this.buf[n] = '\\';
          char[] arrayOfChar = this.buf;
          int i4 = n + 1;
          arrayOfChar[i4] = CharTypes.replaceChars[i1];
          int i5 = m + 1;
          for (int i6 = i4 - 2; i6 >= k; i6--)
          {
            int i7 = this.buf[i6];
            if (((i7 < CharTypes.specicalFlags_doubleQuotes.length) && (CharTypes.specicalFlags_doubleQuotes[i7] != 0)) || ((i7 == 9) && (isEnabled(SerializerFeature.WriteTabAsSpecial))) || ((i7 == 47) && (isEnabled(SerializerFeature.WriteSlashAsSpecial))))
            {
              System.arraycopy(this.buf, i6 + 1, this.buf, i6 + 2, -1 + (i5 - i6));
              this.buf[i6] = '\\';
              this.buf[(i6 + 1)] = CharTypes.replaceChars[i7];
              i5++;
            }
          }
        }
      }
      this.buf[(-1 + this.count)] = '"';
      return;
      label1226: i10 = n;
      i11 = i2;
    }
  }

  private void writeStringWithSingleQuote(String paramString)
  {
    int i = 0;
    if (paramString == null)
    {
      int i14 = 4 + this.count;
      if (i14 > this.buf.length)
        expandCapacity(i14);
      "null".getChars(0, 4, this.buf, this.count);
      this.count = i14;
      return;
    }
    int j = paramString.length();
    int k = 2 + (j + this.count);
    if (k > this.buf.length)
      expandCapacity(k);
    int m = 1 + this.count;
    int n = m + j;
    this.buf[this.count] = '\'';
    paramString.getChars(0, j, this.buf, m);
    this.count = k;
    int i1 = -1;
    int i2 = m;
    int i3 = 0;
    int i12;
    int i13;
    if (i2 < n)
    {
      int i11 = this.buf[i2];
      if ((i11 != 8) && (i11 != 10) && (i11 != 13) && (i11 != 12) && (i11 != 92) && (i11 != 39) && ((i11 != 9) || (!isEnabled(SerializerFeature.WriteTabAsSpecial))) && ((i11 != 47) || (!isEnabled(SerializerFeature.WriteSlashAsSpecial))))
        break label587;
      i12 = i3 + 1;
      i = i11;
      i13 = i2;
    }
    while (true)
    {
      i2++;
      i3 = i12;
      i1 = i13;
      break;
      int i4 = k + i3;
      if (i4 > this.buf.length)
        expandCapacity(i4);
      this.count = i4;
      if (i3 == 1)
      {
        System.arraycopy(this.buf, i1 + 1, this.buf, i1 + 2, -1 + (n - i1));
        this.buf[i1] = '\\';
        this.buf[(i1 + 1)] = CharTypes.replaceChars[i];
      }
      while (true)
      {
        this.buf[(-1 + this.count)] = '\'';
        return;
        if (i3 > 1)
        {
          System.arraycopy(this.buf, i1 + 1, this.buf, i1 + 2, -1 + (n - i1));
          this.buf[i1] = '\\';
          char[] arrayOfChar = this.buf;
          int i5 = i1 + 1;
          arrayOfChar[i5] = CharTypes.replaceChars[i];
          int i6 = n + 1;
          int i7 = i5 - 2;
          int i8 = i6;
          for (int i9 = i7; i9 >= m; i9--)
          {
            int i10 = this.buf[i9];
            if ((i10 == 8) || (i10 == 10) || (i10 == 13) || (i10 == 12) || (i10 == 92) || (i10 == 39) || ((i10 == 9) && (isEnabled(SerializerFeature.WriteTabAsSpecial))) || ((i10 == 47) && (isEnabled(SerializerFeature.WriteSlashAsSpecial))))
            {
              System.arraycopy(this.buf, i9 + 1, this.buf, i9 + 2, -1 + (i8 - i9));
              this.buf[i9] = '\\';
              this.buf[(i9 + 1)] = CharTypes.replaceChars[i10];
              i8++;
            }
          }
        }
      }
      label587: i13 = i1;
      i12 = i3;
    }
  }

  public final SerializeWriter append(char paramChar)
  {
    write(paramChar);
    return this;
  }

  public final SerializeWriter append(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null);
    for (String str = "null"; ; str = paramCharSequence.toString())
    {
      write(str, 0, str.length());
      return this;
    }
  }

  public final SerializeWriter append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null)
      paramCharSequence = "null";
    String str = paramCharSequence.subSequence(paramInt1, paramInt2).toString();
    write(str, 0, str.length());
    return this;
  }

  public final void close()
  {
    if (this.buf.length <= 8192)
      bufLocal.set(new SoftReference(this.buf));
    this.buf = null;
  }

  public final void config(SerializerFeature paramSerializerFeature, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.features |= paramSerializerFeature.getMask();
      return;
    }
    this.features &= (0xFFFFFFFF ^ paramSerializerFeature.getMask());
  }

  public final void expandCapacity(int paramInt)
  {
    int i = 1 + 3 * this.buf.length / 2;
    if (i < paramInt);
    while (true)
    {
      char[] arrayOfChar = new char[paramInt];
      System.arraycopy(this.buf, 0, arrayOfChar, 0, this.count);
      this.buf = arrayOfChar;
      return;
      paramInt = i;
    }
  }

  public final void flush()
  {
  }

  public final boolean isEnabled(SerializerFeature paramSerializerFeature)
  {
    return SerializerFeature.isEnabled(this.features, paramSerializerFeature);
  }

  public final void reset()
  {
    this.count = 0;
  }

  public final int size()
  {
    return this.count;
  }

  public final byte[] toBytes(String paramString)
  {
    if (paramString == null)
      paramString = "UTF-8";
    return new SerialWriterStringEncoder(Charset.forName(paramString)).encode(this.buf, 0, this.count);
  }

  public final char[] toCharArray()
  {
    char[] arrayOfChar = new char[this.count];
    System.arraycopy(this.buf, 0, arrayOfChar, 0, this.count);
    return arrayOfChar;
  }

  public final String toString()
  {
    return new String(this.buf, 0, this.count);
  }

  public final void write(char paramChar)
  {
    int i = 1 + this.count;
    if (i > this.buf.length)
      expandCapacity(i);
    this.buf[this.count] = paramChar;
    this.count = i;
  }

  public final void write(int paramInt)
  {
    int i = 1 + this.count;
    if (i > this.buf.length)
      expandCapacity(i);
    this.buf[this.count] = ((char)paramInt);
    this.count = i;
  }

  public final void write(String paramString)
  {
    if (paramString == null)
    {
      writeNull();
      return;
    }
    int i = paramString.length();
    int j = i + this.count;
    if (j > this.buf.length)
      expandCapacity(j);
    paramString.getChars(0, i, this.buf, this.count);
    this.count = j;
  }

  public final void write(String paramString, int paramInt1, int paramInt2)
  {
    int i = paramInt2 + this.count;
    if (i > this.buf.length)
      expandCapacity(i);
    paramString.getChars(paramInt1, paramInt1 + paramInt2, this.buf, this.count);
    this.count = i;
  }

  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 > paramArrayOfChar.length) || (paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfChar.length) || (paramInt1 + paramInt2 < 0))
      throw new IndexOutOfBoundsException();
    if (paramInt2 == 0)
      return;
    int i = paramInt2 + this.count;
    if (i > this.buf.length)
      expandCapacity(i);
    System.arraycopy(paramArrayOfChar, paramInt1, this.buf, this.count, paramInt2);
    this.count = i;
  }

  public final void writeBooleanArray(boolean[] paramArrayOfBoolean)
  {
    int i = 0;
    int[] arrayOfInt = new int[paramArrayOfBoolean.length];
    int j = 2;
    int k = 0;
    if (k < paramArrayOfBoolean.length)
    {
      if (k != 0)
        j++;
      if (paramArrayOfBoolean[k] != 0);
      for (int i9 = 4; ; i9 = 5)
      {
        arrayOfInt[k] = i9;
        j += i9;
        k++;
        break;
      }
    }
    int m = j + this.count;
    if (m > this.buf.length)
      expandCapacity(m);
    this.buf[this.count] = '[';
    int n = 1 + this.count;
    if (i < paramArrayOfBoolean.length)
    {
      if (i != 0)
      {
        char[] arrayOfChar10 = this.buf;
        int i8 = n + 1;
        arrayOfChar10[n] = ',';
        n = i8;
      }
      if (paramArrayOfBoolean[i] != 0)
      {
        char[] arrayOfChar6 = this.buf;
        int i5 = n + 1;
        arrayOfChar6[n] = 't';
        char[] arrayOfChar7 = this.buf;
        int i6 = i5 + 1;
        arrayOfChar7[i5] = 'r';
        char[] arrayOfChar8 = this.buf;
        int i7 = i6 + 1;
        arrayOfChar8[i6] = 'u';
        char[] arrayOfChar9 = this.buf;
        n = i7 + 1;
        arrayOfChar9[i7] = 'e';
      }
      while (true)
      {
        i++;
        break;
        char[] arrayOfChar1 = this.buf;
        int i1 = n + 1;
        arrayOfChar1[n] = 'f';
        char[] arrayOfChar2 = this.buf;
        int i2 = i1 + 1;
        arrayOfChar2[i1] = 'a';
        char[] arrayOfChar3 = this.buf;
        int i3 = i2 + 1;
        arrayOfChar3[i2] = 'l';
        char[] arrayOfChar4 = this.buf;
        int i4 = i3 + 1;
        arrayOfChar4[i3] = 's';
        char[] arrayOfChar5 = this.buf;
        n = i4 + 1;
        arrayOfChar5[i4] = 'e';
      }
    }
    this.buf[n] = ']';
    this.count = m;
  }

  public final void writeByteArray(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if (i == 0)
    {
      write("\"\"");
      return;
    }
    char[] arrayOfChar1 = Base64.CA;
    int j = 3 * (i / 3);
    int k = 1 + (i - 1) / 3 << 2;
    int m = this.count;
    int n = 2 + (k + this.count);
    if (n > this.buf.length)
      expandCapacity(n);
    this.count = n;
    char[] arrayOfChar2 = this.buf;
    int i1 = m + 1;
    arrayOfChar2[m] = '"';
    int i2 = i1;
    int i3 = 0;
    while (i3 < j)
    {
      int i10 = i3 + 1;
      int i11 = (0xFF & paramArrayOfByte[i3]) << 16;
      int i12 = i10 + 1;
      int i13 = i11 | (0xFF & paramArrayOfByte[i10]) << 8;
      i3 = i12 + 1;
      int i14 = i13 | 0xFF & paramArrayOfByte[i12];
      char[] arrayOfChar4 = this.buf;
      int i15 = i2 + 1;
      arrayOfChar4[i2] = arrayOfChar1[(0x3F & i14 >>> 18)];
      char[] arrayOfChar5 = this.buf;
      int i16 = i15 + 1;
      arrayOfChar5[i15] = arrayOfChar1[(0x3F & i14 >>> 12)];
      char[] arrayOfChar6 = this.buf;
      int i17 = i16 + 1;
      arrayOfChar6[i16] = arrayOfChar1[(0x3F & i14 >>> 6)];
      char[] arrayOfChar7 = this.buf;
      i2 = i17 + 1;
      arrayOfChar7[i17] = arrayOfChar1[(i14 & 0x3F)];
    }
    int i4 = i - j;
    int i7;
    char[] arrayOfChar3;
    int i8;
    if (i4 > 0)
    {
      int i5 = (0xFF & paramArrayOfByte[j]) << 10;
      int i6 = 0;
      if (i4 == 2)
        i6 = (0xFF & paramArrayOfByte[(i - 1)]) << 2;
      i7 = i6 | i5;
      this.buf[(n - 5)] = arrayOfChar1[(i7 >> 12)];
      this.buf[(n - 4)] = arrayOfChar1[(0x3F & i7 >>> 6)];
      arrayOfChar3 = this.buf;
      i8 = n - 3;
      if (i4 != 2)
        break label421;
    }
    label421: for (int i9 = arrayOfChar1[(i7 & 0x3F)]; ; i9 = 61)
    {
      arrayOfChar3[i8] = i9;
      this.buf[(n - 2)] = '=';
      this.buf[(n - 1)] = '"';
      return;
    }
  }

  public final void writeFieldEmptyList(char paramChar, String paramString)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    write("[]");
  }

  public final void writeFieldName(String paramString)
  {
    writeFieldName(paramString, false);
  }

  public final void writeFieldName(String paramString, boolean paramBoolean)
  {
    if (paramString == null)
    {
      write("null:");
      return;
    }
    if (isEnabled(SerializerFeature.UseSingleQuotes))
    {
      if (isEnabled(SerializerFeature.QuoteFieldNames))
      {
        writeKeyWithSingleQuote(paramString);
        return;
      }
      writeKeyWithSingleQuoteIfHasSpecial(paramString);
      return;
    }
    if (isEnabled(SerializerFeature.QuoteFieldNames))
    {
      writeKeyWithDoubleQuote(paramString, paramBoolean);
      return;
    }
    writeKeyWithDoubleQuoteIfHasSpecial(paramString);
  }

  public final void writeFieldNull(char paramChar, String paramString)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    writeNull();
  }

  public final void writeFieldNullBoolean(char paramChar, String paramString)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (isEnabled(SerializerFeature.WriteNullBooleanAsFalse))
    {
      write("false");
      return;
    }
    writeNull();
  }

  public final void writeFieldNullList(char paramChar, String paramString)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (isEnabled(SerializerFeature.WriteNullListAsEmpty))
    {
      write("[]");
      return;
    }
    writeNull();
  }

  public final void writeFieldNullNumber(char paramChar, String paramString)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (isEnabled(SerializerFeature.WriteNullNumberAsZero))
    {
      write('0');
      return;
    }
    writeNull();
  }

  public final void writeFieldNullString(char paramChar, String paramString)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (isEnabled(SerializerFeature.WriteNullStringAsEmpty))
    {
      writeString("");
      return;
    }
    writeNull();
  }

  public final void writeFieldValue(char paramChar1, String paramString, char paramChar2)
  {
    write(paramChar1);
    writeFieldName(paramString, false);
    if (paramChar2 == 0)
    {
      writeString("");
      return;
    }
    writeString(Character.toString(paramChar2));
  }

  public final void writeFieldValue(char paramChar, String paramString, double paramDouble)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (paramDouble == 0.0D)
    {
      write('0');
      return;
    }
    if (Double.isNaN(paramDouble))
    {
      writeNull();
      return;
    }
    if (Double.isInfinite(paramDouble))
    {
      writeNull();
      return;
    }
    String str = Double.toString(paramDouble);
    if (str.endsWith(".0"))
      str = str.substring(0, -2 + str.length());
    write(str);
  }

  public final void writeFieldValue(char paramChar, String paramString, float paramFloat)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (paramFloat == 0.0F)
    {
      write('0');
      return;
    }
    if (Float.isNaN(paramFloat))
    {
      writeNull();
      return;
    }
    if (Float.isInfinite(paramFloat))
    {
      writeNull();
      return;
    }
    String str = Float.toString(paramFloat);
    if (str.endsWith(".0"))
      str = str.substring(0, -2 + str.length());
    write(str);
  }

  public final void writeFieldValue(char paramChar, String paramString, int paramInt)
  {
    if ((paramInt == -2147483648) || (!isEnabled(SerializerFeature.QuoteFieldNames)))
    {
      writeFieldValue1(paramChar, paramString, paramInt);
      return;
    }
    int i;
    if (isEnabled(SerializerFeature.UseSingleQuotes))
    {
      i = 39;
      if (paramInt >= 0)
        break label186;
    }
    label186: for (int j = 1 + IOUtils.stringSize(-paramInt); ; j = IOUtils.stringSize(paramInt))
    {
      int k = paramString.length();
      int m = j + (4 + (k + this.count));
      if (m > this.buf.length)
        expandCapacity(m);
      int n = this.count;
      this.count = m;
      this.buf[n] = paramChar;
      int i1 = 1 + (n + k);
      this.buf[(n + 1)] = i;
      paramString.getChars(0, k, this.buf, n + 2);
      this.buf[(i1 + 1)] = i;
      this.buf[(i1 + 2)] = ':';
      IOUtils.getChars(paramInt, this.count, this.buf);
      return;
      i = 34;
      break;
    }
  }

  public final void writeFieldValue(char paramChar, String paramString, long paramLong)
  {
    if ((paramLong == -9223372036854775808L) || (!isEnabled(SerializerFeature.QuoteFieldNames)))
    {
      writeFieldValue1(paramChar, paramString, paramLong);
      return;
    }
    int i;
    if (isEnabled(SerializerFeature.UseSingleQuotes))
    {
      i = 39;
      if (paramLong >= 0L)
        break label188;
    }
    label188: for (int j = 1 + IOUtils.stringSize(-paramLong); ; j = IOUtils.stringSize(paramLong))
    {
      int k = paramString.length();
      int m = j + (4 + (k + this.count));
      if (m > this.buf.length)
        expandCapacity(m);
      int n = this.count;
      this.count = m;
      this.buf[n] = paramChar;
      int i1 = 1 + (n + k);
      this.buf[(n + 1)] = i;
      paramString.getChars(0, k, this.buf, n + 2);
      this.buf[(i1 + 1)] = i;
      this.buf[(i1 + 2)] = ':';
      IOUtils.getChars(paramLong, this.count, this.buf);
      return;
      i = 34;
      break;
    }
  }

  public final void writeFieldValue(char paramChar, String paramString, Enum<?> paramEnum)
  {
    if (paramEnum == null)
    {
      write(paramChar);
      writeFieldName(paramString, false);
      writeNull();
      return;
    }
    if (isEnabled(SerializerFeature.WriteEnumUsingToString))
    {
      if (isEnabled(SerializerFeature.UseSingleQuotes))
      {
        writeFieldValue(paramChar, paramString, paramEnum.name());
        return;
      }
      writeFieldValueStringWithDoubleQuote(paramChar, paramString, paramEnum.name(), false);
      return;
    }
    writeFieldValue(paramChar, paramString, paramEnum.ordinal());
  }

  public final void writeFieldValue(char paramChar, String paramString1, String paramString2)
  {
    if (isEnabled(SerializerFeature.QuoteFieldNames))
    {
      if (isEnabled(SerializerFeature.UseSingleQuotes))
      {
        write(paramChar);
        writeFieldName(paramString1, false);
        if (paramString2 == null)
        {
          writeNull();
          return;
        }
        writeString(paramString2);
        return;
      }
      if (isEnabled(SerializerFeature.BrowserCompatible))
      {
        write(paramChar);
        writeStringWithDoubleQuote(paramString1, ':', true);
        writeStringWithDoubleQuote(paramString2, '\000', true);
        return;
      }
      writeFieldValueStringWithDoubleQuote(paramChar, paramString1, paramString2, true);
      return;
    }
    write(paramChar);
    writeFieldName(paramString1, false);
    if (paramString2 == null)
    {
      writeNull();
      return;
    }
    writeString(paramString2);
  }

  public final void writeFieldValue(char paramChar, String paramString, BigDecimal paramBigDecimal)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (paramBigDecimal == null)
    {
      writeNull();
      return;
    }
    write(paramBigDecimal.toString());
  }

  public final void writeFieldValue(char paramChar, String paramString, boolean paramBoolean)
  {
    int i;
    if (isEnabled(SerializerFeature.UseSingleQuotes))
    {
      i = 39;
      if (!paramBoolean)
        break label154;
    }
    int i1;
    label154: for (int j = 4; ; j = 5)
    {
      int k = paramString.length();
      int m = j + (4 + (k + this.count));
      if (m > this.buf.length)
        expandCapacity(m);
      int n = this.count;
      this.count = m;
      this.buf[n] = paramChar;
      i1 = 1 + (n + k);
      this.buf[(n + 1)] = i;
      paramString.getChars(0, k, this.buf, n + 2);
      this.buf[(i1 + 1)] = i;
      if (!paramBoolean)
        break label160;
      System.arraycopy(":true".toCharArray(), 0, this.buf, i1 + 2, 5);
      return;
      i = 34;
      break;
    }
    label160: System.arraycopy(":false".toCharArray(), 0, this.buf, i1 + 2, 6);
  }

  public final void writeFieldValue1(char paramChar, String paramString, int paramInt)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    writeInt(paramInt);
  }

  public final void writeFieldValue1(char paramChar, String paramString, long paramLong)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    writeLong(paramLong);
  }

  public final void writeFieldValue1(char paramChar, String paramString, boolean paramBoolean)
  {
    write(paramChar);
    writeFieldName(paramString, false);
    if (paramBoolean)
    {
      write("true");
      return;
    }
    write("false");
  }

  public final void writeInt(int paramInt)
  {
    if (paramInt == -2147483648)
    {
      write("-2147483648");
      return;
    }
    if (paramInt < 0);
    for (int i = 1 + IOUtils.stringSize(-paramInt); ; i = IOUtils.stringSize(paramInt))
    {
      int j = i + this.count;
      if (j > this.buf.length)
        expandCapacity(j);
      IOUtils.getChars(paramInt, j, this.buf);
      this.count = j;
      return;
    }
  }

  public final void writeIntAndChar(int paramInt, char paramChar)
  {
    if (paramInt == -2147483648)
    {
      write("-2147483648");
      write(paramChar);
      return;
    }
    if (paramInt < 0);
    for (int i = 1 + IOUtils.stringSize(-paramInt); ; i = IOUtils.stringSize(paramInt))
    {
      int j = i + this.count;
      int k = j + 1;
      if (k > this.buf.length)
        expandCapacity(k);
      IOUtils.getChars(paramInt, j, this.buf);
      this.buf[j] = paramChar;
      this.count = k;
      return;
    }
  }

  public final void writeIntArray(int[] paramArrayOfInt)
  {
    int[] arrayOfInt = new int[paramArrayOfInt.length];
    int i = 2;
    int j = 0;
    if (j < paramArrayOfInt.length)
    {
      if (j != 0)
        i++;
      int i3 = paramArrayOfInt[j];
      int i4;
      if (i3 == -2147483648)
        i4 = 11;
      while (true)
      {
        arrayOfInt[j] = i4;
        i += i4;
        j++;
        break;
        if (i3 < 0)
          i4 = 1 + IOUtils.stringSize(-i3);
        else
          i4 = IOUtils.stringSize(i3);
      }
    }
    int k = i + this.count;
    if (k > this.buf.length)
      expandCapacity(k);
    this.buf[this.count] = '[';
    int m = 1 + this.count;
    int n = 0;
    if (n < paramArrayOfInt.length)
    {
      if (n != 0)
      {
        char[] arrayOfChar = this.buf;
        int i2 = m + 1;
        arrayOfChar[m] = ',';
        m = i2;
      }
      int i1 = paramArrayOfInt[n];
      if (i1 == -2147483648)
      {
        System.arraycopy("-2147483648".toCharArray(), 0, this.buf, m, arrayOfInt[n]);
        m += arrayOfInt[n];
      }
      while (true)
      {
        n++;
        break;
        m += arrayOfInt[n];
        IOUtils.getChars(i1, m, this.buf);
      }
    }
    this.buf[m] = ']';
    this.count = k;
  }

  public final void writeKeyWithDoubleQuote(String paramString)
  {
    writeKeyWithDoubleQuote(paramString, true);
  }

  public final void writeKeyWithDoubleQuote(String paramString, boolean paramBoolean)
  {
    boolean[] arrayOfBoolean = CharTypes.specicalFlags_doubleQuotes;
    int i = paramString.length();
    int j = 3 + (i + this.count);
    if (j > this.buf.length)
      expandCapacity(j);
    int k = 1 + this.count;
    int m = k + i;
    this.buf[this.count] = '"';
    paramString.getChars(0, i, this.buf, k);
    this.count = j;
    if (paramBoolean)
      while (k < m)
      {
        int n = this.buf[k];
        if (((n < arrayOfBoolean.length) && (arrayOfBoolean[n] != 0)) || ((n == 9) && (isEnabled(SerializerFeature.WriteTabAsSpecial))) || ((n == 47) && (isEnabled(SerializerFeature.WriteSlashAsSpecial))))
        {
          j++;
          if (j > this.buf.length)
            expandCapacity(j);
          this.count = j;
          System.arraycopy(this.buf, k + 1, this.buf, k + 2, -1 + (m - k));
          this.buf[k] = '\\';
          char[] arrayOfChar = this.buf;
          k++;
          arrayOfChar[k] = CharTypes.replaceChars[n];
          m++;
        }
        k++;
      }
    this.buf[(-2 + this.count)] = '"';
    this.buf[(-1 + this.count)] = ':';
  }

  public final void writeLong(long paramLong)
  {
    if (paramLong == -9223372036854775808L)
    {
      write("-9223372036854775808");
      return;
    }
    if (paramLong < 0L);
    for (int i = 1 + IOUtils.stringSize(-paramLong); ; i = IOUtils.stringSize(paramLong))
    {
      int j = i + this.count;
      if (j > this.buf.length)
        expandCapacity(j);
      IOUtils.getChars(paramLong, j, this.buf);
      this.count = j;
      return;
    }
  }

  public final void writeLongAndChar(long paramLong, char paramChar)
  {
    if (paramLong == -9223372036854775808L)
    {
      write("-9223372036854775808");
      write(paramChar);
      return;
    }
    if (paramLong < 0L);
    for (int i = 1 + IOUtils.stringSize(-paramLong); ; i = IOUtils.stringSize(paramLong))
    {
      int j = i + this.count;
      int k = j + 1;
      if (k > this.buf.length)
        expandCapacity(k);
      IOUtils.getChars(paramLong, j, this.buf);
      this.buf[j] = paramChar;
      this.count = k;
      return;
    }
  }

  public final void writeLongArray(long[] paramArrayOfLong)
  {
    int[] arrayOfInt = new int[paramArrayOfLong.length];
    int i = 2;
    int j = 0;
    if (j < paramArrayOfLong.length)
    {
      if (j != 0)
        i++;
      long l2 = paramArrayOfLong[j];
      int i2;
      if (l2 == -9223372036854775808L)
        i2 = 20;
      while (true)
      {
        arrayOfInt[j] = i2;
        i += i2;
        j++;
        break;
        if (l2 < 0L)
          i2 = 1 + IOUtils.stringSize(-l2);
        else
          i2 = IOUtils.stringSize(l2);
      }
    }
    int k = i + this.count;
    if (k > this.buf.length)
      expandCapacity(k);
    this.buf[this.count] = '[';
    int m = 1 + this.count;
    int n = 0;
    if (n < paramArrayOfLong.length)
    {
      if (n != 0)
      {
        char[] arrayOfChar = this.buf;
        int i1 = m + 1;
        arrayOfChar[m] = ',';
        m = i1;
      }
      long l1 = paramArrayOfLong[n];
      if (l1 == -9223372036854775808L)
      {
        System.arraycopy("-9223372036854775808".toCharArray(), 0, this.buf, m, arrayOfInt[n]);
        m += arrayOfInt[n];
      }
      while (true)
      {
        n++;
        break;
        m += arrayOfInt[n];
        IOUtils.getChars(l1, m, this.buf);
      }
    }
    this.buf[m] = ']';
    this.count = k;
  }

  public final void writeNull()
  {
    int i = 4 + this.count;
    if (i > this.buf.length)
      expandCapacity(i);
    this.buf[this.count] = 'n';
    this.buf[(1 + this.count)] = 'u';
    this.buf[(2 + this.count)] = 'l';
    this.buf[(3 + this.count)] = 'l';
    this.count = i;
  }

  public final void writeShortArray(short[] paramArrayOfShort)
  {
    int i = 0;
    int[] arrayOfInt = new int[paramArrayOfShort.length];
    int j = 2;
    for (int k = 0; k < paramArrayOfShort.length; k++)
    {
      if (k != 0)
        j++;
      int i3 = IOUtils.stringSize(paramArrayOfShort[k]);
      arrayOfInt[k] = i3;
      j += i3;
    }
    int m = j + this.count;
    if (m > this.buf.length)
      expandCapacity(m);
    this.buf[this.count] = '[';
    int n = 1 + this.count;
    while (i < paramArrayOfShort.length)
    {
      if (i != 0)
      {
        char[] arrayOfChar = this.buf;
        int i2 = n + 1;
        arrayOfChar[n] = ',';
        n = i2;
      }
      int i1 = paramArrayOfShort[i];
      n += arrayOfInt[i];
      IOUtils.getChars(i1, n, this.buf);
      i++;
    }
    this.buf[n] = ']';
    this.count = m;
  }

  public final void writeString(String paramString)
  {
    if (isEnabled(SerializerFeature.UseSingleQuotes))
    {
      writeStringWithSingleQuote(paramString);
      return;
    }
    writeStringWithDoubleQuote(paramString, '\000', true);
  }

  public final void writeString(String paramString, char paramChar)
  {
    if (isEnabled(SerializerFeature.UseSingleQuotes))
    {
      writeStringWithSingleQuote(paramString);
      write(paramChar);
      return;
    }
    writeStringWithDoubleQuote(paramString, paramChar, true);
  }

  public final void writeTo(OutputStream paramOutputStream, String paramString)
  {
    paramOutputStream.write(new String(this.buf, 0, this.count).getBytes(paramString));
  }

  public final void writeTo(OutputStream paramOutputStream, Charset paramCharset)
  {
    paramOutputStream.write(new String(this.buf, 0, this.count).getBytes(paramCharset));
  }

  public final void writeTo(Writer paramWriter)
  {
    paramWriter.write(this.buf, 0, this.count);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.serializer.SerializeWriter
 * JD-Core Version:    0.6.2
 */