package com.google.zxing.qrcode.encoder;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.ECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import com.google.zxing.qrcode.decoder.Version.ECBlocks;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Vector;

public final class Encoder
{
  static final String DEFAULT_BYTE_MODE_ENCODING = "ISO-8859-1";
  private static final int[] a = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1 };

  private static boolean a(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("Shift_JIS");
      int i = arrayOfByte.length;
      if (i % 2 != 0)
        return false;
      for (int j = 0; ; j += 2)
      {
        if (j >= i)
          break label75;
        int k = 0xFF & arrayOfByte[j];
        if (((k < 129) || (k > 159)) && ((k < 224) || (k > 235)))
          break;
      }
      label75: return true;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    return false;
  }

  static void append8BitBytes(String paramString1, BitArray paramBitArray, String paramString2)
  {
    try
    {
      byte[] arrayOfByte = paramString1.getBytes(paramString2);
      for (int i = 0; i < arrayOfByte.length; i++)
        paramBitArray.appendBits(arrayOfByte[i], 8);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new WriterException(localUnsupportedEncodingException.toString());
    }
  }

  static void appendAlphanumericBytes(String paramString, BitArray paramBitArray)
  {
    int i = paramString.length();
    int j = 0;
    while (j < i)
    {
      int k = getAlphanumericCode(paramString.charAt(j));
      if (k == -1)
        throw new WriterException();
      if (j + 1 < i)
      {
        int m = getAlphanumericCode(paramString.charAt(j + 1));
        if (m == -1)
          throw new WriterException();
        paramBitArray.appendBits(m + k * 45, 11);
        j += 2;
      }
      else
      {
        paramBitArray.appendBits(k, 6);
        j++;
      }
    }
  }

  static void appendBytes(String paramString1, Mode paramMode, BitArray paramBitArray, String paramString2)
  {
    if (paramMode.equals(Mode.NUMERIC))
    {
      appendNumericBytes(paramString1, paramBitArray);
      return;
    }
    if (paramMode.equals(Mode.ALPHANUMERIC))
    {
      appendAlphanumericBytes(paramString1, paramBitArray);
      return;
    }
    if (paramMode.equals(Mode.BYTE))
    {
      append8BitBytes(paramString1, paramBitArray, paramString2);
      return;
    }
    if (paramMode.equals(Mode.KANJI))
    {
      appendKanjiBytes(paramString1, paramBitArray);
      return;
    }
    throw new WriterException("Invalid mode: " + paramMode);
  }

  static void appendKanjiBytes(String paramString, BitArray paramBitArray)
  {
    while (true)
    {
      int j;
      int m;
      int n;
      try
      {
        byte[] arrayOfByte = paramString.getBytes("Shift_JIS");
        int i = arrayOfByte.length;
        j = 0;
        if (j >= i)
          break label151;
        int k = 0xFF & arrayOfByte[j];
        m = 0xFF & arrayOfByte[(j + 1)] | k << 8;
        if ((m >= 33088) && (m <= 40956))
        {
          n = m - 33088;
          if (n != -1)
            break label123;
          throw new WriterException("Invalid byte sequence");
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new WriterException(localUnsupportedEncodingException.toString());
      }
      if ((m >= 57408) && (m <= 60351))
      {
        n = m - 49472;
        continue;
        label123: paramBitArray.appendBits(192 * (n >> 8) + (n & 0xFF), 13);
        j += 2;
      }
      else
      {
        label151: n = -1;
      }
    }
  }

  static void appendLengthInfo(int paramInt1, int paramInt2, Mode paramMode, BitArray paramBitArray)
  {
    int i = paramMode.getCharacterCountBits(Version.getVersionForNumber(paramInt2));
    if (paramInt1 > -1 + (1 << i))
      throw new WriterException(paramInt1 + "is bigger than" + (-1 + (1 << i)));
    paramBitArray.appendBits(paramInt1, i);
  }

  static void appendModeInfo(Mode paramMode, BitArray paramBitArray)
  {
    paramBitArray.appendBits(paramMode.getBits(), 4);
  }

  static void appendNumericBytes(String paramString, BitArray paramBitArray)
  {
    int i = paramString.length();
    int j = 0;
    while (j < i)
    {
      int k = '\0*0' + paramString.charAt(j);
      if (j + 2 < i)
      {
        int m = '\0*0' + paramString.charAt(j + 1);
        paramBitArray.appendBits('\0*0' + paramString.charAt(j + 2) + (k * 100 + m * 10), 10);
        j += 3;
      }
      else if (j + 1 < i)
      {
        paramBitArray.appendBits('\0*0' + paramString.charAt(j + 1) + k * 10, 7);
        j += 2;
      }
      else
      {
        paramBitArray.appendBits(k, 4);
        j++;
      }
    }
  }

  public static Mode chooseMode(String paramString)
  {
    return chooseMode(paramString, null);
  }

  public static Mode chooseMode(String paramString1, String paramString2)
  {
    int i = 0;
    if ("Shift_JIS".equals(paramString2))
    {
      if (a(paramString1))
        return Mode.KANJI;
      return Mode.BYTE;
    }
    int j = 0;
    int k = 0;
    if (i < paramString1.length())
    {
      int m = paramString1.charAt(i);
      if ((m >= 48) && (m <= 57))
        k = 1;
      while (true)
      {
        i++;
        break;
        if (getAlphanumericCode(m) == -1)
          break label83;
        j = 1;
      }
      label83: return Mode.BYTE;
    }
    if (j != 0)
      return Mode.ALPHANUMERIC;
    if (k != 0)
      return Mode.NUMERIC;
    return Mode.BYTE;
  }

  public static void encode(String paramString, ErrorCorrectionLevel paramErrorCorrectionLevel, QRCode paramQRCode)
  {
    encode(paramString, paramErrorCorrectionLevel, null, paramQRCode);
  }

  public static void encode(String paramString, ErrorCorrectionLevel paramErrorCorrectionLevel, Hashtable paramHashtable, QRCode paramQRCode)
  {
    String str;
    int j;
    label64: int i2;
    label250: BitArray localBitArray3;
    ByteMatrix localByteMatrix;
    int i4;
    int i5;
    int i6;
    label346: int i7;
    if (paramHashtable == null)
    {
      str = null;
      if (str == null)
        str = "ISO-8859-1";
      Mode localMode = chooseMode(paramString, str);
      BitArray localBitArray1 = new BitArray();
      appendBytes(paramString, localMode, localBitArray1, str);
      int i = localBitArray1.getSizeInBytes();
      paramQRCode.setECLevel(paramErrorCorrectionLevel);
      paramQRCode.setMode(localMode);
      j = 1;
      if (j > 40)
        break label435;
      Version localVersion = Version.getVersionForNumber(j);
      int k = localVersion.getTotalCodewords();
      Version.ECBlocks localECBlocks = localVersion.getECBlocksForLevel(paramErrorCorrectionLevel);
      int m = localECBlocks.getTotalECCodewords();
      int n = localECBlocks.getNumBlocks();
      int i1 = k - m;
      if (i1 < i + 3)
        break label429;
      paramQRCode.setVersion(j);
      paramQRCode.setNumTotalBytes(k);
      paramQRCode.setNumDataBytes(i1);
      paramQRCode.setNumRSBlocks(n);
      paramQRCode.setNumECBytes(m);
      paramQRCode.setMatrixWidth(localVersion.getDimensionForVersion());
      BitArray localBitArray2 = new BitArray();
      if ((localMode == Mode.BYTE) && (!"ISO-8859-1".equals(str)))
      {
        CharacterSetECI localCharacterSetECI = CharacterSetECI.getCharacterSetECIByName(str);
        if (localCharacterSetECI != null)
        {
          localBitArray2.appendBits(Mode.ECI.getBits(), 4);
          localBitArray2.appendBits(localCharacterSetECI.getValue(), 8);
        }
      }
      appendModeInfo(localMode, localBitArray2);
      if (!localMode.equals(Mode.BYTE))
        break label446;
      i2 = localBitArray1.getSizeInBytes();
      appendLengthInfo(i2, paramQRCode.getVersion(), localMode, localBitArray2);
      localBitArray2.appendBitArray(localBitArray1);
      terminateBits(paramQRCode.getNumDataBytes(), localBitArray2);
      localBitArray3 = new BitArray();
      interleaveWithECBytes(localBitArray2, paramQRCode.getNumTotalBytes(), paramQRCode.getNumDataBytes(), paramQRCode.getNumRSBlocks(), localBitArray3);
      localByteMatrix = new ByteMatrix(paramQRCode.getMatrixWidth(), paramQRCode.getMatrixWidth());
      ErrorCorrectionLevel localErrorCorrectionLevel = paramQRCode.getECLevel();
      int i3 = paramQRCode.getVersion();
      i4 = 2147483647;
      i5 = -1;
      i6 = 0;
      if (i6 >= 8)
        break label455;
      MatrixUtil.buildMatrix(localBitArray3, localErrorCorrectionLevel, i3, i6, localByteMatrix);
      i7 = 0 + MaskUtil.applyMaskPenaltyRule1(localByteMatrix) + MaskUtil.applyMaskPenaltyRule2(localByteMatrix) + MaskUtil.applyMaskPenaltyRule3(localByteMatrix) + MaskUtil.applyMaskPenaltyRule4(localByteMatrix);
      if (i7 >= i4)
        break label522;
      i5 = i6;
    }
    while (true)
    {
      i6++;
      i4 = i7;
      break label346;
      str = (String)paramHashtable.get(EncodeHintType.CHARACTER_SET);
      break;
      label429: j++;
      break label64;
      label435: throw new WriterException("Cannot find proper rs block info (input data too big?)");
      label446: i2 = paramString.length();
      break label250;
      label455: paramQRCode.setMaskPattern(i5);
      MatrixUtil.buildMatrix(localBitArray3, paramQRCode.getECLevel(), paramQRCode.getVersion(), paramQRCode.getMaskPattern(), localByteMatrix);
      paramQRCode.setMatrix(localByteMatrix);
      if (!paramQRCode.isValid())
        throw new WriterException("Invalid QR code: " + paramQRCode.toString());
      return;
      label522: i7 = i4;
    }
  }

  static byte[] generateECBytes(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    int[] arrayOfInt = new int[j + paramInt];
    for (int k = 0; k < j; k++)
      arrayOfInt[k] = (0xFF & paramArrayOfByte[k]);
    new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(arrayOfInt, paramInt);
    byte[] arrayOfByte = new byte[paramInt];
    while (i < paramInt)
    {
      arrayOfByte[i] = ((byte)arrayOfInt[(j + i)]);
      i++;
    }
    return arrayOfByte;
  }

  static int getAlphanumericCode(int paramInt)
  {
    if (paramInt < a.length)
      return a[paramInt];
    return -1;
  }

  static void getNumDataBytesAndNumECBytesForBlockID(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramInt4 >= paramInt3)
      throw new WriterException("Block ID too large");
    int i = paramInt1 % paramInt3;
    int j = paramInt3 - i;
    int k = paramInt1 / paramInt3;
    int m = k + 1;
    int n = paramInt2 / paramInt3;
    int i1 = n + 1;
    int i2 = k - n;
    int i3 = m - i1;
    if (i2 != i3)
      throw new WriterException("EC bytes mismatch");
    if (paramInt3 != j + i)
      throw new WriterException("RS blocks mismatch");
    if (paramInt1 != j * (n + i2) + i * (i1 + i3))
      throw new WriterException("Total bytes mismatch");
    if (paramInt4 < j)
    {
      paramArrayOfInt1[0] = n;
      paramArrayOfInt2[0] = i2;
      return;
    }
    paramArrayOfInt1[0] = i1;
    paramArrayOfInt2[0] = i3;
  }

  static void interleaveWithECBytes(BitArray paramBitArray1, int paramInt1, int paramInt2, int paramInt3, BitArray paramBitArray2)
  {
    if (paramBitArray1.getSizeInBytes() != paramInt2)
      throw new WriterException("Number of bits and data bytes does not match");
    Vector localVector = new Vector(paramInt3);
    int i = 0;
    int j = 0;
    int k = 0;
    int i7;
    for (int m = 0; i < paramInt3; m = i7)
    {
      int[] arrayOfInt1 = new int[1];
      int[] arrayOfInt2 = new int[1];
      getNumDataBytesAndNumECBytesForBlockID(paramInt1, paramInt2, paramInt3, i, arrayOfInt1, arrayOfInt2);
      int i4 = arrayOfInt1[0];
      byte[] arrayOfByte3 = new byte[i4];
      paramBitArray1.toBytes(m * 8, arrayOfByte3, 0, i4);
      byte[] arrayOfByte4 = generateECBytes(arrayOfByte3, arrayOfInt2[0]);
      localVector.addElement(new BlockPair(arrayOfByte3, arrayOfByte4));
      int i5 = Math.max(k, i4);
      int i6 = Math.max(j, arrayOfByte4.length);
      i7 = m + arrayOfInt1[0];
      i++;
      j = i6;
      k = i5;
    }
    if (paramInt2 != m)
      throw new WriterException("Data bytes does not match offset");
    for (int n = 0; n < k; n++)
      for (int i3 = 0; i3 < localVector.size(); i3++)
      {
        byte[] arrayOfByte2 = ((BlockPair)localVector.elementAt(i3)).getDataBytes();
        if (n < arrayOfByte2.length)
          paramBitArray2.appendBits(arrayOfByte2[n], 8);
      }
    for (int i1 = 0; i1 < j; i1++)
      for (int i2 = 0; i2 < localVector.size(); i2++)
      {
        byte[] arrayOfByte1 = ((BlockPair)localVector.elementAt(i2)).getErrorCorrectionBytes();
        if (i1 < arrayOfByte1.length)
          paramBitArray2.appendBits(arrayOfByte1[i1], 8);
      }
    if (paramInt1 != paramBitArray2.getSizeInBytes())
      throw new WriterException("Interleaving error: " + paramInt1 + " and " + paramBitArray2.getSizeInBytes() + " differ.");
  }

  static void terminateBits(int paramInt, BitArray paramBitArray)
  {
    int i = paramInt << 3;
    if (paramBitArray.getSize() > i)
      throw new WriterException("data bits cannot fit in the QR Code" + paramBitArray.getSize() + " > " + i);
    for (int j = 0; (j < 4) && (paramBitArray.getSize() < i); j++)
      paramBitArray.appendBit(false);
    int k = 0x7 & paramBitArray.getSize();
    if (k > 0)
      while (k < 8)
      {
        paramBitArray.appendBit(false);
        k++;
      }
    int m = paramInt - paramBitArray.getSizeInBytes();
    int n = 0;
    if (n < m)
    {
      if ((n & 0x1) == 0);
      for (int i1 = 236; ; i1 = 17)
      {
        paramBitArray.appendBits(i1, 8);
        n++;
        break;
      }
    }
    if (paramBitArray.getSize() != i)
      throw new WriterException("Bits size does not equal capacity");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.Encoder
 * JD-Core Version:    0.6.2
 */