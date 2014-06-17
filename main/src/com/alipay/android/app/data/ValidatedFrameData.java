package com.alipay.android.app.data;

import android.text.TextUtils;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.android.lib.plusin.protocol.FrameData;
import com.alipay.android.lib.plusin.script.IScriptEventable;
import com.alipay.android.lib.plusin.script.IScriptExcutor;
import com.alipay.android.lib.plusin.ui.WindowData;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

public class ValidatedFrameData
{
  private Response a;
  private JSONObject b;
  private WeakReference c;
  private boolean d = false;
  private Request e = null;
  private JSONObject f;
  private long g;
  private FrameData h = null;

  protected ValidatedFrameData(BizData paramBizData)
  {
    this.c = new WeakReference(paramBizData);
    this.f = new JSONObject();
  }

  protected final Request a()
  {
    if ((this.e == null) && (this.a != null))
    {
      JSONObject localJSONObject1 = this.a.e();
      JSONObject localJSONObject2 = this.b;
      JSONObject localJSONObject3 = null;
      if (localJSONObject2 != null)
      {
        boolean bool = this.d;
        localJSONObject3 = null;
        if (bool)
          localJSONObject3 = this.b;
      }
      InteractionData localInteractionData = ((BizData)this.c.get()).k();
      TidInfo localTidInfo = TidInfo.g();
      if ((localJSONObject3 != null) && (localTidInfo != null));
      try
      {
        localJSONObject3.put("tid", localTidInfo.a());
        Request localRequest = new Request(this.a.a(), localJSONObject3, localJSONObject1, localInteractionData, this.a.l());
        localRequest.b(this.a.d());
        localRequest.a(this.a.c());
        return localRequest;
      }
      catch (JSONException localJSONException)
      {
        while (true)
          localJSONException.printStackTrace();
      }
    }
    return this.e;
  }

  protected final void a(Request paramRequest)
  {
    this.e = paramRequest;
  }

  protected final void a(FrameData paramFrameData)
  {
    if (((paramFrameData instanceof WindowData)) && (((WindowData)paramFrameData).d()))
      b();
    b(paramFrameData);
  }

  public final void a(IScriptEventable paramIScriptEventable)
  {
    if ((paramIScriptEventable == null) || (((BizData)this.c.get()).f() == null))
      return;
    ((BizData)this.c.get()).f().a(paramIScriptEventable);
  }

  public final void a(String paramString)
  {
    if ((((BizData)this.c.get()).f() == null) || (TextUtils.isEmpty(paramString)))
      return;
    ((BizData)this.c.get()).f().a(paramString);
  }

  public final void a(String paramString, Object[] paramArrayOfObject)
  {
    if ((((BizData)this.c.get()).f() == null) || (TextUtils.isEmpty(paramString)))
      return;
    ((BizData)this.c.get()).f().a(paramString, paramArrayOfObject);
  }

  public final void a(JSONObject paramJSONObject)
  {
    this.b = paramJSONObject;
  }

  protected final void b()
  {
    ((BizData)this.c.get()).f().dispose();
    c();
  }

  protected final void b(FrameData paramFrameData)
  {
    this.h = paramFrameData;
    this.a = paramFrameData.i();
    this.d = (paramFrameData instanceof WindowData);
    this.e = null;
    this.b = null;
  }

  protected final void c()
  {
    this.a = null;
    this.b = null;
    this.e = null;
    ((BizData)this.c.get()).k().d();
  }

  public final JSONObject d()
  {
    return this.f;
  }

  public final Response e()
  {
    return this.a;
  }

  public final void f()
  {
    this.g = System.currentTimeMillis();
  }

  public final long g()
  {
    return this.g;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.ValidatedFrameData
 * JD-Core Version:    0.6.2
 */