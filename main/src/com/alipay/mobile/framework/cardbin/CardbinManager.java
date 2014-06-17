package com.alipay.mobile.framework.cardbin;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.mobile.common.apkutil.MiscUtils;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.io.File;
import java.sql.SQLException;
import java.util.List;

public class CardbinManager
{
  private static CardbinManager a;
  private CardbinDBHelper b;
  private Context c;

  private CardbinManager(Context paramContext)
  {
    this.c = paramContext;
    File localFile = this.c.getDatabasePath("cardbin.db");
    if (!localFile.getParentFile().exists())
      localFile.getParentFile().mkdirs();
    if (!localFile.exists())
      MiscUtils.fileFromAssets("cardbin", this.c.getAssets(), localFile.getAbsolutePath());
  }

  public static CardbinManager getInstance(Context paramContext)
  {
    if (a == null)
      a = new CardbinManager(paramContext);
    return a;
  }

  public List<Cardbin> queryCarbin(String paramString)
  {
    if (this.b == null)
      this.b = new CardbinDBHelper(this.c);
    if ((this.b == null) || (TextUtils.isEmpty(paramString)))
      return null;
    int i = paramString.length();
    int j = 0;
    Object localObject = null;
    String str;
    if (j < i)
    {
      str = paramString.substring(0, (i + (j + 6)) % i);
      if (i <= 0)
        break label186;
    }
    while (true)
    {
      try
      {
        if (str.length() <= 0)
        {
          break label186;
          if (localObject != null)
          {
            int k = ((List)localObject).size();
            if (k > 0)
            {
              if (this.b.isOpen())
                this.b.close();
              this.b = null;
              return localObject;
            }
          }
        }
        else
        {
          List localList = this.b.getCardbinDao().queryBuilder().where().eq("cardLength", Integer.valueOf(i)).and().eq("binValue", str).query();
          localObject = localList;
          continue;
        }
      }
      catch (SQLException localSQLException)
      {
        localSQLException.printStackTrace();
        j++;
      }
      break;
      label186: localObject = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.cardbin.CardbinManager
 * JD-Core Version:    0.6.2
 */