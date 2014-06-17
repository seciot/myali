package com.alipay.mobile.common.helper;

public class FileHelper
{
  public static boolean delete(String paramString)
  {
    try
    {
      String str = "rm -r " + paramString;
      Runtime.getRuntime().exec(str);
      Thread.sleep(1000L);
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.helper.FileHelper
 * JD-Core Version:    0.6.2
 */