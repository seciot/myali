package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.common.d;
import com.alipay.mobile.alipassapp.biz.model.a;
import com.alipay.mobile.alipassapp.ui.common.k;
import com.alipay.mobile.alipassapp.ui.common.p;
import com.alipay.mobile.browser.vo.HtmlActivityRequest;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class AlipassListActivity extends BaseActivity
  implements p
{
  protected APTitleBar a;
  protected APPullRefreshView b;
  protected bb c;
  protected APListView d;
  protected APLinearLayout e;
  protected APTextView f;
  private DialogInterface.OnCancelListener g;
  private AtomicBoolean h = new AtomicBoolean();
  private AtomicBoolean i = new AtomicBoolean();
  private k j;
  private d k;
  private APLinearLayout l;
  private long m;
  private Handler n = new Handler();

  protected static void a(String paramString, ActivityApplication paramActivityApplication)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("entry", Base64.encodeToString(paramString.getBytes(), 0));
    try
    {
      paramActivityApplication.getMicroApplicationContext().startApp("", "80000001", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getMessage();
    }
  }

  private void q()
  {
    BackgroundExecutor.execute(new av(this));
  }

  private void r()
  {
    if (this.c.a() == 0)
      l();
  }

  int a()
  {
    return 0;
  }

  protected final void a(int paramInt)
  {
    runOnUiThread(new au(this, paramInt));
  }

  protected void a(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = paramAdapterView.getItemAtPosition(paramInt);
    Intent localIntent;
    BaseAlipassInfoItem.AlipassInfoItem localAlipassInfoItem;
    if ((localObject != null) && ((localObject instanceof BaseAlipassInfoItem.AlipassInfoItem)))
    {
      localIntent = new Intent(this, AlipassDetailActivity_.class);
      localAlipassInfoItem = (BaseAlipassInfoItem.AlipassInfoItem)localObject;
      localIntent.putExtra("p", localAlipassInfoItem.getPassId());
      localIntent.putExtra("cache_version", localAlipassInfoItem.getPassCacheVersion());
      localIntent.putExtra("pass_is_cacheable", d());
      localIntent.putExtra("b", i());
      if (localAlipassInfoItem.getItemFrom() != 1)
        break label208;
    }
    label208: for (boolean bool = true; ; bool = false)
    {
      localIntent.putExtra("pass_is_offline", bool);
      localIntent.putExtra("is_invalid", f());
      localIntent.putExtra("pid", localAlipassInfoItem.getPartnerID());
      if (localAlipassInfoItem.getItemFrom() == 1)
      {
        String[] arrayOfString = new String[2];
        arrayOfString[0] = localAlipassInfoItem.getPartnerID();
        arrayOfString[1] = localAlipassInfoItem.getSerialNumber();
        localIntent.putExtra("pass_offline_data", arrayOfString);
      }
      this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 0);
      return;
    }
  }

  final void a(DeletePassResult paramDeletePassResult, String paramString1, String paramString2)
  {
    runOnUiThread(new ag(this, paramDeletePassResult, paramString1, paramString2));
  }

  final void a(DeletePassResult paramDeletePassResult, String paramString, boolean paramBoolean)
  {
    runOnUiThread(new af(this, paramDeletePassResult, paramString, paramBoolean));
  }

  protected void a(a parama)
  {
    if (b() != null)
      b().setVisibility(0);
  }

  public final void a(String paramString1, String paramString2)
  {
    HtmlActivityRequest localHtmlActivityRequest = new HtmlActivityRequest();
    localHtmlActivityRequest.setRequestUrl(paramString1);
    localHtmlActivityRequest.setTitle(paramString2);
    localHtmlActivityRequest.setNeedLogin(true);
    localHtmlActivityRequest.setHandlerType(1);
    Intent localIntent = new Intent(this, AlipassHtmlActivity_.class);
    localIntent.putExtra("HARequest", localHtmlActivityRequest);
    this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
  }

  protected final void a(String paramString1, String paramString2, BaseAlipassInfoItem.AlipassInfoItem paramAlipassInfoItem)
  {
    Boolean localBoolean1 = Boolean.valueOf(false);
    String str1;
    String str2;
    label26: String str3;
    Boolean localBoolean2;
    if (paramAlipassInfoItem != null)
    {
      str1 = paramAlipassInfoItem.getPassId();
      if (paramAlipassInfoItem == null)
        break label107;
      str2 = paramAlipassInfoItem.getPartnerID();
      str3 = "";
      if (!(this instanceof MemberCardCurrentListActivity))
        break label113;
      localBoolean2 = Boolean.valueOf(true);
      str3 = "20000062Home";
    }
    while (true)
    {
      if (localBoolean2.booleanValue())
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "", "", "20000062", "", paramString1, str3, paramString2, "", "u", "c", new String[] { str1, str2 });
      return;
      str1 = null;
      break;
      label107: str2 = null;
      break label26;
      label113: if ((this instanceof MemberCardPastListActivity))
      {
        localBoolean2 = Boolean.valueOf(true);
        str3 = "20000062OverdueList";
      }
      else
      {
        localBoolean2 = localBoolean1;
      }
    }
  }

  protected void a(String paramString, boolean paramBoolean)
  {
    BackgroundExecutor.execute(new ae(this, paramString, paramBoolean));
  }

  public final void a(boolean paramBoolean)
  {
    runOnUiThread(new ay(this, paramBoolean));
  }

  protected abstract View b();

  public final void b(a parama)
  {
    runOnUiThread(new ac(this, parama));
  }

  protected boolean c()
  {
    return false;
  }

  protected boolean d()
  {
    return false;
  }

  public final void e()
  {
  }

  protected boolean f()
  {
    return false;
  }

  protected boolean g()
  {
    return false;
  }

  protected boolean h()
  {
    return true;
  }

  protected abstract String i();

  protected abstract PassListReq j();

  protected void k()
  {
    setContentView(R.layout.main_alipass_list);
    this.a = ((APTitleBar)findViewById(R.id.title_bar));
    this.b = ((APPullRefreshView)findViewById(R.id.pull_refresh_container));
    this.d = ((APListView)this.b.findViewById(R.id.current_list_view));
    this.e = ((APLinearLayout)findViewById(R.id.alipass_past_list_error_layout));
    this.f = ((APTextView)this.e.findViewById(R.id.alipass_past_list_error_tip));
    this.c = new bb(this, this.d, a());
    if (b() != null)
      this.d.addFooterView(b());
    this.d.setAdapter(this.c);
  }

  void l()
  {
  }

  void m()
  {
  }

  final void n()
  {
    runOnUiThread(new al(this));
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 0) && (paramInt2 == -1))
    {
      str = paramIntent.getStringExtra("p");
      arrayOfString = paramIntent.getStringArrayExtra("pass_offline_data");
      if (str != null)
        this.c.a(str);
    }
    while (paramInt1 != 1)
    {
      String str;
      String[] arrayOfString;
      while (true)
      {
        r();
        if ((paramIntent.getBooleanExtra("isNeedRefresh", false)) && (d()))
          b(new a(this.k.c(i()), 1));
        return;
        if (arrayOfString != null)
          this.c.a(arrayOfString[0], arrayOfString[1]);
      }
    }
    BackgroundExecutor.execute(new aa(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m = System.currentTimeMillis();
    k();
    this.j = new k(this, (ViewGroup)findViewById(R.id.layout_viewgroup), this.mApp, this);
    this.k = new d(this.mApp, this);
    this.g = new z(this);
    this.d.setOnItemClickListener(new an(this));
    this.d.setOnItemLongClickListener(new ao(this));
    this.b.setRefreshListener(new aq(this));
    this.c.a(new as(this));
    q();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    BackgroundExecutor.execute(new ab(this));
  }

  protected void onPause()
  {
    super.onPause();
    this.c.c();
  }

  protected void onResume()
  {
    super.onResume();
    this.c.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassListActivity
 * JD-Core Version:    0.6.2
 */