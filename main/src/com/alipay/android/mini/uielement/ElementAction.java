package com.alipay.android.mini.uielement;

import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.event.ActionType;
import org.json.JSONObject;

public class ElementAction
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private boolean f;
  private boolean g = true;
  private boolean h = true;
  private String i;
  private String j;
  private String k;
  private JSONObject l;

  public ElementAction(String paramString)
  {
    this.a = paramString;
  }

  public static ElementAction a(String paramString, ActionType paramActionType)
  {
    return a(paramString, paramActionType.f(), paramActionType.m(), paramActionType.h(), paramActionType.i(), paramActionType.j(), paramActionType.k(), paramActionType.l(), paramActionType.c(), paramActionType.d(), paramActionType.b(), paramActionType.a());
  }

  private static ElementAction a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString6, String paramString7, String paramString8, JSONObject paramJSONObject)
  {
    if (TextUtils.isEmpty(paramString1))
      return null;
    ElementAction localElementAction = new ElementAction(paramString1);
    localElementAction.a = paramString1;
    boolean bool = TextUtils.isEmpty(paramString2);
    String str = null;
    if (bool);
    while (true)
    {
      localElementAction.b = str;
      localElementAction.c = paramString3;
      localElementAction.d = paramString4;
      localElementAction.e = paramString5;
      localElementAction.f = paramBoolean1;
      localElementAction.g = paramBoolean2;
      localElementAction.h = paramBoolean3;
      localElementAction.i = paramString6;
      localElementAction.j = paramString7;
      localElementAction.k = paramString8;
      localElementAction.l = paramJSONObject;
      return localElementAction;
      str = paramString2.trim();
    }
  }

  public static ElementAction a(JSONObject paramJSONObject, String paramString)
  {
    boolean bool1 = true;
    JSONObject localJSONObject = paramJSONObject.optJSONObject(paramString);
    if ((localJSONObject != null) && (localJSONObject.has("name")));
    for (String str1 = localJSONObject.optString("name"); ; str1 = null)
    {
      if ((localJSONObject != null) && (localJSONObject.has("host")));
      for (String str2 = localJSONObject.optString("host"); ; str2 = null)
      {
        if ((localJSONObject != null) && (localJSONObject.has("params")));
        for (String str3 = localJSONObject.optString("params"); ; str3 = null)
        {
          if ((localJSONObject != null) && (localJSONObject.has("enctype")));
          for (String str4 = localJSONObject.optString("enctype"); ; str4 = null)
          {
            String str5 = null;
            if (localJSONObject != null)
            {
              boolean bool4 = localJSONObject.has("request_param");
              str5 = null;
              if (bool4)
                str5 = localJSONObject.optString("request_param");
            }
            if ((localJSONObject != null) && (localJSONObject.has("validate")));
            for (boolean bool2 = localJSONObject.optBoolean("validate", bool1); ; bool2 = bool1)
            {
              boolean bool3;
              if ((localJSONObject != null) && (localJSONObject.has("https")))
                if (!localJSONObject.optBoolean("https"))
                  bool3 = bool1;
              while (true)
              {
                if ((localJSONObject != null) && (localJSONObject.has("formSubmit")))
                  bool1 = localJSONObject.optBoolean("formSubmit");
                String str6 = "";
                if ((localJSONObject != null) && (localJSONObject.has("namespace")))
                  str6 = localJSONObject.optString("namespace");
                String str7 = "";
                if ((localJSONObject != null) && (localJSONObject.has("apiVersion")))
                  str7 = localJSONObject.optString("apiVersion");
                String str8 = "";
                if ((localJSONObject != null) && (localJSONObject.has("apiName")))
                  str8 = localJSONObject.optString("apiName");
                return a(str1, str2, str3, str4, str5, bool2, bool3, bool1, str6, str7, str8, localJSONObject);
                bool3 = false;
                continue;
                bool3 = bool1;
              }
            }
          }
        }
      }
    }
  }

  public final JSONObject a()
  {
    return this.l;
  }

  public final String b()
  {
    return this.k;
  }

  public final String c()
  {
    return this.i;
  }

  public final String d()
  {
    return this.j;
  }

  public final String e()
  {
    return this.a;
  }

  public final String f()
  {
    if (TextUtils.isEmpty(this.b))
      this.b = GlobalContext.a().c().f();
    return this.b;
  }

  public final String g()
  {
    return this.c;
  }

  public final JSONObject h()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(this.c);
      return localJSONObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final String i()
  {
    return this.d;
  }

  public final String j()
  {
    return this.e;
  }

  public final boolean k()
  {
    return this.f;
  }

  public final boolean l()
  {
    return this.g;
  }

  public final boolean m()
  {
    return this.h;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ElementAction
 * JD-Core Version:    0.6.2
 */