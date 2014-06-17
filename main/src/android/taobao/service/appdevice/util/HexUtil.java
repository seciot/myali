package android.taobao.service.appdevice.util;

import java.io.ByteArrayOutputStream;

public class HexUtil
{
  private static String a = "0123456789ABCDEF";

  public static byte[] HexString2Bytes(String paramString)
  {
    byte[] arrayOfByte1 = new byte[6];
    byte[] arrayOfByte2 = paramString.getBytes();
    for (int i = 0; i < 6; i++)
    {
      int j = arrayOfByte2[(i * 2)];
      int k = arrayOfByte2[(1 + i * 2)];
      arrayOfByte1[i] = ((byte)((byte)(Byte.decode("0x" + new String(new byte[] { j })).byteValue() << 4) | Byte.decode("0x" + new String(new byte[] { k })).byteValue()));
    }
    return arrayOfByte1;
  }

  public static String bytesToHexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
      return null;
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2)
        localStringBuilder.append(0);
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }

  public static String decode(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramString.length() / 2);
    for (int i = 0; i < paramString.length(); i += 2)
      localByteArrayOutputStream.write(a.indexOf(paramString.charAt(i)) << 4 | a.indexOf(paramString.charAt(i + 1)));
    return new String(localByteArrayOutputStream.toByteArray());
  }

  public static String encode(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes();
    StringBuilder localStringBuilder = new StringBuilder(2 * arrayOfByte.length);
    for (int i = 0; i < arrayOfByte.length; i++)
    {
      localStringBuilder.append(a.charAt((0xF0 & arrayOfByte[i]) >> 4));
      localStringBuilder.append(a.charAt((0xF & arrayOfByte[i]) >> 0));
    }
    return localStringBuilder.toString();
  }

  public static byte[] hexStringToBytes(String paramString)
  {
    byte[] arrayOfByte;
    if ((paramString == null) || (paramString.equals("")))
      arrayOfByte = null;
    while (true)
    {
      return arrayOfByte;
      String str = paramString.toUpperCase();
      int i = str.length() / 2;
      char[] arrayOfChar = str.toCharArray();
      arrayOfByte = new byte[i];
      for (int j = 0; j < i; j++)
      {
        int k = j * 2;
        arrayOfByte[j] = ((byte)((byte)"0123456789ABCDEF".indexOf(arrayOfChar[k]) << 4 | (byte)"0123456789ABCDEF".indexOf(arrayOfChar[(k + 1)])));
      }
    }
  }

  public static String stringToHexString(String paramString)
  {
    String str1 = "";
    for (int i = 0; i < paramString.length(); i++)
    {
      String str2 = Integer.toHexString(paramString.charAt(i));
      str1 = str1 + str2;
    }
    return str1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.util.HexUtil
 * JD-Core Version:    0.6.2
 */