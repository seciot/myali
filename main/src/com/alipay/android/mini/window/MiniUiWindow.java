package com.alipay.android.mini.window;

import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.mini.event.OnElementEventListener;
import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.uielement.ElementFactory;
import com.alipay.android.mini.uielement.ElementType;
import com.alipay.android.mini.uielement.IUIComponet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class MiniUiWindow
{
  protected Map a = new HashMap();
  OnElementEventListener b;
  private List c = new ArrayList();
  private BaseElement d;

  private void a(IUIComponet paramIUIComponet, JSONObject paramJSONObject)
  {
    JSONArray localJSONArray1 = paramJSONObject.optJSONArray("value");
    if (localJSONArray1 == null)
      return;
    int i = localJSONArray1.length();
    int j = 0;
    label21: JSONObject localJSONObject1;
    if (j < i)
    {
      localJSONObject1 = localJSONArray1.optJSONObject(j);
      int k;
      IUIComponet localIUIComponet1;
      int n;
      label104: JSONObject localJSONObject2;
      int i1;
      if ("component".equals(localJSONObject1.optString("type")))
      {
        k = 1;
        if (k == 0)
          break label234;
        localIUIComponet1 = (IUIComponet)ElementFactory.a(localJSONObject1);
        JSONArray localJSONArray2 = localJSONObject1.optJSONArray("value");
        localIUIComponet1.a(localJSONObject1);
        localIUIComponet1.a(this.b);
        int m = localJSONArray2.length();
        n = 0;
        if (n >= m)
          break label205;
        localJSONObject2 = localJSONArray2.optJSONObject(n);
        if (!"block".equals(localJSONObject2.optString("type")))
          break label187;
        i1 = 1;
        label138: if (i1 == 0)
          break label193;
        IUIComponet localIUIComponet2 = (IUIComponet)ElementFactory.a(localJSONObject2);
        localIUIComponet2.a(localJSONObject2);
        a(localIUIComponet2, localJSONObject2);
        localIUIComponet1.a(localIUIComponet2);
      }
      while (true)
      {
        n++;
        break label104;
        k = 0;
        break;
        label187: i1 = 0;
        break label138;
        label193: a(localIUIComponet1, localJSONObject2, 0);
      }
      label205: paramIUIComponet.a(localIUIComponet1);
      this.a.put(localIUIComponet1.a(), localIUIComponet1);
    }
    while (true)
    {
      j++;
      break label21;
      break;
      label234: a(paramIUIComponet, localJSONObject1, 1);
    }
  }

  private void a(IUIComponet paramIUIComponet, JSONObject paramJSONObject, int paramInt)
  {
    String str = paramJSONObject.optString("type");
    ElementType localElementType = ElementType.a(str);
    if (localElementType == null)
      throw new AppErrorException(getClass(), "no such control type:" + str);
    BaseElement localBaseElement = (BaseElement)ElementFactory.a(localElementType);
    if (localBaseElement != null)
    {
      localBaseElement.a(paramIUIComponet);
      if (paramInt == 1)
        localBaseElement.v();
      localBaseElement.a(paramJSONObject);
      paramIUIComponet.a(localBaseElement);
      this.a.put(localBaseElement.a(), localBaseElement);
      this.c.add(localBaseElement);
      if ((this.d == null) && ((localElementType == ElementType.c) || (localElementType == ElementType.e) || (localElementType == ElementType.f)) && (localBaseElement.i()))
        this.d = localBaseElement;
      localBaseElement.a(this.b);
      return;
    }
    throw new AppErrorException(MiniUiWindow.class, "element type is null,resp data error");
  }

  public final List a()
  {
    return this.c;
  }

  public final List a(OnElementEventListener paramOnElementEventListener, JSONArray paramJSONArray)
  {
    if (paramJSONArray == null)
      return null;
    this.b = paramOnElementEventListener;
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramJSONArray.length(); i++)
    {
      JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
      IUIComponet localIUIComponet = (IUIComponet)ElementFactory.a(localJSONObject);
      localIUIComponet.a(localJSONObject);
      localIUIComponet.a(paramOnElementEventListener);
      a(localIUIComponet, localJSONObject);
      localArrayList.add(localIUIComponet);
      this.a.put(localIUIComponet.a(), localIUIComponet);
    }
    return localArrayList;
  }

  public final BaseElement b()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.MiniUiWindow
 * JD-Core Version:    0.6.2
 */