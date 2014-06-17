package com.alipay.mobile.rome.pushservice.adapter;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.Handler;
import java.io.File;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class b
{
  public static final String a = b.class.getSimpleName();
  Activity b;
  Handler c = new Handler();
  boolean d = false;
  boolean e = false;
  File f;
  String g;
  private ProgressDialog h;
  private long i;

  public b(Activity paramActivity)
  {
    this.b = paramActivity;
  }

  // ERROR //
  private void a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 45	com/alipay/mobile/rome/pushservice/adapter/b:b	Landroid/app/Activity;
    //   6: ldc 147
    //   8: iconst_0
    //   9: invokevirtual 151	android/app/Activity:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   12: astore 9
    //   14: aload_0
    //   15: new 74	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 152	java/lang/StringBuilder:<init>	()V
    //   22: aload_0
    //   23: getfield 45	com/alipay/mobile/rome/pushservice/adapter/b:b	Landroid/app/Activity;
    //   26: invokevirtual 156	android/app/Activity:getFilesDir	()Ljava/io/File;
    //   29: invokevirtual 82	java/io/File:getPath	()Ljava/lang/String;
    //   32: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: ldc 158
    //   37: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: putfield 160	com/alipay/mobile/rome/pushservice/adapter/b:g	Ljava/lang/String;
    //   46: getstatic 30	com/alipay/mobile/rome/pushservice/adapter/b:a	Ljava/lang/String;
    //   49: pop
    //   50: new 74	java/lang/StringBuilder
    //   53: dup
    //   54: ldc 162
    //   56: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   59: aload_0
    //   60: getfield 160	com/alipay/mobile/rome/pushservice/adapter/b:g	Ljava/lang/String;
    //   63: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: pop
    //   70: sipush 5120
    //   73: newarray byte
    //   75: astore 12
    //   77: aload_1
    //   78: aload 12
    //   80: invokevirtual 168	java/io/InputStream:read	([B)I
    //   83: istore 13
    //   85: iload 13
    //   87: ifle +54 -> 141
    //   90: aload 9
    //   92: aload 12
    //   94: iconst_0
    //   95: iload 13
    //   97: invokevirtual 174	java/io/FileOutputStream:write	([BII)V
    //   100: iload_2
    //   101: iload 13
    //   103: iadd
    //   104: istore_2
    //   105: aload_0
    //   106: getfield 45	com/alipay/mobile/rome/pushservice/adapter/b:b	Landroid/app/Activity;
    //   109: ifnull +25 -> 134
    //   112: aload_0
    //   113: getfield 45	com/alipay/mobile/rome/pushservice/adapter/b:b	Landroid/app/Activity;
    //   116: invokevirtual 52	android/app/Activity:isFinishing	()Z
    //   119: ifne +15 -> 134
    //   122: aload_0
    //   123: getfield 54	com/alipay/mobile/rome/pushservice/adapter/b:h	Landroid/app/ProgressDialog;
    //   126: iload_2
    //   127: sipush 1024
    //   130: idiv
    //   131: invokevirtual 178	android/app/ProgressDialog:setProgress	(I)V
    //   134: aload_0
    //   135: getfield 41	com/alipay/mobile/rome/pushservice/adapter/b:d	Z
    //   138: ifeq -61 -> 77
    //   141: aload_1
    //   142: invokevirtual 181	java/io/InputStream:close	()V
    //   145: aload_1
    //   146: invokevirtual 181	java/io/InputStream:close	()V
    //   149: return
    //   150: astore 7
    //   152: aload_0
    //   153: iconst_1
    //   154: putfield 43	com/alipay/mobile/rome/pushservice/adapter/b:e	Z
    //   157: aload_1
    //   158: invokevirtual 181	java/io/InputStream:close	()V
    //   161: return
    //   162: astore 8
    //   164: return
    //   165: astore 5
    //   167: aload_0
    //   168: iconst_1
    //   169: putfield 43	com/alipay/mobile/rome/pushservice/adapter/b:e	Z
    //   172: aload_1
    //   173: invokevirtual 181	java/io/InputStream:close	()V
    //   176: return
    //   177: astore 6
    //   179: return
    //   180: astore_3
    //   181: aload_1
    //   182: invokevirtual 181	java/io/InputStream:close	()V
    //   185: aload_3
    //   186: athrow
    //   187: astore 14
    //   189: return
    //   190: astore 4
    //   192: goto -7 -> 185
    //
    // Exception table:
    //   from	to	target	type
    //   2	77	150	java/io/FileNotFoundException
    //   77	85	150	java/io/FileNotFoundException
    //   90	100	150	java/io/FileNotFoundException
    //   105	134	150	java/io/FileNotFoundException
    //   134	141	150	java/io/FileNotFoundException
    //   141	145	150	java/io/FileNotFoundException
    //   157	161	162	java/io/IOException
    //   2	77	165	java/lang/Exception
    //   77	85	165	java/lang/Exception
    //   90	100	165	java/lang/Exception
    //   105	134	165	java/lang/Exception
    //   134	141	165	java/lang/Exception
    //   141	145	165	java/lang/Exception
    //   172	176	177	java/io/IOException
    //   2	77	180	finally
    //   77	85	180	finally
    //   90	100	180	finally
    //   105	134	180	finally
    //   134	141	180	finally
    //   141	145	180	finally
    //   152	157	180	finally
    //   167	172	180	finally
    //   145	149	187	java/io/IOException
    //   181	185	190	java/io/IOException
  }

  final void a(int paramInt)
  {
    this.c.post(new d(this, paramInt));
  }

  public final void a(String paramString)
  {
    if ((this.b != null) && (!this.b.isFinishing()))
    {
      this.h = new ProgressDialog(this.b);
      this.h.setProgressStyle(1);
      this.h.setIndeterminate(false);
      this.h.setMessage(this.b.getResources().getString(com.alipay.mobile.rome.pushservice.d.b));
      this.h.setCancelable(false);
      this.h.setOnKeyListener(new h(this));
    }
    new Thread(new c(this, paramString)).start();
  }

  final void b(int paramInt)
  {
    if ((this.b != null) && (!this.b.isFinishing()))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.b);
      localBuilder.setTitle(this.b.getResources().getString(com.alipay.mobile.rome.pushservice.d.d));
      localBuilder.setMessage(this.b.getResources().getString(paramInt));
      localBuilder.setPositiveButton(com.alipay.mobile.rome.pushservice.d.c, new e(this));
      localBuilder.show();
    }
  }

  public final void b(String paramString)
  {
    File localFile = new File(this.b.getFilesDir().getPath() + "/alipay.apk");
    if (localFile.exists())
      localFile.delete();
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpGet localHttpGet = new HttpGet(paramString);
    HttpParams localHttpParams = localDefaultHttpClient.getParams();
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 45000);
    try
    {
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpGet);
      if (localHttpResponse.getStatusLine().getStatusCode() != 200)
      {
        this.e = true;
        return;
      }
      HttpEntity localHttpEntity = localHttpResponse.getEntity();
      this.i = localHttpEntity.getContentLength();
      new StringBuilder("getDataSource2 file size=").append(this.i).toString();
      int j = (int)this.i;
      if ((this.b != null) && (!this.b.isFinishing()))
      {
        if (j != -1)
          this.h.setMax(j / 1024);
        this.c.post(new i(this));
      }
      a(localHttpEntity.getContent());
      return;
    }
    catch (Exception localException)
    {
      this.e = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.adapter.b
 * JD-Core Version:    0.6.2
 */