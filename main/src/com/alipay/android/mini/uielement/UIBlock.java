package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ScrollView;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.util.UIPropUtil;
import org.json.JSONObject;

public class UIBlock extends BaseComponent
{
  private String b;
  private String c;
  private String e;
  private String f;
  private ViewGroup g;
  private boolean h;
  private ScrollView i;
  private int j;

  public final ViewGroup a(Activity paramActivity, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if ((!TextUtils.isEmpty(this.f)) && (this.f.equals("scroll")))
    {
      this.h = true;
      if (this.i == null)
        this.i = ((ScrollView)LayoutInflater.from(paramActivity).inflate(R.layout.u, paramViewGroup, false));
      ViewGroup localViewGroup = super.a(paramActivity, this.i, paramBoolean);
      localViewGroup.measure(0, 0);
      this.j = localViewGroup.getMeasuredHeight();
      int k = localViewGroup.getLayoutParams().height;
      if (this.j > k)
        k = this.j;
      this.j = k;
      this.j += this.i.getPaddingTop() + this.i.getPaddingBottom();
      if (this.i != null)
      {
        ViewGroup.LayoutParams localLayoutParams = this.i.getLayoutParams();
        if ((localLayoutParams instanceof LinearLayout.LayoutParams))
          ((LinearLayout.LayoutParams)localLayoutParams).weight = 1.0F;
        if ((localLayoutParams != null) && (this.j > 0) && (this.j < localLayoutParams.height))
          localLayoutParams.height = this.j;
      }
      this.i.addView(localViewGroup);
      this.i.smoothScrollTo(0, 0);
      return this.i;
    }
    return super.a(paramActivity, paramViewGroup, paramBoolean);
  }

  protected final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.i != null)
    {
      this.i.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    super.a(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  protected final void a(ViewGroup.LayoutParams paramLayoutParams, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.i != null)
    {
      super.a(paramLayoutParams, 0, 0, 0, 0);
      super.a(this.i.getLayoutParams(), paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    super.a(paramLayoutParams, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void a(ViewGroup paramViewGroup, Activity paramActivity)
  {
    this.g = paramViewGroup;
    if (!TextUtils.isEmpty(this.b))
    {
      UIPropUtil.a(this.b, new e(this, paramViewGroup));
      if (!TextUtils.isEmpty(this.e))
        if (this.i == null)
          break label118;
    }
    label118: for (ViewGroup.LayoutParams localLayoutParams = this.i.getLayoutParams(); ; localLayoutParams = paramViewGroup.getLayoutParams())
    {
      while (true)
      {
        localLayoutParams.height = UIPropUtil.a(this.e, paramActivity);
        if (this.h)
          this.g = this.i;
        return;
        if (TextUtils.isEmpty(this.c))
          break;
        try
        {
          paramViewGroup.setBackgroundColor(UIPropUtil.a(this.c));
        }
        catch (Exception localException)
        {
          LogUtils.a(localException);
        }
      }
      break;
    }
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    if (paramJSONObject.has("image"))
      this.b = paramJSONObject.optString("image");
    if (paramJSONObject.has("color"))
      this.c = paramJSONObject.optString("color");
    if (paramJSONObject.has("height"))
      this.e = paramJSONObject.optString("height");
    if (paramJSONObject.has("overflow"))
      this.f = paramJSONObject.optString("overflow");
    this.h = false;
  }

  public void dispose()
  {
    super.dispose();
    this.i = null;
    this.g = null;
  }

  protected final int f()
  {
    return R.layout.DefaultThreadFactory;
  }

  public final String h()
  {
    return this.e;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UIBlock
 * JD-Core Version:    0.6.2
 */