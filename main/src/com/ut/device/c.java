package com.ut.device;

import android.content.Context;
import android.os.Environment;
import com.ut.a;
import com.ut.c.g;
import java.io.File;

public class c
{
  public static com.ut.b.c e(Context paramContext)
  {
    if (paramContext != null)
      return new com.ut.b.c(paramContext, a.a, "Alvin2", false, true);
    return null;
  }

  public static boolean j()
  {
    String str = Environment.getExternalStorageState();
    if ((!g.D(str)) && ((str.equals("mounted")) || (str.equals("mounted_ro"))))
    {
      File localFile = Environment.getExternalStorageDirectory();
      if ((localFile != null) && (new File(localFile, a.a + File.separator + "Alvin2.xml").exists()))
        return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.device.c
 * JD-Core Version:    0.6.2
 */