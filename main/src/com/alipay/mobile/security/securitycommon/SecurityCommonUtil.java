package com.alipay.mobile.security.securitycommon;

import com.alipay.mobile.common.logging.LogCatLog;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SecurityCommonUtil
{
  public static String getMD5Str(String paramString)
  {
    MessageDigest localMessageDigest = null;
    try
    {
      localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      label22: arrayOfByte = localMessageDigest.digest();
      localStringBuffer = new StringBuffer();
      for (i = 0; ; i++)
      {
        if (i >= arrayOfByte.length)
          break label122;
        if (Integer.toHexString(0xFF & arrayOfByte[i]).length() != 1)
          break;
        localStringBuffer.append("0").append(Integer.toHexString(0xFF & arrayOfByte[i]));
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      StringBuffer localStringBuffer;
      while (true)
      {
        byte[] arrayOfByte;
        int i;
        LogCatLog.printStackTraceAndMore(localUnsupportedEncodingException);
        continue;
        localStringBuffer.append(Integer.toHexString(0xFF & arrayOfByte[i]));
      }
      return localStringBuffer.toString();
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      label122: break label22;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityCommonUtil
 * JD-Core Version:    0.6.2
 */