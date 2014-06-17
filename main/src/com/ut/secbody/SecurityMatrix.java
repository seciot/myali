package com.ut.secbody;

import android.content.ContextWrapper;
import com.taobao.security.ProtocalEntry;
import com.taobao.security.ProtocolManager;
import com.taobao.security.b;
import com.taobao.security.d;
import com.taobao.security.e;
import com.taobao.securityjni.GlobalInit;

public class SecurityMatrix
{
  private static d a = new d();

  public static void MatrixInitAsync(ContextWrapper paramContextWrapper)
  {
    new Thread(new SecurityMatrix.a(paramContextWrapper)).start();
  }

  public static void MatrixInitSync(ContextWrapper paramContextWrapper)
  {
    b(paramContextWrapper);
  }

  private static void a(String paramString)
  {
    e locale = new e();
    if (b.a(getMatrixEntry().filter, paramString, locale))
    {
      a.add(locale.a);
      if (GlobalInit.GetSecurityDebugMode())
        new StringBuilder("dataReceive:").append(locale.a).toString();
    }
  }

  private static void b(ContextWrapper paramContextWrapper)
  {
    b.a();
    ProtocolManager.protocolHandler(paramContextWrapper);
    ProtocalEntry localProtocalEntry = getMatrixEntry();
    a.a(localProtocalEntry.bs);
  }

  public static void dataReceive(String paramString)
  {
    if (GlobalInit.GetSecurityDebugMode())
    {
      new StringBuilder("dataReceive:usertrackData=").append(paramString).toString();
      long l1 = System.nanoTime();
      a(paramString);
      long l2 = System.nanoTime() - l1;
      double d = l2 / 1000000.0D;
      new StringBuilder("*********dataReceive[").append(l2).append("ns,").append(d).append("ms]********").toString();
      return;
    }
    a(paramString);
  }

  public static byte[] getMatrixData()
  {
    return a.a();
  }

  public static ProtocalEntry getMatrixEntry()
  {
    ProtocalEntry localProtocalEntry = new ProtocalEntry();
    ProtocolManager.getCurrentConfig(localProtocalEntry);
    return localProtocalEntry;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.secbody.SecurityMatrix
 * JD-Core Version:    0.6.2
 */