package com.alipay.android.mini.window;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.data.ValidatedFrameData;
import com.alipay.android.app.helper.MspConfig;
import com.alipay.android.app.net.Envelope;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.app.util.FrameUtils;
import com.alipay.android.app.util.JsonUtils;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.event.OnElementEventListener;
import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.uielement.ElementAction;
import com.alipay.android.mini.uielement.IUIElement;
import com.alipay.android.mini.uielement.UIButton;
import com.alipay.android.mini.util.ActionUtil;
import com.alipay.android.mini.util.ReadBankCardUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class IUIForm
  implements IDispose, OnElementEventListener
{
  protected BizUiData f;
  protected IFormShower g;
  protected Activity h;
  protected String i;
  protected boolean j = false;
  protected String k = "";
  protected String[] l = null;
  protected String[] m = null;
  protected int n = -1;
  protected ElementAction o;
  protected boolean p;
  protected Object q;
  Map r;
  protected JSONObject s = null;
  protected ElementAction t;
  protected MiniEventHandleHelper u;
  protected JSONArray v = null;
  protected int w = -1;
  protected String x;
  protected String y;

  public IUIForm(BizUiData paramBizUiData)
  {
    this.f = paramBizUiData;
  }

  public static void c(JSONObject paramJSONObject)
  {
    FrameUtils.b(paramJSONObject);
  }

  private boolean p()
  {
    PackageManager localPackageManager = this.h.getPackageManager();
    try
    {
      localPackageManager.getPackageGids("com.eg.android.AlipayGphone");
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      try
      {
        localPackageManager.getPackageGids("com.eg.android.AlipayGphoneRC");
        return true;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
      }
    }
    return false;
  }

  protected abstract void a();

  public final void a(int paramInt)
  {
    this.w = paramInt;
  }

  abstract void a(Activity paramActivity, ViewGroup paramViewGroup);

  protected final void a(ActionType paramActionType, String[] paramArrayOfString)
  {
    if (paramActionType == ActionType.D)
    {
      if ((paramArrayOfString.length > 3) && (!TextUtils.isEmpty(paramArrayOfString[3])))
      {
        ActionType[] arrayOfActionType3 = ActionType.a(ElementAction.a(paramArrayOfString[3], paramActionType));
        this.g.a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], arrayOfActionType3, "", null);
      }
      return;
    }
    ActionType[] arrayOfActionType1;
    ActionType[] arrayOfActionType2;
    if ((paramArrayOfString.length > 4) && (!TextUtils.isEmpty(paramArrayOfString[4])))
    {
      arrayOfActionType1 = ActionType.a(ElementAction.a(paramArrayOfString[4], paramActionType));
      if ((paramArrayOfString.length <= 5) || (TextUtils.isEmpty(paramArrayOfString[5])))
        break label162;
      arrayOfActionType2 = ActionType.a(ElementAction.a(paramArrayOfString[5], paramActionType));
    }
    while (true)
    {
      this.g.a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], arrayOfActionType1, paramArrayOfString[3], arrayOfActionType2);
      return;
      ElementAction localElementAction = this.t;
      arrayOfActionType1 = null;
      if (localElementAction == null)
        break;
      arrayOfActionType1 = ActionType.a(this.t);
      break;
      label162: arrayOfActionType2 = new ActionType[1];
      arrayOfActionType2[0] = ActionType.B;
    }
  }

  protected abstract void a(MiniEventArgs paramMiniEventArgs);

  void a(IFormShower paramIFormShower)
  {
    this.g = paramIFormShower;
  }

  public final void a(Object paramObject)
  {
    this.q = paramObject;
  }

  void a(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject.optJSONObject("form");
    if (localJSONObject.has("menu"))
      this.v = localJSONObject.optJSONArray("menu");
    if (localJSONObject.has("height"))
      this.x = localJSONObject.optString("height");
    if (localJSONObject.has("width"))
      this.y = localJSONObject.optString("width");
    this.o = ElementAction.a(localJSONObject, "onload");
    if (localJSONObject.has("exit"))
      this.k = localJSONObject.optString("exit");
    boolean bool2;
    if (localJSONObject.has("allowBack"))
    {
      boolean bool1 = Boolean.parseBoolean(localJSONObject.optString("allowBack"));
      bool2 = false;
      if (!bool1)
        bool2 = true;
    }
    for (this.j = bool2; ; this.j = false)
    {
      this.l = new String[3];
      this.m = new String[3];
      if (localJSONObject.optJSONObject("confirm") != null)
      {
        String str1 = paramJSONObject.optString("image");
        String str2 = paramJSONObject.optString("color");
        if (!TextUtils.isEmpty(str1))
          this.l = str1.split(";");
        if (!TextUtils.isEmpty(str2))
          this.m = str2.split(";");
      }
      return;
    }
  }

  protected final void a(String[] paramArrayOfString)
  {
    if (this.g != null)
      this.g.a(paramArrayOfString);
  }

  protected abstract boolean a(ActionType paramActionType);

  public final boolean a(Object paramObject, ActionType[] paramArrayOfActionType)
  {
    boolean bool = true;
    int i1 = paramArrayOfActionType.length;
    for (int i2 = 0; i2 < i1; i2++)
      bool &= a(paramObject, new MiniEventArgs(paramArrayOfActionType[i2]));
    return bool;
  }

  public abstract List b();

  final void b(int paramInt)
  {
    this.n = paramInt;
  }

  protected final void b(MiniEventArgs paramMiniEventArgs)
  {
    ReadBankCardUtil.a(paramMiniEventArgs, this.h);
  }

  final void b(String paramString)
  {
    this.i = paramString;
  }

  abstract void b(JSONObject paramJSONObject);

  protected boolean b(ActionType paramActionType)
  {
    JSONObject localJSONObject1 = new JSONObject();
    if (paramActionType.l())
    {
      JSONObject localJSONObject3 = n();
      if (localJSONObject3 != null)
        localJSONObject1 = JsonUtils.a(localJSONObject1, localJSONObject3);
    }
    JSONObject localJSONObject2 = JsonUtils.a(localJSONObject1, paramActionType.g());
    ValidatedFrameData localValidatedFrameData = this.f.g();
    Response localResponse = localValidatedFrameData.e();
    localResponse.a(paramActionType.k());
    localResponse.a().d(paramActionType.e());
    localResponse.a().b(paramActionType.f());
    String str1 = paramActionType.c();
    if (TextUtils.isEmpty(str1))
      str1 = "com.alipay.mobilecashier";
    localResponse.a().c(str1);
    String str2 = paramActionType.d();
    if (TextUtils.isEmpty(str2))
      str2 = "4.0.0";
    localResponse.a().e(str2);
    String str3 = paramActionType.b();
    if (TextUtils.isEmpty(str3))
      str3 = "com.alipay.quickpay";
    localResponse.a().a(str3);
    InteractionData localInteractionData = this.f.k();
    localInteractionData.a(paramActionType.h());
    localInteractionData.b(paramActionType.i());
    localValidatedFrameData.a(localJSONObject2);
    return this.f.c().f();
  }

  protected void c()
  {
    if ((this.q != null) && ((this.q instanceof UIButton)))
      ((UIButton)this.q).F();
  }

  protected final void c(ActionType paramActionType)
  {
    if (this.h == null)
      return;
    String[] arrayOfString = ActionUtil.a(paramActionType.e());
    String str1 = arrayOfString[0];
    String str2 = "服务协议";
    if (arrayOfString.length > 3)
      str2 = arrayOfString[3];
    Intent localIntent = new Intent(this.h, MiniWebActivity.class);
    localIntent.putExtra("url", str1);
    localIntent.putExtra("title", str2);
    this.g.a_(localIntent);
  }

  public final void c(String paramString)
  {
    if (p())
    {
      Intent localIntent = new Intent();
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(paramString));
      localIntent.addCategory("android.intent.category.BROWSABLE");
      this.g.a_(localIntent);
    }
  }

  public final BaseElement d(String paramString)
  {
    List localList = b();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        IUIElement localIUIElement = (IUIElement)localIterator.next();
        if (((localIUIElement instanceof BaseElement)) && (TextUtils.equals(localIUIElement.a(), paramString)))
          return (BaseElement)localIUIElement;
      }
    }
    return null;
  }

  abstract void d();

  protected final void d(ActionType paramActionType)
  {
    String str1;
    String str2;
    String str3;
    if (p())
    {
      String[] arrayOfString = ActionUtil.a(paramActionType.e());
      str1 = arrayOfString[0];
      str2 = arrayOfString[1];
      if (!TextUtils.equals(str2, "loginpwd"))
        break label146;
      str3 = "20000015";
    }
    while (true)
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      StringBuilder localStringBuilder2 = localStringBuilder1.append("alipays://platformapi/startApp?appId=").append(str3).append("&sourceId=trustedMsp&logonId=").append(str1).append("&fromWhich=");
      MspConfig.u();
      localStringBuilder2.append(MspConfig.x());
      Intent localIntent = new Intent();
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(localStringBuilder1.toString()));
      localIntent.addCategory("android.intent.category.BROWSABLE");
      this.g.a_(localIntent);
      return;
      label146: if (TextUtils.equals(str2, "paypwd"))
      {
        str3 = "20000013";
      }
      else
      {
        boolean bool = TextUtils.equals(str2, "simplepwd");
        str3 = null;
        if (bool)
          str3 = "20000060";
      }
    }
  }

  public void dispose()
  {
  }

  abstract void e();

  abstract void f();

  abstract void g();

  protected abstract UISubForm h();

  final String i()
  {
    return this.i;
  }

  public final boolean j()
  {
    return this.j;
  }

  protected final ElementAction k()
  {
    return this.o;
  }

  final OnElementEventListener l()
  {
    return this;
  }

  protected abstract boolean m();

  protected abstract JSONObject n();

  protected final void o()
  {
    JSONObject localJSONObject1 = this.f.g().d();
    try
    {
      if (localJSONObject1.has("minipay"))
        localJSONObject1.remove("minipay");
      localJSONObject1.put("minipay", true);
      if (localJSONObject1.has("protocol"))
        localJSONObject1.remove("protocol");
      localJSONObject1.put("protocol", ProtocolType.a);
      JSONObject localJSONObject2 = n();
      if (localJSONObject2 != null)
      {
        Iterator localIterator = localJSONObject2.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localJSONObject1.put(str, localJSONObject2.get(str));
        }
      }
    }
    catch (JSONException localJSONException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.IUIForm
 * JD-Core Version:    0.6.2
 */