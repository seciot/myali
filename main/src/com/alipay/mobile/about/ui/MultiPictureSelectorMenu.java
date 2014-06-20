package com.alipay.mobile.about.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.about.ui.b.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.List;

public class MultiPictureSelectorMenu extends AbsAlbumListActivity<com.alipay.mobile.about.ui.AppBundle.BundlesManager>
{
  private com.alipay.mobile.about.ui.Bundle.AppBundle e;

  public static void a(ActivityApplication paramActivityApplication, Activity paramActivity, Intent paramIntent, int paramInt)
  {
    Intent localIntent = new Intent(paramActivity, MultiPictureSelectorMenu.class);
    localIntent.putExtra("from", paramIntent);
    localIntent.putExtra("filter", null);
    localIntent.putExtra("current_count", paramInt);
    paramActivityApplication.getMicroApplicationContext().startActivity(paramActivityApplication, localIntent);
  }

  protected final void a()
  {
    ((APTitleBar)findViewById(R.id.bp)).setOnClickListener(new ap(this));
  }

  protected final void a(int paramInt)
  {
    a locala = (a)this.c.get(paramInt);
    if (locala != null)
    {
      Intent localIntent1 = getIntent();
      Intent localIntent2 = (Intent)localIntent1.getParcelableExtra("from");
      Intent localIntent3 = (Intent)localIntent1.getParcelableExtra("filter");
      MultiPictureSelectorActivity.a(this.mApp, this, locala.b, locala.e, localIntent2, localIntent3, localIntent1.getIntExtra("current_count", 0));
      finish();
    }
  }

  protected final int c()
  {
    return R.layout.Y;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.e != null)
      this.e.a();
    if (this.b != null)
      this.b.b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.MultiPictureSelectorMenu
 * JD-Core Version:    0.6.2
 */