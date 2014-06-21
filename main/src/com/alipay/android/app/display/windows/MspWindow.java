package com.alipay.android.app.display.windows;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.data.ValidatedFrameData;
import com.alipay.android.app.data.WindowFrameData;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.display.event.OnElementEventListener;
import com.alipay.android.app.display.uielement.BaseAttrScriptable;
import com.alipay.android.app.display.uielement.ElementType;
import com.alipay.android.app.display.uielement.IElementFocusChanged;
import com.alipay.android.app.display.uielement.ISubmitable;
import com.alipay.android.app.display.uielement.ISubmitable.SubmitValue;
import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.display.uielement.ValueItem;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.exception.ValifyException;
import com.alipay.android.app.script.IDocumentScriptable;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.script.ScriptEventRunnable;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.app.util.LogUtils;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MspWindow
  implements OnElementEventListener, IDocumentScriptable, IDispose
{
  private Handler a;
  private boolean b = false;
  private DataProcessor c;
  private IWindowScriptable d;
  private IElementFocusChanged e;
  private WindowFrameData f;
  private WindowFrameData g;
  private ValidatedFrameData h;
  private WindowElements i;
  private Map j;
  private String k;
  private String l;
  private String m;
  private boolean n = false;

  protected MspWindow(Handler paramHandler)
  {
    this.a = paramHandler;
    this.i = new WindowElements();
    this.j = new HashMap();
  }

  private JSONObject a(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    IUIElement[] arrayOfIUIElement = this.i.b();
    int i1 = arrayOfIUIElement.length;
    int i2 = 0;
    while (true)
    {
      ISubmitable.SubmitValue localSubmitValue;
      if (i2 < i1)
      {
        IUIElement localIUIElement = arrayOfIUIElement[i2];
        if (((localIUIElement.a() != ElementType.b) || ((!TextUtils.isEmpty(paramString)) && (paramString.equals(localIUIElement.n())))) && ((localIUIElement instanceof ISubmitable)))
        {
          localSubmitValue = ((ISubmitable)localIUIElement).getRequireBundleName();
          if ((localSubmitValue == null) || (TextUtils.isEmpty(localSubmitValue.a())));
        }
      }
      try
      {
        localJSONObject.put(localSubmitValue.a(), localSubmitValue.b());
        label121: i2++;
        continue;
        if (this.g != null)
        {
          Map localMap = this.g.g();
          Iterator localIterator = localMap.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            try
            {
              localJSONObject.put(str, localMap.get(str));
            }
            catch (JSONException localJSONException1)
            {
            }
          }
        }
        return localJSONObject;
      }
      catch (JSONException localJSONException2)
      {
        break label121;
      }
    }
  }

  private void a(EventType paramEventType)
  {
    String str = (String)this.j.get(paramEventType);
    if ((this.h != null) && (!TextUtils.isEmpty(str)))
      this.h.a(str);
  }

  private void a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null);
    while (true)
    {
      return;
      int i1 = 0;
      while (i1 < paramJSONArray.length())
        try
        {
          JSONObject localJSONObject = paramJSONArray.getJSONObject(i1);
          String str1 = localJSONObject.optString("name");
          String str2 = localJSONObject.optString("script");
          EventType localEventType = EventType.a(str1);
          if (localEventType == null)
            this.h.a(str2);
          while (true)
          {
            LogUtils.g();
            break;
            this.j.put(localEventType, str2);
          }
        }
        catch (JSONException localJSONException)
        {
          LogUtils.a(localJSONException);
          i1++;
        }
    }
  }

  private void c()
  {
    this.a.post(new e(this));
  }

  private void d()
  {
    if (this.i == null);
    IUIElement[] arrayOfIUIElement;
    int i1;
    int i2;
    do
    {
      do
      {
        return;
        arrayOfIUIElement = this.i.b();
      }
      while ((arrayOfIUIElement == null) || (arrayOfIUIElement.length == 0));
      i1 = 0;
      i2 = -1 + arrayOfIUIElement.length;
    }
    while (i2 < 0);
    IUIElement localIUIElement = arrayOfIUIElement[i2];
    ElementType localElementType = localIUIElement.a();
    switch (g.c[localElementType.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    int i4;
    do
    {
      i4 = i1;
      i2--;
      i1 = i4;
      break;
    }
    while ((!(localIUIElement instanceof BaseAttrScriptable)) || (!"true".equals(((BaseAttrScriptable)localIUIElement).attr("visible"))));
    if (i1 != 0);
    for (int i3 = 5; ; i3 = 6)
    {
      localIUIElement.a(i3);
      i4 = 1;
      break;
    }
  }

  private void e()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.i.a().iterator();
    Object localObject = null;
    if (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      int[] arrayOfInt = this.i.a(str1).h();
      localHashMap.put(str1, arrayOfInt);
      if (arrayOfInt != null)
      {
        if (localObject == null);
        for (String str2 = str1 + ":" + arrayOfInt[0]; ; str2 = localObject + "," + str1 + ":" + arrayOfInt[0])
        {
          localObject = str2;
          break;
        }
      }
      if (localObject == null);
      while (true)
      {
        localObject = str1;
        break;
        str1 = localObject + "," + str1;
      }
    }
    this.m = this.f.a();
    if ((this.d instanceof Activity))
    {
      DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
      EventObject localEventObject = EventObject.OnResume;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = ((Activity)this.d);
      arrayOfObject[1] = this.m;
      arrayOfObject[2] = localObject;
      arrayOfObject[3] = localHashMap;
      localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject);
    }
  }

  public final UIWindow a(WindowFrameData paramWindowFrameData)
  {
    this.f = paramWindowFrameData;
    if (paramWindowFrameData.b() != null)
    {
      paramWindowFrameData.b().toString();
      LogUtils.g();
    }
    UIWindow localUIWindow = new UIWindow(this.i, this);
    JSONObject localJSONObject1 = paramWindowFrameData.k().optJSONObject("win").optJSONObject("ui");
    String str4;
    if (paramWindowFrameData.c() == 1)
    {
      this.g = paramWindowFrameData;
      if (localJSONObject1 != null)
        break label321;
      str4 = null;
    }
    while (true)
    {
      this.k = str4;
      String str5 = null;
      if (localJSONObject1 == null)
      {
        this.l = str5;
        JSONObject localJSONObject2 = paramWindowFrameData.b();
        if (localJSONObject1 != null)
        {
          localJSONObject1.toString();
          LogUtils.g();
          localUIWindow.a(localJSONObject1.optJSONObject(ElementType.t.a()), localJSONObject2);
          localUIWindow.c(localJSONObject1.optJSONObject(ElementType.s.a()), localJSONObject2);
          localUIWindow.getBundle(localJSONObject1.optJSONArray(ElementType.w.a()));
          localUIWindow.b(localJSONObject1.optJSONObject(ElementType.x.a()), localJSONObject2);
        }
      }
      try
      {
        Iterator localIterator = paramWindowFrameData.e().keySet().iterator();
        while (true)
          if (localIterator.hasNext())
          {
            String str1 = (String)localIterator.next();
            IDocumentScriptable localIDocumentScriptable = getById(str1);
            if (localIDocumentScriptable != null)
            {
              String str2 = (String)paramWindowFrameData.e().get(str1);
              if (!TextUtils.isEmpty(str2))
              {
                for (String str3 : str2.split("&"))
                  if (!TextUtils.isEmpty(str3))
                  {
                    ValueItem localValueItem = new ValueItem(str3);
                    localIDocumentScriptable.attr(localValueItem.b(), localValueItem.c());
                  }
                continue;
                label321: str4 = localJSONObject1.optString("allow_back");
                break;
                str5 = localJSONObject1.optString("allow_back_text");
              }
            }
          }
      }
      catch (Exception localException)
      {
        this.h.a(this);
        a(paramWindowFrameData.f());
        JSONObject localJSONObject3 = paramWindowFrameData.k().optJSONObject("win");
        if (localJSONObject3 != null)
        {
          a(localJSONObject3.optJSONArray("win_script"));
          JSONObject localJSONObject4 = localJSONObject3.optJSONObject("ui");
          if ((localJSONObject4 != null) && (localJSONObject4.has("events")))
            a(localJSONObject4.optJSONArray("events"));
        }
        if ((!this.f.n()) && (!this.n))
        {
          this.n = true;
          getBundle(EventType.l);
        }
        while (!this.f.n())
          return localUIWindow;
        getBundle(EventType.j);
      }
    }
    return localUIWindow;
  }

  protected final String a()
  {
    return this.k;
  }

  protected final void a(BizUiData paramBizUiData, IWindowScriptable paramIWindowScriptable)
  {
    this.c = paramBizUiData.c();
    this.h = paramBizUiData.g();
    this.d = paramIWindowScriptable;
  }

  protected final void a(IElementFocusChanged paramIElementFocusChanged)
  {
    this.e = paramIElementFocusChanged;
  }

  public final void a(Exception paramException)
  {
    if ((this.d == null) || (paramException == null))
      return;
    if ((paramException instanceof NetErrorException))
    {
      this.a.post(new c(this));
      return;
    }
    if ((paramException instanceof ValifyException))
    {
      this.a.post(new b(this, paramException));
      return;
    }
    this.a.post(new a(this, paramException));
  }

  public final boolean a(IUIElement paramIUIElement, MspEventArgs paramMspEventArgs)
  {
    if (paramMspEventArgs == null)
      return false;
    ScriptEventRunnable.getInstance().getHandler().post(new d(this, paramMspEventArgs, paramIUIElement));
    return true;
  }

  public String attr(String paramString)
  {
    new StringBuilder("get none attr--").append(paramString).toString();
    LogUtils.h();
    return null;
  }

  public void attr(String paramString1, String paramString2)
  {
    new StringBuilder("set none  attr--").append(paramString1).append("--value--").append(paramString2).toString();
    LogUtils.h();
  }

  protected final String b()
  {
    return this.l;
  }

  public String cache(String paramString)
  {
    if (this.g != null)
      return this.g.a(paramString);
    return null;
  }

  public void cache(String paramString1, String paramString2)
  {
    if (this.g != null)
      this.g.b(paramString1, paramString2);
  }

  public String checkInput()
  {
    IUIElement[] arrayOfIUIElement = this.i.b();
    int i1 = arrayOfIUIElement.length;
    int i2 = 0;
    if (i2 < i1)
    {
      IUIElement localIUIElement = arrayOfIUIElement[i2];
      if ((localIUIElement instanceof ISubmitable))
      {
        ISubmitable localISubmitable = (ISubmitable)localIUIElement;
        if (!localISubmitable.k())
        {
          new StringBuilder("submit verify false ! : at").append(localISubmitable.getRequireBundleName()).toString();
          LogUtils.c();
        }
      }
    }
    for (int i3 = 0; ; i3 = 1)
    {
      if (i3 == 0)
        break label99;
      return "true";
      i2++;
      break;
    }
    label99: return "false";
  }

  public void dispose()
  {
    f localf = new f(this);
    this.a.post(localf);
  }

  public void event(String paramString1, String paramString2, String paramString3)
  {
    EventType localEventType = EventType.a(paramString1);
    if (localEventType == null)
      return;
    if (this.j.containsKey(localEventType))
      this.j.remove(localEventType);
    this.j.put(localEventType, paramString3);
  }

  public IDocumentScriptable getById(String paramString)
  {
    IUIElement localIUIElement = this.i.a(paramString);
    if ((localIUIElement != null) && ((localIUIElement instanceof BaseAttrScriptable)))
      return (BaseAttrScriptable)localIUIElement;
    if (!TextUtils.isEmpty(paramString))
    {
      new StringBuilder("can not find element--").append(paramString).toString();
      LogUtils.i();
    }
    return this;
  }

  public void putSubmitData(String paramString1, String paramString2)
  {
    if (this.g != null)
    {
      this.g.a(paramString1, paramString2);
      new StringBuilder("put submit data:").append(paramString1).append("--").append(paramString2).toString();
      LogUtils.g();
    }
  }

  public void style(String paramString1, String paramString2)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.MspWindow
 * JD-Core Version:    0.6.2
 */