package com.alipay.android.app.pay;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Window;
import android.webkit.WebView;
import android.widget.Button;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.empty.WindowTemplateProvider;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.net.Envelope;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.app.widget.BaseWebView;
import com.alipay.android.app.widget.CustomListView;
import com.alipay.android.app.widget.CustomListView.ICustomListViewListener;
import com.alipay.android.mini.window.AbsActivity;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class HyperlinkActivity extends AbsActivity
  implements CustomListView.ICustomListViewListener
{
  Runnable a = new d(this);
  private Envelope b;
  private WebView c;
  private String d;
  private String e = "";
  private String[] f;
  private CustomListView g;
  private ArrayList h = new ArrayList();
  private f i;
  private g j;
  private boolean k;
  private int l = 1;
  private int m = 1;
  private Map n = new HashMap();
  private Button o;
  private Handler p = new a(this);

  private void a(String[] paramArrayOfString)
  {
    this.f = paramArrayOfString;
    JSONObject localJSONObject = new JSONObject();
    int i1 = paramArrayOfString.length;
    int i2 = 0;
    while (true)
    {
      if (i2 < i1);
      try
      {
        localJSONObject.put(paramArrayOfString[i2], paramArrayOfString[(i2 + 1)]);
        i2 += 2;
        continue;
        if (this.m > 1)
          localJSONObject.put("current_page", String.valueOf(1 + this.l));
        new Thread(new c(this, localJSONObject, GlobalContext.g())).start();
        return;
      }
      catch (JSONException localJSONException)
      {
        while (true)
          localJSONException.printStackTrace();
      }
    }
  }

  public final void a()
  {
    this.g.stopRefresh();
    LogUtils.c();
  }

  public final void b()
  {
    if (this.g != null)
    {
      this.g.stopLoadMore();
      this.g.stopRefresh();
    }
    if (this.k)
      return;
    LogUtils.c();
    this.k = true;
    try
    {
      a(this.f);
      return;
    }
    catch (NetErrorException localNetErrorException)
    {
      localNetErrorException.printStackTrace();
    }
  }

  public void finish()
  {
    super.finish();
    overridePendingTransition(17432577, 17432577);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.E);
    getWindow().setLayout(-1, -1);
    this.o = ((Button)findViewById(R.id.aD));
    this.o.setVisibility(0);
    this.o.setOnClickListener(new b(this));
    Intent localIntent = getIntent();
    if (localIntent == null)
      return;
    String str = localIntent.getStringExtra("type");
    while (true)
    {
      try
      {
        this.b = new Envelope();
        this.b.d("inner.web");
        this.b.e(GlobalConstant.API_VERSION);
        this.b.c(GlobalConstant.NAMESPACE);
        this.b.b(GlobalConstant.HTTP_URL);
        if (TextUtils.equals(str, "text"))
        {
          this.f = localIntent.getStringArrayExtra("param");
          this.g = ((CustomListView)findViewById(R.id.a));
          this.g.setVisibility(0);
          a(this.f);
          if (!GlobalContext.a().c().c())
            break;
          Map localMap1 = this.n;
          int[] arrayOfInt1 = new int[1];
          arrayOfInt1[0] = R.id.aD;
          localMap1.put("title_close", arrayOfInt1);
          Map localMap2 = this.n;
          int[] arrayOfInt2 = new int[1];
          arrayOfInt2[0] = R.id.aG;
          localMap2.put("web_view", arrayOfInt2);
          Map localMap3 = this.n;
          int[] arrayOfInt3 = new int[1];
          arrayOfInt3[0] = R.id.aF;
          localMap3.put("title_name", arrayOfInt3);
          Map localMap4 = this.n;
          int[] arrayOfInt4 = new int[1];
          arrayOfInt4[0] = R.id.aE;
          localMap4.put("title_img", arrayOfInt4);
          Map localMap5 = this.n;
          int[] arrayOfInt5 = new int[1];
          arrayOfInt5[0] = R.id.a;
          localMap5.put("agreement_list", arrayOfInt5);
          DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
          EventObject localEventObject = EventObject.OnResume;
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = this;
          arrayOfObject[1] = "HyperlinkActivity";
          arrayOfObject[2] = "";
          arrayOfObject[3] = this.n;
          localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      if (TextUtils.equals(str, "url"))
      {
        this.c = new BaseWebView((WebView)findViewById(R.id.aG), this).a();
        this.c.setVisibility(0);
        this.d = localIntent.getStringExtra("param");
        this.c.loadUrl(this.d);
      }
    }
  }

  protected void onDestroy()
  {
    setResult(0, new Intent());
    this.p.removeCallbacksAndMessages(null);
    super.onDestroy();
  }

  public void onLowMemory()
  {
    WindowTemplateProvider.b().b(getApplicationContext());
    super.onLowMemory();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.HyperlinkActivity
 * JD-Core Version:    0.6.2
 */