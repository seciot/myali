package com.alipay.android.mini.window;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.lib.plusin.ui.WindowData;
import com.alipay.android.mini.data.MiniWindowFrame;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.uielement.ElementAction;
import com.alipay.android.mini.util.UIPropUtil;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class UIFormDialog extends AbstractUIForm
{
  private String A;
  private List B = null;
  private String z;

  protected UIFormDialog(BizUiData paramBizUiData)
  {
    super(paramBizUiData);
  }

  public final void a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    this.h = paramActivity;
    if (TextUtils.isEmpty(this.A));
    label301: 
    while (true)
    {
      return;
      WindowData localWindowData = this.f.n();
      int i;
      if ((localWindowData instanceof MiniWindowFrame))
      {
        if (((MiniWindowFrame)localWindowData).b())
          break label190;
        i = 1;
        if (i != 0)
          UIPropUtil.a(paramActivity, 8);
      }
      if (this.B.size() == 1)
      {
        UIFormDialog.DialogButton localDialogButton3 = (UIFormDialog.DialogButton)this.B.get(0);
        this.g.a(this.z, this.A, localDialogButton3.a, localDialogButton3.b, "", null);
      }
      while (true)
      {
        if (!GlobalContext.a().c().c())
          break label301;
        try
        {
          DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
          EventObject localEventObject = EventObject.OnResume;
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = paramActivity;
          arrayOfObject[1] = "dialog";
          arrayOfObject[2] = this.A;
          arrayOfObject[3] = this.r;
          localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        label190: i = 0;
        break;
        if (this.B.size() == 2)
        {
          UIFormDialog.DialogButton localDialogButton1 = (UIFormDialog.DialogButton)this.B.get(0);
          UIFormDialog.DialogButton localDialogButton2 = (UIFormDialog.DialogButton)this.B.get(1);
          this.g.a(this.z, this.A, localDialogButton1.a, localDialogButton1.b, localDialogButton2.a, localDialogButton2.b);
        }
        else
        {
          this.g.a(this.z, this.A, this.B);
        }
      }
    }
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    JSONObject localJSONObject1 = paramJSONObject.optJSONObject("form");
    if (localJSONObject1 != null)
    {
      ElementAction localElementAction = ElementAction.a(localJSONObject1, "onload");
      if (localElementAction != null)
        a(this, ActionType.a(localElementAction));
      this.z = localJSONObject1.optString("title");
      this.A = localJSONObject1.optString("content");
      JSONArray localJSONArray = localJSONObject1.optJSONArray("button");
      if (localJSONArray != null)
      {
        int i = localJSONArray.length();
        this.B = new ArrayList(i);
        int j = 0;
        if (j < i)
        {
          JSONObject localJSONObject2 = localJSONArray.optJSONObject(j);
          UIFormDialog.DialogButton localDialogButton = new UIFormDialog.DialogButton(this);
          String str;
          if (localJSONObject2.has("text"))
          {
            localDialogButton.a = localJSONObject2.optString("text");
            if (localJSONObject2.has("action"))
              localDialogButton.b = ActionType.a(ElementAction.a(localJSONObject2, "action"));
            str = localJSONObject2.optString("content");
            if (!TextUtils.equals(str, "confirm"))
              break label203;
            this.B.add(0, localDialogButton);
          }
          while (true)
          {
            j++;
            break;
            label203: if (TextUtils.equals(str, "cancel"))
              this.B.add(localDialogButton);
            else
              this.B.add(localDialogButton);
          }
        }
      }
    }
  }

  protected final boolean a(ActionType paramActionType)
  {
    return false;
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
 * Qualified Name:     com.alipay.android.mini.window.UIFormDialog
 * JD-Core Version:    0.6.2
 */