package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ViewGroup;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.c;
import com.alipay.mobile.alipassapp.ui.common.k;
import com.alipay.mobile.alipassapp.ui.common.p;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

public class MemberCardObtainableListActivity extends BaseActivity
  implements p
{
  protected APTitleBar a;
  protected APListView b;
  protected APLinearLayout c;
  protected eu d;
  protected c e = new c();
  private DialogInterface.OnCancelListener f;
  private AtomicBoolean g = new AtomicBoolean();
  private com.alipay.mobile.alipassapp.biz.a h;
  private k i;
  private long j;

  protected static void a(BehaviourIdEnum paramBehaviourIdEnum, String paramString1, String paramString2)
  {
    if ((paramBehaviourIdEnum != null) && (StringUtils.isNotBlank(paramString1)))
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), paramBehaviourIdEnum, "", "", "20000062", "", "", "20000062GetView", paramString1, "", "u", "c", new String[] { paramString2 });
  }

  private void c()
  {
    BackgroundExecutor.execute(new ep(this));
  }

  private void d()
  {
    this.c.setVisibility(0);
  }

  public final void a()
  {
    runOnUiThread(new er(this));
  }

  protected final void a(String paramString1, String paramString2, String paramString3)
  {
    e(BehaviourIdEnum.CLICKED, "getCard", paramString1);
    Intent localIntent = new Intent(this, AlipassQueryCardActivity_.class);
    localIntent.putExtra("pid", paramString1);
    localIntent.putExtra("ctype", paramString2);
    localIntent.putExtra("tid", paramString3);
    localIntent.putExtra("b", "m");
    localIntent.putExtra("channel", "lk");
    this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 0);
  }

  protected final void b()
  {
    runOnUiThread(new es(this));
  }

  public final void e()
  {
    c();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 0) && (paramInt2 == -1))
    {
      String str = paramIntent.getStringExtra("tid");
      if (str != null)
        this.d.a(str);
      if (this.d.a() == 0)
        d();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = System.currentTimeMillis();
    setContentView(R.layout.main_member_card_obtainable_list);
    this.a = ((APTitleBar)findViewById(R.id.obtainable_card_title_bar));
    this.a.setTitleText(getResources().getString(R.string.member_card_get_card));
    this.b = ((APListView)findViewById(R.id.obtainable_card_list_view));
    this.c = ((APLinearLayout)findViewById(R.id.no_obtainable_card_layout));
    this.d = new eu(this, this.b);
    this.b.setAdapter(this.d);
    this.i = new k(this, (ViewGroup)findViewById(R.id.layout_obtainable_card_viewgroup), this.mApp, this);
    this.h = new com.alipay.mobile.alipassapp.biz.c.a(AlipayApplication.getInstance().getMicroApplicationContext());
    this.f = new ek(this);
    this.b.setOnItemClickListener(new el(this));
    this.d.a(new em(this));
    this.d.a(new eo(this));
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.MemberCardObtainableListActivity
 * JD-Core Version:    0.6.2
 */