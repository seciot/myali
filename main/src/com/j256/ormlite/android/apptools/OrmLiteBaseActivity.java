package com.j256.ormlite.android.apptools;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;

public abstract class OrmLiteBaseActivity<H extends OrmLiteSqliteOpenHelper> extends Activity
{
  private static Logger d = LoggerFactory.getLogger(OrmLiteBaseActivity.class);
  private volatile H a;
  private volatile boolean b = false;
  private volatile boolean c = false;

  public ConnectionSource getConnectionSource()
  {
    return getHelper().getConnectionSource();
  }

  public H getHelper()
  {
    if (this.a == null)
    {
      if (!this.b)
        throw new IllegalStateException("A call has not been made to onCreate() yet so the helper is null");
      if (this.c)
        throw new IllegalStateException("A call to onDestroy has already been made and the helper cannot be used after that point");
      throw new IllegalStateException("Helper is null for some unknown reason");
    }
    return this.a;
  }

  protected H getHelperInternal(Context paramContext)
  {
    OrmLiteSqliteOpenHelper localOrmLiteSqliteOpenHelper = OpenHelperManager.getHelper(paramContext);
    d.trace("{}: got new helper {} from OpenHelperManager", this, localOrmLiteSqliteOpenHelper);
    return localOrmLiteSqliteOpenHelper;
  }

  protected void onCreate(Bundle paramBundle)
  {
    if (this.a == null)
    {
      this.a = getHelperInternal(this);
      this.b = true;
    }
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    releaseHelper(this.a);
    this.c = true;
  }

  protected void releaseHelper(H paramH)
  {
    OpenHelperManager.releaseHelper();
    d.trace("{}: helper {} was released, set to null", this, paramH);
    this.a = null;
  }

  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteBaseActivity
 * JD-Core Version:    0.6.2
 */