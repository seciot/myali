package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Vector;

final class DecodedBitStreamParser
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 32, 36, 37, 42, 43, 45, 46, 47, 58 };

  private static char a(int paramInt)
  {
    if (paramInt >= a.length)
      throw FormatException.getFormatInstance();
    return a[paramInt];
  }

  private static void a(BitSource paramBitSource, StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt * 13 > paramBitSource.available())
      throw FormatException.getFormatInstance();
    byte[] arrayOfByte = new byte[paramInt * 2];
    int i = 0;
    if (paramInt > 0)
    {
      int j = paramBitSource.readBits(13);
      int k = j / 96 << 8 | j % 96;
      if (k < 959);
      for (int m = k + 41377; ; m = k + 42657)
      {
        arrayOfByte[i] = ((byte)(0xFF & m >> 8));
        arrayOfByte[(i + 1)] = ((byte)(m & 0xFF));
        int n = i + 2;
        paramInt--;
        i = n;
        break;
      }
    }
    try
    {
      paramStringBuffer.append(new String(arrayOfByte, "GB2312"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw FormatException.getFormatInstance();
  }

  private static void a(BitSource paramBitSource, StringBuffer paramStringBuffer, int paramInt, CharacterSetECI paramCharacterSetECI, Vector paramVector, Hashtable paramHashtable)
  {
    if (paramInt << 3 > paramBitSource.available())
      throw FormatException.getFormatInstance();
    byte[] arrayOfByte = new byte[paramInt];
    for (int i = 0; i < paramInt; i++)
      arrayOfByte[i] = ((byte)paramBitSource.readBits(8));
    String str;
    if (paramCharacterSetECI == null)
      str = StringUtils.guessEncoding(arrayOfByte, paramHashtable);
    try
    {
      while (true)
      {
        paramStringBuffer.append(new String(arrayOfByte, str));
        paramVector.addElement(arrayOfByte);
        return;
        str = paramCharacterSetECI.getEncodingName();
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw FormatException.getFormatInstance();
  }

  private static void a(BitSource paramBitSource, StringBuffer paramStringBuffer, int paramInt, boolean paramBoolean)
  {
    int i = paramStringBuffer.length();
    while (paramInt > 1)
    {
      int j = paramBitSource.readBits(11);
      paramStringBuffer.append(a(j / 45));
      paramStringBuffer.append(a(j % 45));
      paramInt -= 2;
    }
    if (paramInt == 1)
      paramStringBuffer.append(a(paramBitSource.readBits(6)));
    if (paramBoolean)
      if (i < paramStringBuffer.length())
      {
        if (paramStringBuffer.charAt(i) == '%')
        {
          if ((i >= -1 + paramStringBuffer.length()) || (paramStringBuffer.charAt(i + 1) != '%'))
            break label133;
          paramStringBuffer.deleteCharAt(i + 1);
        }
        while (true)
        {
          i++;
          break;
          label133: paramStringBuffer.setCharAt(i, '\035');
        }
      }
  }

  private static void b(BitSource paramBitSource, StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt * 13 > paramBitSource.available())
      throw FormatException.getFormatInstance();
    byte[] arrayOfByte = new byte[paramInt * 2];
    int i = 0;
    if (paramInt > 0)
    {
      int j = paramBitSource.readBits(13);
      int k = j / 192 << 8 | j % 192;
      if (k < 7936);
      for (int m = k + 33088; ; m = k + 49472)
      {
        arrayOfByte[i] = ((byte)(m >> 8));
        arrayOfByte[(i + 1)] = ((byte)m);
        int n = i + 2;
        paramInt--;
        i = n;
        break;
      }
    }
    try
    {
      paramStringBuffer.append(new String(arrayOfByte, "SJIS"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw FormatException.getFormatInstance();
  }

  private static void c(BitSource paramBitSource, StringBuffer paramStringBuffer, int paramInt)
  {
    while (paramInt >= 3)
    {
      int k = paramBitSource.readBits(10);
      if (k >= 1000)
        throw FormatException.getFormatInstance();
      paramStringBuffer.append(a(k / 100));
      paramStringBuffer.append(a(k / 10 % 10));
      paramStringBuffer.append(a(k % 10));
      paramInt -= 3;
    }
    if (paramInt == 2)
    {
      j = paramBitSource.readBits(7);
      if (j >= 100)
        throw FormatException.getFormatInstance();
      paramStringBuffer.append(getBundle(j / 10));
      paramStringBuffer.append(getBundle(j % 10));
    }
    while (paramInt != 1)
    {
      int j;
      return;
    }
    int i = paramBitSource.readBits(4);
    if (i >= 10)
      throw FormatException.getFormatInstance();
    paramStringBuffer.append(a(i));
  }

  static DecoderResult decode(byte[] paramArrayOfByte, Version paramVersion, ErrorCorrectionLevel paramErrorCorrectionLevel, Hashtable paramHashtable)
  {
    BitSource localBitSource = new BitSource(paramArrayOfByte);
    StringBuffer localStringBuffer = new StringBuffer(50);
    CharacterSetECI localCharacterSetECI = null;
    boolean bool1 = false;
    Vector localVector = new Vector(1);
    while (true)
    {
      Object localObject;
      boolean bool2;
      if (localBitSource.available() < 4)
      {
        localObject = Mode.TERMINATOR;
        if (localObject.equals(Mode.TERMINATOR))
          break label533;
        if ((!localObject.equals(Mode.FNC1_FIRST_POSITION)) && (!localObject.equals(Mode.FNC1_SECOND_POSITION)))
          break label162;
        bool2 = true;
      }
      while (true)
      {
        label87: if (!localObject.equals(Mode.TERMINATOR))
          break label540;
        String str1 = localStringBuffer.toString();
        if (localVector.isEmpty())
          localVector = null;
        if (paramErrorCorrectionLevel == null);
        for (String str2 = null; ; str2 = paramErrorCorrectionLevel.toString())
        {
          while (true)
          {
            return new DecoderResult(paramArrayOfByte, str1, localVector, str2);
            try
            {
              Mode localMode = Mode.forBits(localBitSource.readBits(4));
              localObject = localMode;
            }
            catch (IllegalArgumentException localIllegalArgumentException)
            {
              throw FormatException.getFormatInstance();
            }
          }
          label162: if (localObject.equals(Mode.STRUCTURED_APPEND))
          {
            localBitSource.readBits(16);
            bool2 = bool1;
            break label87;
          }
          if (localObject.equals(Mode.ECI))
          {
            int m = localBitSource.readBits(8);
            int n;
            if ((m & 0x80) == 0)
              n = m & 0x7F;
            while (true)
            {
              localCharacterSetECI = CharacterSetECI.getCharacterSetECIByValue(n);
              if (localCharacterSetECI != null)
                break label331;
              throw FormatException.getFormatInstance();
              if ((m & 0xC0) == 128)
              {
                n = localBitSource.readBits(8) | (m & 0x3F) << 8;
              }
              else
              {
                if ((m & 0xE0) != 192)
                  break;
                n = localBitSource.readBits(16) | (m & 0x1F) << 16;
              }
            }
            throw new IllegalArgumentException("Bad ECI bits starting with byte " + m);
            label331: bool2 = bool1;
            break label87;
          }
          if (localObject.equals(Mode.HANZI))
          {
            int j = localBitSource.readBits(4);
            int k = localBitSource.readBits(((Mode)localObject).getCharacterCountBits(paramVersion));
            if (j == 1)
              a(localBitSource, localStringBuffer, k);
            bool2 = bool1;
            break label87;
          }
          int i = localBitSource.readBits(((Mode)localObject).getCharacterCountBits(paramVersion));
          if (localObject.equals(Mode.NUMERIC))
          {
            c(localBitSource, localStringBuffer, i);
            bool2 = bool1;
            break label87;
          }
          if (localObject.equals(Mode.ALPHANUMERIC))
          {
            a(localBitSource, localStringBuffer, i, bool1);
            bool2 = bool1;
            break label87;
          }
          if (localObject.equals(Mode.BYTE))
          {
            a(localBitSource, localStringBuffer, i, localCharacterSetECI, localVector, paramHashtable);
            bool2 = bool1;
            break label87;
          }
          if (localObject.equals(Mode.KANJI))
          {
            b(localBitSource, localStringBuffer, i);
            bool2 = bool1;
            break label87;
          }
          throw FormatException.getFormatInstance();
        }
        label533: bool2 = bool1;
      }
      label540: bool1 = bool2;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DecodedBitStreamParser
 * JD-Core Version:    0.6.2
 */