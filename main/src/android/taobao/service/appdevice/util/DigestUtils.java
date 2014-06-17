package android.taobao.service.appdevice.util;

import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;

public class DigestUtils
{
  private static String a(InputStream paramInputStream, String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      byte[] arrayOfByte = new byte[1024];
      for (int i = paramInputStream.read(arrayOfByte, 0, 1024); i >= 0; i = paramInputStream.read(arrayOfByte, 0, 1024))
        localMessageDigest.update(arrayOfByte, 0, i);
      String str = HexUtil.bytesToHexString(localMessageDigest.digest());
      return str;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new IllegalStateException("Security exception", localGeneralSecurityException);
    }
  }

  public static String md5ToHex(InputStream paramInputStream)
  {
    return a(paramInputStream, "MD5");
  }

  public static String sha1ToHex(InputStream paramInputStream)
  {
    return a(paramInputStream, "SHA-1");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.util.DigestUtils
 * JD-Core Version:    0.6.2
 */