package com.alipay.mobile.base.resourceclean;

import android.content.Context;
import com.alipay.mobile.framework.AlipayApplication;
import java.io.File;

public class CleanCampusAppTask
  implements Task
{
  public final void a()
  {
    String str1 = AlipayApplication.getInstance().getApplicationContext().getFilesDir().getAbsolutePath();
    String str2 = str1 + File.separator + "apps" + File.separator + "2013062600000474.apk";
    File localFile = new File(str2);
    if (localFile.exists())
    {
      new StringBuilder().append(str2).append("Campus app APK file exist,delete file!").toString();
      localFile.delete();
      return;
    }
    new StringBuilder().append(str2).append("Campus app APK file not exist!").toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.resourceclean.CleanCampusAppTask
 * JD-Core Version:    0.6.2
 */