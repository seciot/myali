package com.alipay.mobile.appstoreapp.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.appstoreapp.ui.AppDetailActivity;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

public class FastLoginAppOnItemClickListener
  implements AdapterView.OnItemClickListener
{
  private ActivityApplication a;
  private Context b;

  public FastLoginAppOnItemClickListener(Context paramContext, ActivityApplication paramActivityApplication)
  {
    this.b = paramContext;
    this.a = paramActivityApplication;
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    App localApp = (App)paramAdapterView.getAdapter().getItem(paramInt);
    if (localApp != null)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("APP_ID", localApp.getAppId());
      localIntent.setClass(this.b, AppDetailActivity.class);
      this.a.getMicroApplicationContext().startActivity(this.a, localIntent);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.adapter.FastLoginAppOnItemClickListener
 * JD-Core Version:    0.6.2
 */