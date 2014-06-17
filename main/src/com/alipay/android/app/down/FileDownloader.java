package com.alipay.android.app.down;

import com.alipay.android.app.exception.AppErrorException;
import org.apache.http.HttpEntity;

public final class FileDownloader
{
  private String a;
  private String b;
  private String c;
  private FileDownloader.IDownloadProgress d;
  private c e;
  private boolean f = false;
  private boolean g;

  private long d()
  {
    try
    {
      long l = HttpClientUtil.a(this.a).getContentLength();
      return l;
    }
    catch (Exception localException)
    {
      AppErrorException.a(getClass(), "can not get file length", localException);
    }
    return -1L;
  }

  protected final boolean a()
  {
    return this.f;
  }

  public final void b()
  {
    new Thread(new a(this)).start();
  }

  // ERROR //
  protected final void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 120	java/io/FileOutputStream
    //   5: dup
    //   6: aload_0
    //   7: getfield 49	com/alipay/android/app/down/FileDownloader:c	Ljava/lang/String;
    //   10: invokespecial 121	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   13: astore_2
    //   14: new 123	java/io/ObjectOutputStream
    //   17: dup
    //   18: aload_2
    //   19: invokespecial 126	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore_3
    //   23: aload_3
    //   24: aload_0
    //   25: getfield 24	com/alipay/android/app/down/FileDownloader:e	Lcom/alipay/android/app/down/c;
    //   28: invokevirtual 128	com/alipay/android/app/down/c:a	()J
    //   31: invokevirtual 131	java/io/ObjectOutputStream:writeLong	(J)V
    //   34: aload_3
    //   35: aload_0
    //   36: getfield 24	com/alipay/android/app/down/FileDownloader:e	Lcom/alipay/android/app/down/c;
    //   39: invokevirtual 133	com/alipay/android/app/down/c:b	()J
    //   42: invokevirtual 131	java/io/ObjectOutputStream:writeLong	(J)V
    //   45: aload_3
    //   46: invokevirtual 136	java/io/ObjectOutputStream:flush	()V
    //   49: aload_2
    //   50: invokevirtual 137	java/io/FileOutputStream:close	()V
    //   53: aload_3
    //   54: invokevirtual 138	java/io/ObjectOutputStream:close	()V
    //   57: return
    //   58: astore 4
    //   60: aconst_null
    //   61: astore_3
    //   62: aload 4
    //   64: invokevirtual 141	java/lang/Exception:printStackTrace	()V
    //   67: aload_1
    //   68: invokevirtual 137	java/io/FileOutputStream:close	()V
    //   71: aload_3
    //   72: invokevirtual 138	java/io/ObjectOutputStream:close	()V
    //   75: return
    //   76: astore 9
    //   78: return
    //   79: astore 5
    //   81: aconst_null
    //   82: astore_3
    //   83: aconst_null
    //   84: astore_2
    //   85: aload_2
    //   86: invokevirtual 137	java/io/FileOutputStream:close	()V
    //   89: aload_3
    //   90: invokevirtual 138	java/io/ObjectOutputStream:close	()V
    //   93: aload 5
    //   95: athrow
    //   96: astore 10
    //   98: goto -45 -> 53
    //   101: astore 11
    //   103: return
    //   104: astore 8
    //   106: goto -35 -> 71
    //   109: astore 6
    //   111: goto -22 -> 89
    //   114: astore 7
    //   116: goto -23 -> 93
    //   119: astore 5
    //   121: aconst_null
    //   122: astore_3
    //   123: goto -38 -> 85
    //   126: astore 5
    //   128: goto -43 -> 85
    //   131: astore 5
    //   133: aload_1
    //   134: astore_2
    //   135: goto -50 -> 85
    //   138: astore 4
    //   140: aload_2
    //   141: astore_1
    //   142: aconst_null
    //   143: astore_3
    //   144: goto -82 -> 62
    //   147: astore 4
    //   149: aload_2
    //   150: astore_1
    //   151: goto -89 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	58	java/lang/Exception
    //   71	75	76	java/lang/Exception
    //   2	14	79	finally
    //   49	53	96	java/lang/Exception
    //   53	57	101	java/lang/Exception
    //   67	71	104	java/lang/Exception
    //   85	89	109	java/lang/Exception
    //   89	93	114	java/lang/Exception
    //   14	23	119	finally
    //   23	49	126	finally
    //   62	67	131	finally
    //   14	23	138	java/lang/Exception
    //   23	49	147	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.down.FileDownloader
 * JD-Core Version:    0.6.2
 */