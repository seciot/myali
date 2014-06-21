package com.alipay.android.mini.window;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.app.R.id;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.widget.animation.DisplayRotate3D;

public class UISubForm extends UIFormWindow
{
  private View A;
  private boolean B = false;
  private BaseElement C;
  private Activity z;

  protected UISubForm(BizUiData paramBizUiData)
  {
    super(paramBizUiData);
  }

  public final void a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    if (this.B)
      return;
    this.B = true;
    this.z = paramActivity;
    this.A = paramViewGroup.getChildAt(0);
    DisplayRotate3D.v((ViewGroup)this.z.findViewById(R.id.C), new ag(this, paramActivity, paramViewGroup));
  }

  public final void a(BaseElement paramBaseElement)
  {
    this.C = paramBaseElement;
  }

  protected final boolean a(ActionType paramActionType)
  {
    return true;
  }

  public final boolean a(Object paramObject, MiniEventArgs paramMiniEventArgs)
  {
    if (paramMiniEventArgs.getEventType() == ActionType.j)
    {
      dispose();
      return true;
    }
    return super.a(paramObject, paramMiniEventArgs);
  }

  protected final boolean b(ActionType paramActionType)
  {
    return false;
  }

  public void dispose()
  {
    super.dispose();
    this.B = false;
    ViewGroup localViewGroup = (ViewGroup)this.z.findViewById(R.id.C);
    DisplayRotate3D.d(localViewGroup, new ah(this, localViewGroup));
  }

  protected final boolean m()
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.UISubForm
 * JD-Core Version:    0.6.2
 */