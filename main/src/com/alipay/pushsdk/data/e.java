package com.alipay.pushsdk.data;

import android.content.Context;
import com.alipay.pushsdk.c.h;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Arrays;
import org.json.JSONObject;

public class e extends c
{
  private static final String a = com.alipay.pushsdk.c.a.c.getBundle(e.class);
  private String b = "private";

  public e(Context paramContext)
  {
    super(paramContext);
  }

  private String c()
  {
    String str = b() + this.b + "/";
    new File(str).mkdir();
    return str;
  }

  private String[] d()
  {
    File localFile = new File(c());
    if (localFile.isDirectory())
    {
      String[] arrayOfString = localFile.list();
      if (arrayOfString != null)
      {
        Arrays.sort(arrayOfString);
        com.alipay.pushsdk.c.a.c.e(3, a, "getMsgList() " + arrayOfString.length + " fileList=" + h.a(arrayOfString));
      }
      return arrayOfString;
    }
    com.alipay.pushsdk.c.a.c.e(2, a, "getMsgList() usrDir can't find!");
    return null;
  }

  public final String a()
  {
    String str = "";
    String[] arrayOfString = d();
    if ((arrayOfString != null) && (arrayOfString.length > 0))
      str = arrayOfString[(-1 + arrayOfString.length)];
    return str;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final boolean a(NotifierInfo paramNotifierInfo)
  {
    b localb = paramNotifierInfo.g();
    String str = localb.d() + "_" + localb.c();
    com.alipay.pushsdk.c.a.c.e(3, a, "isContainMsg() newPerMsgId=" + str);
    String[] arrayOfString = d();
    boolean bool = false;
    if (arrayOfString != null)
      bool = h.a(arrayOfString, str);
    com.alipay.pushsdk.c.a.c.e(3, a, "isContainMsg() ret=" + bool);
    return bool;
  }

  public final void b(NotifierInfo paramNotifierInfo)
  {
    String[] arrayOfString = d();
    com.alipay.pushsdk.c.a.c.e(4, a, "saveMsgRecord() msg:" + paramNotifierInfo.a());
    if ((arrayOfString != null) && (arrayOfString.length >= 50) && (!new File(c(), arrayOfString[0]).delete()))
      com.alipay.pushsdk.c.a.c.e(2, a, "saveMsgRecord() fail to delete file:" + arrayOfString[0]);
    String str1 = c();
    b localb = paramNotifierInfo.g();
    try
    {
      String str2 = localb.d() + "_" + localb.c();
      com.alipay.pushsdk.c.a.c.e(4, a, "saveMsgInfo() newPerMsgName:" + str2);
      File localFile = new File(str1, String.valueOf(str2));
      if (!localFile.exists())
        localFile.createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localFileOutputStream.write(paramNotifierInfo.h().toString().getBytes());
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.data.e
 * JD-Core Version:    0.6.2
 */