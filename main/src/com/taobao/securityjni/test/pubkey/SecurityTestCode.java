package com.taobao.securityjni.test.pubkey;

import com.taobao.securityjni.tools.RetObject;
import com.taobao.securityjni.usertrack.a;

public class SecurityTestCode
{
  public static RetObject a()
  {
    try
    {
      RetObject localRetObject = getPublicKeyStatic();
      return localRetObject;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      a.a("getPublicKeyStatic" + null, localUnsatisfiedLinkError);
      return null;
    }
    catch (Throwable localThrowable)
    {
      a.a("getPublicKeyStatic" + null, localThrowable);
    }
    return null;
  }

  public static RetObject b()
  {
    try
    {
      RetObject localRetObject = getPublicKeyParse();
      return localRetObject;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      a.a("getPublicKeyParse" + null, localUnsatisfiedLinkError);
      return null;
    }
    catch (Throwable localThrowable)
    {
      a.a("getPublicKeyParse" + null, localThrowable);
    }
    return null;
  }

  private static native RetObject getPublicKeyParse();

  private static native RetObject getPublicKeyStatic();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.test.pubkey.SecurityTestCode
 * JD-Core Version:    0.6.2
 */