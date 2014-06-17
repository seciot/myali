package com.alipay.android.mini.window;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import com.alipay.android.app.R.color;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.util.JsonUtils;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.uielement.IUIElement;
import com.alipay.android.mini.uielement.UIButton;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.android.mini.util.UIPropUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class UIFormWindow extends AbstractUIForm
{
  private GuideWindow A = GuideWindow.a();
  private UIButton z;

  protected UIFormWindow(BizUiData paramBizUiData)
  {
    super(paramBizUiData);
    this.r.clear();
  }

  public void a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    RelativeLayout localRelativeLayout;
    FrameLayout.LayoutParams localLayoutParams;
    ViewGroup.LayoutParams localLayoutParams1;
    ViewGroup.LayoutParams localLayoutParams2;
    View localView2;
    label171: Iterator localIterator;
    if (TextUtils.equals(i(), "cashier-init"))
    {
      LogAgent.b("SPSafePay");
      this.h = paramActivity;
      localRelativeLayout = (RelativeLayout)paramViewGroup;
      localRelativeLayout.setBackgroundResource(R.drawable.M);
      localLayoutParams = (FrameLayout.LayoutParams)localRelativeLayout.getLayoutParams();
      View localView1 = LayoutInflater.from(paramActivity).inflate(R.layout.a, paramViewGroup, false);
      localLayoutParams1 = localView1.getLayoutParams();
      if (this.e)
        localView1.findViewById(R.id.J).setVisibility(0);
      localLayoutParams2 = a(localView1).getLayoutParams();
      localView2 = localView1.findViewById(R.id.H);
      if (!this.c)
        break label326;
      localLayoutParams.setMargins(0, 0, 0, 0);
      localRelativeLayout.setPadding(0, 0, 0, 0);
      localRelativeLayout.setGravity(49);
      localView2.setBackgroundResource(R.color.a);
      paramActivity.getWindow().setBackgroundDrawableResource(R.drawable.M);
      localLayoutParams1.height = -1;
      localLayoutParams1.width = -1;
      localLayoutParams2.height = -2;
      paramViewGroup.removeAllViews();
      localView1.setVisibility(0);
      paramViewGroup.addView(localView1);
      super.a(paramActivity, (ViewGroup)localView1);
      localIterator = this.a.a().iterator();
    }
    while (true)
    {
      IUIElement localIUIElement;
      if (localIterator.hasNext())
      {
        localIUIElement = (IUIElement)localIterator.next();
        if (((localIUIElement instanceof UIButton)) && (((UIButton)localIUIElement).E()))
          this.z = ((UIButton)localIUIElement);
      }
      else
      {
        View localView3 = this.h.getWindow().getDecorView();
        if (this.z != null)
          localView3 = this.z.G();
        localView3.getViewTreeObserver().addOnGlobalLayoutListener(new af(this));
        return;
        if (!TextUtils.equals(i(), "cashier-card-no"))
          break;
        LogAgent.c("SPSafePay");
        break;
        label326: int i = UIPropUtil.e(this.h);
        int j = UIPropUtil.d(paramActivity);
        if (!TextUtils.isEmpty(this.x))
          i = UIPropUtil.a(this.x, this.h, UIPropUtil.b(this.h));
        if (!TextUtils.isEmpty(this.y))
          j = UIPropUtil.b(this.y, this.h, UIPropUtil.a(this.h));
        localLayoutParams.setMargins(0, 0, 0, 0);
        localRelativeLayout.setPadding(0, 0, 0, 0);
        localLayoutParams.width = -2;
        localLayoutParams.gravity = 17;
        localLayoutParams.height = -2;
        localRelativeLayout.setGravity(17);
        localView2.setBackgroundResource(R.drawable.c);
        paramActivity.getWindow().setBackgroundDrawableResource(R.drawable.M);
        localLayoutParams1.height = i;
        localLayoutParams1.width = j;
        localLayoutParams2.height = -2;
        if ((!(localLayoutParams2 instanceof LinearLayout.LayoutParams)) || (this.e))
          break label171;
        ((LinearLayout.LayoutParams)localLayoutParams2).weight = 1.0F;
        break label171;
      }
      if ((this.w > 0) && ((localIUIElement instanceof BaseElement)) && (TextUtils.equals("redpoint", ((BaseElement)localIUIElement).r())))
        ((BaseElement)localIUIElement).y();
    }
  }

  protected boolean a(ActionType paramActionType)
  {
    List localList = super.b();
    if (paramActionType.j())
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        IUIElement localIUIElement = (IUIElement)localIterator.next();
        if (!localIUIElement.d())
        {
          if ((localIUIElement instanceof BaseElement))
          {
            String str = ((BaseElement)localIUIElement).x();
            if (!TextUtils.isEmpty(str))
              LogAgent.b("SPSafePay", str, i());
          }
          return false;
        }
      }
    }
    return true;
  }

  public void dispose()
  {
    super.dispose();
    this.t = null;
  }

  protected boolean m()
  {
    Iterator localIterator = b().iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (((IUIElement)localIterator.next()).c());
    for (boolean bool = false; ; bool = true)
    {
      if (this.z != null)
        this.z.a(bool);
      return bool;
    }
  }

  protected final JSONObject n()
  {
    List localList = super.b();
    JSONObject localJSONObject1 = new JSONObject();
    Iterator localIterator = localList.iterator();
    for (JSONObject localJSONObject2 = localJSONObject1; localIterator.hasNext(); localJSONObject2 = JsonUtils.a(localJSONObject2, ((IUIElement)localIterator.next()).e()));
    return localJSONObject2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.UIFormWindow
 * JD-Core Version:    0.6.2
 */