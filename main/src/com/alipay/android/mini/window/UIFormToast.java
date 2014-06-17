package com.alipay.android.mini.window;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.uielement.ElementAction;
import com.alipay.android.mini.util.UIPropUtil;
import com.alipay.android.mini.widget.CustomToast;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import org.json.JSONArray;
import org.json.JSONObject;

public class UIFormToast extends AbstractUIForm
{
  private String A;
  private String B;
  private boolean C = false;
  private int z;

  protected UIFormToast(BizUiData paramBizUiData)
  {
    super(paramBizUiData);
  }

  public final void a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    this.h = paramActivity;
    ElementAction localElementAction = k();
    if (localElementAction != null)
      a(this, ActionType.a(localElementAction));
    if ((!TextUtils.equals("hidden", this.B)) && (!this.C) && (!TextUtils.isEmpty(this.A)))
    {
      if (this.z != 0)
        break label135;
      CustomToast.a(paramActivity, this.A);
    }
    while (true)
    {
      if (GlobalContext.a().c().c());
      try
      {
        DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
        EventObject localEventObject = EventObject.OnResume;
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = paramActivity;
        arrayOfObject[1] = "toast";
        arrayOfObject[2] = this.A;
        arrayOfObject[3] = this.r;
        localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject);
        return;
        label135: CustomToast.a(paramActivity, this.z, this.A);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    JSONObject localJSONObject1 = paramJSONObject.optJSONObject("form");
    this.B = localJSONObject1.optString("visibility");
    this.C = localJSONObject1.optBoolean("ajax");
    JSONArray localJSONArray1;
    JSONObject localJSONObject3;
    if (localJSONObject1.has("blocks"))
    {
      JSONObject localJSONObject2 = localJSONObject1.optJSONArray("blocks").optJSONObject(0);
      if (localJSONObject2 != null)
      {
        localJSONArray1 = localJSONObject2.optJSONArray("value");
        if (localJSONArray1 != null)
        {
          localJSONObject3 = localJSONArray1.optJSONObject(0);
          if (localJSONObject3 != null)
            if (!TextUtils.equals("component", localJSONObject3.optString("type")))
              break label201;
        }
      }
    }
    label187: label201: for (JSONArray localJSONArray2 = localJSONObject3.optJSONArray("value"); ; localJSONArray2 = localJSONArray1)
    {
      JSONObject localJSONObject5;
      JSONObject localJSONObject4;
      if (localJSONArray2 != null)
      {
        if (localJSONArray2.length() <= 1)
          break label187;
        localJSONObject5 = localJSONArray2.optJSONObject(0);
        localJSONObject4 = localJSONArray2.optJSONObject(1);
      }
      while (true)
      {
        if (localJSONObject4 != null)
          this.A = localJSONObject4.optString("text");
        String str = null;
        if (localJSONObject5 != null)
          str = localJSONObject5.optString("image");
        if (!TextUtils.isEmpty(str))
          this.z = UIPropUtil.f(str);
        return;
        localJSONObject4 = localJSONArray2.optJSONObject(0);
        localJSONObject5 = null;
      }
    }
  }

  protected final boolean a(ActionType paramActionType)
  {
    return true;
  }

  public final boolean a(Object paramObject, MiniEventArgs paramMiniEventArgs)
  {
    boolean bool = false;
    ActionType localActionType;
    if (paramMiniEventArgs != null)
      localActionType = paramMiniEventArgs.getEventType();
    switch (ae.a[localActionType.ordinal()])
    {
    default:
      bool = super.a(paramObject, paramMiniEventArgs);
      return bool;
    case 1:
    }
    if (j())
    {
      this.f.c().j();
      return false;
    }
    return this.f.c().g();
  }

  public void dispose()
  {
    super.dispose();
  }

  protected final boolean m()
  {
    return true;
  }

  public final JSONObject n()
  {
    return null;
  }

  public final boolean p()
  {
    return (this.C) && (!TextUtils.equals("hidden", this.B));
  }

  public final String q()
  {
    return this.A;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.UIFormToast
 * JD-Core Version:    0.6.2
 */