package com.j256.ormlite.android.apptools;

import android.app.ListActivity;
import android.content.Context;
import android.os.Bundle;
import com.j256.ormlite.support.ConnectionSource;

public abstract class OrmLiteBaseListActivity<H extends OrmLiteSqliteOpenHelper> extends ListActivity
{
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
    return OpenHelperManager.getHelper(paramContext);
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
    this.a = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteBaseListActivity
 * JD-Core Version:    0.6.2
 */