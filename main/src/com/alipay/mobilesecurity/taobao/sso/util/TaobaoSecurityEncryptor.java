package com.alipay.mobilesecurity.taobao.sso.util;

import android.content.ContextWrapper;
import com.taobao.securityjni.UtilWX;
import com.taobao.securityjni.tools.DataContext;

public class TaobaoSecurityEncryptor
{
  private static DataContext a(ContextWrapper paramContextWrapper)
  {
    TaobaoSsoLoginUtils.init(paramContextWrapper);
    DataContext localDataContext = new DataContext();
    localDataContext.extData = TaobaoSsoLoginUtils.getAppKey(paramContextWrapper).getBytes();
    return localDataContext;
  }

  public static String decrypt(ContextWrapper paramContextWrapper, String paramString)
  {
    return new UtilWX(paramContextWrapper).Get(paramString, a(paramContextWrapper));
  }

  public static byte[] decrypt(ContextWrapper paramContextWrapper, byte[] paramArrayOfByte)
  {
    return new UtilWX(paramContextWrapper).Get(paramArrayOfByte, a(paramContextWrapper));
  }

  public static String encrypt(ContextWrapper paramContextWrapper, String paramString)
  {
    return new UtilWX(paramContextWrapper).Put(paramString, a(paramContextWrapper));
  }

  public static byte[] encrypt(ContextWrapper paramContextWrapper, byte[] paramArrayOfByte)
  {
    return new UtilWX(paramContextWrapper).Put(paramArrayOfByte, a(paramContextWrapper));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.taobao.sso.util.TaobaoSecurityEncryptor
 * JD-Core Version:    0.6.2
 */