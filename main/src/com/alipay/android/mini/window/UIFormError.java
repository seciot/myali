package com.alipay.android.mini.window;

import android.app.Activity;
import android.view.ViewGroup;
import android.view.Window;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.widget.CustomToast;
import org.json.JSONException;
import org.json.JSONObject;

public class UIFormError extends AbstractUIForm
{
  private String A;
  private BizUiData z;

  protected UIFormError(BizUiData paramBizUiData)
  {
    super(paramBizUiData);
    this.z = paramBizUiData;
  }

  public final void a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    paramActivity.getWindow().setBackgroundDrawable(null);
    if (paramViewGroup != null)
      paramViewGroup.removeAllViews();
    CustomToast.a(paramActivity, this.A);
  }

  public final void a(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject1 = paramJSONObject.optJSONObject("form");
    if (localJSONObject1.has("msg"))
      this.A = localJSONObject1.optString("msg");
    while (true)
    {
      return;
      if (localJSONObject1.has("params"))
        try
        {
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("params");
          if (localJSONObject2.has("msg"))
          {
            this.A = localJSONObject2.getString("msg");
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
    }
  }

  protected final boolean a(ActionType paramActionType)
  {
    return false;
  }

  public final boolean a(Object paramObject, MiniEventArgs paramMiniEventArgs)
  {
    if ((paramMiniEventArgs != null) && (paramMiniEventArgs.getEventType() == ActionType.d))
      this.z.c().j();
    return true;
  }

  protected final boolean b(ActionType paramActionType)
  {
    return false;
  }

  public void dispose()
  {
    super.dispose();
  }

  protected final boolean m()
  {
    return false;
  }

  protected final JSONObject n()
  {
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.UIFormError
 * JD-Core Version:    0.6.2
 */