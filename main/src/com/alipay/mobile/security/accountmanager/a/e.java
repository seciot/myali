package com.alipay.mobile.security.accountmanager.a;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class e
  implements Runnable
{
  e(d paramd, UserInfo paramUserInfo, Bundle paramBundle)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: invokestatic 32	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   3: invokevirtual 36	com/alipay/mobile/framework/AlipayApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   6: ldc 38
    //   8: invokevirtual 44	java/lang/Class:getName	()Ljava/lang/String;
    //   11: invokeinterface 50 2 0
    //   16: checkcast 38	com/alipay/mobile/framework/service/common/RpcService
    //   19: ldc 52
    //   21: invokevirtual 56	com/alipay/mobile/framework/service/common/RpcService:getRpcProxy	(Ljava/lang/Class;)Ljava/lang/Object;
    //   24: checkcast 52	com/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService
    //   27: astore 5
    //   29: new 58	com/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq
    //   32: dup
    //   33: invokespecial 59	com/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq:<init>	()V
    //   36: astore 6
    //   38: aload 6
    //   40: aload_0
    //   41: getfield 18	com/alipay/mobile/security/accountmanager/a/e:a	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   44: invokevirtual 64	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getLogonId	()Ljava/lang/String;
    //   47: invokevirtual 68	com/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq:setLogonId	(Ljava/lang/String;)V
    //   50: aload_0
    //   51: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   54: pop
    //   55: aload 6
    //   57: invokestatic 73	com/alipay/mobile/security/accountmanager/a/d:a	(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)V
    //   60: aload_0
    //   61: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   64: pop
    //   65: aload 6
    //   67: invokestatic 76	com/alipay/mobile/security/accountmanager/a/d:b	(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)Ljava/lang/String;
    //   70: pop
    //   71: aload 5
    //   73: aload 6
    //   75: invokeinterface 80 2 0
    //   80: pop
    //   81: aload_0
    //   82: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   85: aload_0
    //   86: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   89: aload_0
    //   90: getfield 18	com/alipay/mobile/security/accountmanager/a/e:a	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   93: invokestatic 83	com/alipay/mobile/security/accountmanager/a/d:a	(Lcom/alipay/mobile/security/accountmanager/a/d;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    //   96: aload_0
    //   97: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   100: pop
    //   101: aload_0
    //   102: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   105: aload_0
    //   106: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   109: ldc 85
    //   111: invokevirtual 91	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokestatic 94	com/alipay/mobile/security/accountmanager/a/d:a	(Landroid/os/Bundle;Ljava/lang/String;)V
    //   117: return
    //   118: astore_3
    //   119: aload_0
    //   120: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   123: aload_0
    //   124: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   127: aload_0
    //   128: getfield 18	com/alipay/mobile/security/accountmanager/a/e:a	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   131: invokestatic 83	com/alipay/mobile/security/accountmanager/a/d:a	(Lcom/alipay/mobile/security/accountmanager/a/d;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    //   134: aload_0
    //   135: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   138: pop
    //   139: aload_0
    //   140: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   143: aload_0
    //   144: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   147: ldc 85
    //   149: invokevirtual 91	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   152: invokestatic 94	com/alipay/mobile/security/accountmanager/a/d:a	(Landroid/os/Bundle;Ljava/lang/String;)V
    //   155: return
    //   156: astore_1
    //   157: aload_0
    //   158: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   161: aload_0
    //   162: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   165: aload_0
    //   166: getfield 18	com/alipay/mobile/security/accountmanager/a/e:a	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   169: invokestatic 83	com/alipay/mobile/security/accountmanager/a/d:a	(Lcom/alipay/mobile/security/accountmanager/a/d;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    //   172: aload_0
    //   173: getfield 16	com/alipay/mobile/security/accountmanager/a/e:c	Lcom/alipay/mobile/security/accountmanager/a/d;
    //   176: pop
    //   177: aload_0
    //   178: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   181: aload_0
    //   182: getfield 20	com/alipay/mobile/security/accountmanager/a/e:b	Landroid/os/Bundle;
    //   185: ldc 85
    //   187: invokevirtual 91	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   190: invokestatic 94	com/alipay/mobile/security/accountmanager/a/d:a	(Landroid/os/Bundle;Ljava/lang/String;)V
    //   193: aload_1
    //   194: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	81	118	java/lang/Exception
    //   0	81	156	finally
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.a.e
 * JD-Core Version:    0.6.2
 */