package com.alipay.android.app.display.uielement;

import com.alipay.android.app.display.event.EventType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public class UIButtonGroup$UIButtonItem
{
  public String a;
  public String b;
  public String c;
  public String d;
  public Map e;

  public final void a(JSONObject paramJSONObject, Map paramMap)
  {
    this.a = paramJSONObject.optString("id");
    this.b = paramJSONObject.optString("name");
    this.c = paramJSONObject.optString("value");
    this.d = paramJSONObject.optString("text");
    this.e = new HashMap();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      EventType localEventType = (EventType)localIterator.next();
      this.e.put(localEventType, paramMap.get(localEventType));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIButtonGroup.UIButtonItem
 * JD-Core Version:    0.6.2
 */