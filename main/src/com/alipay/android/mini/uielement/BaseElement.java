package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.util.UIPropUtil;
import org.json.JSONObject;

public abstract class BaseElement extends IUIElement
{
  private static int D = 0;
  private String A;
  private boolean B = false;
  private IUIComponet C;
  private boolean E = false;
  private int[] F = new int[2];
  private String G;
  protected boolean a = false;
  protected ElementAction b;
  protected ElementAction c;
  private String e;
  private Object f;
  private String g;
  private boolean h = true;
  private float i;
  private String j;
  private String k;
  private String l;
  private boolean m = false;
  private boolean n;
  private boolean o;
  private String p;
  private ElementAction q;
  private String r;
  private View s;
  private String t;
  private int[] u = new int[4];
  private int[] v = new int[4];
  private boolean w = false;
  private int x = -2;
  private int y = -1;
  private String z;

  private View a(Activity paramActivity, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    this.a = paramBoolean;
    if ((this.s == null) && (t() != 0))
      this.s = LayoutInflater.from(paramActivity).inflate(t(), paramViewGroup, false);
    if ((this.c != null) || (this.q != null))
      this.s.setOnClickListener(new b(this));
    if (!TextUtils.isEmpty(this.z))
      this.x = UIPropUtil.a(this.z, paramActivity, this.F);
    if (!TextUtils.isEmpty(this.A))
      this.y = UIPropUtil.a(this.A, paramActivity);
    int i1;
    if (this.h)
      i1 = 0;
    while (true)
    {
      this.s.setVisibility(i1);
      ViewGroup.LayoutParams localLayoutParams1 = this.s.getLayoutParams();
      if (localLayoutParams1 != null)
      {
        if (!TextUtils.isEmpty(this.z))
          localLayoutParams1.width = this.x;
        if (!TextUtils.isEmpty(this.A))
          localLayoutParams1.height = this.y;
      }
      if (this.w)
        this.s.setPadding(this.v[1], this.v[0], this.v[3], this.v[2]);
      ViewGroup.LayoutParams localLayoutParams2 = this.s.getLayoutParams();
      if ((localLayoutParams2 instanceof LinearLayout.LayoutParams))
        ((LinearLayout.LayoutParams)localLayoutParams2).setMargins(this.u[1], this.u[0], this.u[3], this.u[2]);
      try
      {
        while (true)
        {
          a(paramActivity, this.s);
          this.s.getViewTreeObserver().addOnGlobalLayoutListener(new c(this));
          D = 1 + D;
          this.s.setId(D);
          return this.s;
          i1 = 8;
          break;
          if ((localLayoutParams2 instanceof RelativeLayout.LayoutParams))
            ((RelativeLayout.LayoutParams)localLayoutParams2).setMargins(this.u[1], this.u[0], this.u[3], this.u[2]);
        }
      }
      catch (AppErrorException localAppErrorException)
      {
        while (true)
          LogUtils.a(localAppErrorException);
      }
    }
  }

  public final String a()
  {
    return this.e;
  }

  protected abstract void a(Activity paramActivity, View paramView);

  public final void a(IUIComponet paramIUIComponet)
  {
    this.C = paramIUIComponet;
  }

  public final void a(String paramString)
  {
    this.f = paramString;
  }

  public void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.e = paramJSONObject.optString("name");
    this.f = paramJSONObject.opt("value");
    this.g = paramJSONObject.optString("text");
    this.h = paramJSONObject.optBoolean("display", true);
    this.i = UIPropUtil.c(paramJSONObject.optString("size"));
    this.j = paramJSONObject.optString("color");
    this.k = paramJSONObject.optString("tip");
    this.l = paramJSONObject.optString("hint");
    this.m = paramJSONObject.optBoolean("underline", false);
    this.n = paramJSONObject.optBoolean("crossline", false);
    this.o = paramJSONObject.optBoolean("overline", false);
    this.p = paramJSONObject.optString("image");
    this.q = ElementAction.a(paramJSONObject, "action");
    this.r = paramJSONObject.optString("params");
    String str = paramJSONObject.optString("padding");
    this.t = paramJSONObject.optString("margin");
    this.G = paramJSONObject.optString("content");
    this.c = ElementAction.a(paramJSONObject, "onclick");
    this.b = ElementAction.a(paramJSONObject, "onload");
    this.E = paramJSONObject.optBoolean("cursor");
    if (paramJSONObject.has("width"))
      this.z = paramJSONObject.optString("width");
    if (paramJSONObject.has("height"))
      this.A = paramJSONObject.optString("height");
    if (!TextUtils.isEmpty(str))
    {
      this.w = true;
      this.v = UIPropUtil.d(str);
    }
    if (!TextUtils.isEmpty(this.t))
      this.u = UIPropUtil.e(this.t);
  }

  public final void a(boolean paramBoolean)
  {
    this.s.setEnabled(paramBoolean);
  }

  public boolean c()
  {
    return true;
  }

  public boolean d()
  {
    return true;
  }

  public void dispose()
  {
    this.s = null;
    if (this.d != null)
      this.d = null;
  }

  public final IUIComponet f()
  {
    return this.C;
  }

  public void g()
  {
    if (this.s != null)
      this.s.requestFocus();
  }

  public void h()
  {
  }

  public final boolean i()
  {
    return this.E;
  }

  public final Object j()
  {
    return this.f;
  }

  public final String k()
  {
    return this.g;
  }

  protected final boolean l()
  {
    return this.h;
  }

  protected final String m()
  {
    return this.j;
  }

  public final ElementAction n()
  {
    return this.q;
  }

  protected final float o()
  {
    return this.i;
  }

  protected final String p()
  {
    return this.l;
  }

  protected final String q()
  {
    return this.p;
  }

  public final String r()
  {
    return this.G;
  }

  public final JSONObject s()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(this.r);
      return localJSONObject;
    }
    catch (Exception localException)
    {
    }
    return new JSONObject();
  }

  protected abstract int t();

  protected void u()
  {
    if (this.b != null)
      a(this, ActionType.a(this.b));
  }

  public final void v()
  {
    this.x = -1;
  }

  public final boolean w()
  {
    return this.m;
  }

  public String x()
  {
    return "";
  }

  public final void y()
  {
    this.s.setVisibility(4);
  }

  public EditText z()
  {
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.BaseElement
 * JD-Core Version:    0.6.2
 */