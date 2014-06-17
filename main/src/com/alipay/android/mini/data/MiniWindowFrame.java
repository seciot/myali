package com.alipay.android.mini.data;

import android.text.TextUtils;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.lib.plusin.ui.WindowData;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.uielement.ElementAction;
import org.json.JSONObject;

public class MiniWindowFrame extends WindowData
{
  private int a;
  private boolean b = false;

  protected MiniWindowFrame(Request paramRequest, Response paramResponse)
  {
    super(paramRequest, paramResponse);
  }

  public final String a()
  {
    return null;
  }

  public final void a(JSONObject paramJSONObject)
  {
    int i = 0;
    super.a(paramJSONObject);
    if (paramJSONObject.has("form"))
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject("form");
      String str = localJSONObject.optString("type");
      a(Boolean.parseBoolean(localJSONObject.optString("oneTime")));
      if (TextUtils.equals("page", str))
      {
        this.b = true;
        this.a = 9;
      }
      do
        while (true)
        {
          return;
          if (TextUtils.equals("dialog", str))
          {
            this.a = 7;
            this.b = false;
            return;
          }
          if (!TextUtils.equals("toast", str))
            break;
          ElementAction localElementAction = ElementAction.a(localJSONObject, "onload");
          this.a = 6;
          if (localElementAction != null)
          {
            ActionType[] arrayOfActionType = ActionType.a(localElementAction);
            int j = arrayOfActionType.length;
            while (i < j)
            {
              ActionType localActionType = arrayOfActionType[i];
              if ((localActionType == ActionType.s) || (localActionType == ActionType.D))
                this.a = 10;
              i++;
            }
          }
        }
      while (TextUtils.equals("confirm", str));
      this.b = TextUtils.equals(str, "fullscreen");
      this.a = 4;
      return;
    }
    if (MiniStatus.a(paramJSONObject.optString("status")) == MiniStatus.h)
    {
      this.a = -10;
      return;
    }
    this.a = 8;
  }

  public final boolean b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.a;
  }

  public final boolean d()
  {
    return (this.a == 4) || (this.a == 9);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.data.MiniWindowFrame
 * JD-Core Version:    0.6.2
 */