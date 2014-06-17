package com.alipay.android.app.data;

import android.text.TextUtils;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.lib.plusin.ui.WindowData;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class WindowFrameData extends WindowData
{
  private int a;
  private String b;
  private int c;
  private JSONObject d;
  private JSONArray e;
  private Map f = new HashMap();
  private Map g = new HashMap();
  private Map h;

  public WindowFrameData(Request paramRequest, Response paramResponse, String paramString, int paramInt, JSONObject paramJSONObject, JSONArray paramJSONArray)
  {
    super(paramRequest, paramResponse);
    this.b = paramString;
    this.c = paramInt;
    this.d = paramJSONObject;
    this.e = paramJSONArray;
    this.h = new HashMap();
  }

  public final String a()
  {
    return this.b;
  }

  public final String a(String paramString)
  {
    if (this.g.containsKey(paramString))
      return (String)this.g.get(paramString);
    return null;
  }

  public final void a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return;
    if ((TextUtils.isEmpty(paramString2)) && (this.f.containsKey(paramString1)))
      this.f.remove(paramString1);
    this.f.put(paramString1, paramString2);
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    if ((paramJSONObject == null) || (!paramJSONObject.has("win")))
      return;
    a(false);
    String str = paramJSONObject.optJSONObject("win").optString("type");
    if ((TextUtils.isEmpty(str)) || ("default".equalsIgnoreCase(str)))
    {
      this.a = 1;
      return;
    }
    if ("transparent_dialog".equalsIgnoreCase(str))
    {
      this.a = 2;
      return;
    }
    this.a = 3;
  }

  public final JSONObject b()
  {
    return this.d;
  }

  public final void b(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return;
    if ((TextUtils.isEmpty(paramString2)) && (this.g.containsKey(paramString1)))
      this.g.remove(paramString1);
    this.g.put(paramString1, paramString2);
  }

  public final int c()
  {
    return this.a;
  }

  public final boolean d()
  {
    return this.a == 1;
  }

  public final void dispose()
  {
    super.dispose();
    this.h.clear();
    this.f.clear();
    this.g.clear();
    this.f = null;
    this.h = null;
    this.e = null;
    this.d = null;
    this.b = null;
  }

  public final Map e()
  {
    return this.h;
  }

  public final JSONArray f()
  {
    return this.e;
  }

  public final Map g()
  {
    return this.f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.WindowFrameData
 * JD-Core Version:    0.6.2
 */