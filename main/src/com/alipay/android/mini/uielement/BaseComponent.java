package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.util.AlignEnum;
import com.alipay.android.mini.util.UIPropUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public abstract class BaseComponent extends IUIComponet
{
  protected List a = new ArrayList();
  private ViewGroup b;
  private String c;
  private String e;
  private int[] f = new int[4];
  private int[] g = new int[4];
  private boolean h = false;
  private boolean i = false;
  private String j;
  private boolean k = false;
  private ElementAction l;
  private String m;
  private String n;
  private String o;

  private static int a(String paramString, boolean paramBoolean)
  {
    int i1 = -1;
    int i2;
    if (!TextUtils.isEmpty(paramString))
      switch (AlignEnum.valueOf(paramString).a())
      {
      case 4:
      case 5:
      case 7:
      case 8:
      default:
        i2 = 3;
        i1 = 9;
      case 1:
      case 2:
      case 3:
      case 6:
      case 9:
      }
    while (true)
      if (paramBoolean)
      {
        return i1;
        i2 = 5;
        i1 = 11;
        continue;
        i2 = 48;
        i1 = 10;
        continue;
        i2 = 80;
        i1 = 12;
        continue;
        i2 = 1;
        i1 = 14;
        continue;
        i2 = 16;
        i1 = 15;
      }
      else
      {
        return i2;
        i2 = i1;
      }
  }

  public ViewGroup a(Activity paramActivity, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (this.b == null)
    {
      this.b = ((ViewGroup)LayoutInflater.from(paramActivity).inflate(f(), paramViewGroup, false));
      if (this.h)
        a(this.g[1], this.g[0], this.g[3], this.g[2]);
      int i1 = this.a.size();
      ArrayList localArrayList = new ArrayList();
      int i2 = 0;
      Object localObject = null;
      if (i2 < i1)
      {
        IUIElement localIUIElement = (IUIElement)this.a.get(i2);
        View localView2 = (View)localIUIElement.b(paramActivity, this.b, paramBoolean);
        if (localIUIElement.B())
          localArrayList.add(localView2);
        String str1 = localIUIElement.C();
        String str2 = localIUIElement.D();
        boolean bool = this.b instanceof RelativeLayout;
        int i12 = a(str2, bool);
        int i13 = a(str1, bool);
        if ((this.b instanceof LinearLayout))
          ((LinearLayout.LayoutParams)localView2.getLayoutParams()).gravity = i13;
        while (true)
        {
          this.b.addView(localView2);
          i2++;
          localObject = localView2;
          break;
          if ((this.b instanceof FrameLayout))
          {
            ((FrameLayout.LayoutParams)localView2.getLayoutParams()).gravity = i13;
          }
          else if ((this.b instanceof RelativeLayout))
          {
            RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localView2.getLayoutParams();
            if ((localObject != null) && (TextUtils.isEmpty(str1)))
              localLayoutParams.addRule(1, localObject.getId());
            if (i13 != -1)
              localLayoutParams.addRule(i13);
            if (i12 != -1)
              localLayoutParams.addRule(i12);
            localView2.setLayoutParams(localLayoutParams);
          }
        }
      }
      int i3 = localArrayList.size();
      int i4 = 0;
      if (i4 < i3)
      {
        View localView1 = (View)localArrayList.get(i4);
        int i8 = localView1.getPaddingLeft();
        int i9 = localView1.getPaddingTop();
        int i10 = localView1.getPaddingRight();
        int i11 = localView1.getPaddingBottom();
        if (i3 > 1)
          if (i4 == 0)
            localView1.setBackgroundResource(R.drawable.Loadable);
        while (true)
        {
          localView1.setPadding(i8, i9, i10, i11);
          i4++;
          break;
          if (i4 == i3 - 1)
          {
            localView1.setBackgroundResource(R.drawable.DefaultThreadFactory);
          }
          else
          {
            localView1.setBackgroundResource(R.drawable.g);
            continue;
            localView1.setBackgroundResource(R.drawable.D);
          }
        }
      }
      a(this.b.getLayoutParams(), this.f[1], this.f[0], this.f[3], this.f[2]);
    }
    try
    {
      a(this.b, paramActivity);
      int i5;
      int i6;
      if (paramBoolean)
      {
        i5 = UIPropUtil.a(paramActivity);
        i6 = UIPropUtil.b(this.n, paramActivity, i5);
        if (i6 != 0)
          break label649;
      }
      label649: for (this.b.getLayoutParams().width = -1; ; this.b.getLayoutParams().width = i6)
      {
        if (!TextUtils.isEmpty(this.o))
        {
          int i7 = UIPropUtil.a(this.o, paramActivity);
          this.b.getLayoutParams().height = i7;
        }
        if (this.l != null)
          this.b.setOnClickListener(new a(this));
        if (!TextUtils.isEmpty(this.m))
          this.b.setBackgroundColor(UIPropUtil.a(this.m));
        return this.b;
        i5 = UIPropUtil.d(paramActivity);
        break;
      }
    }
    catch (AppErrorException localAppErrorException)
    {
      while (true)
        LogUtils.a(localAppErrorException);
    }
  }

  public String a()
  {
    return this.e;
  }

  protected void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.b.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  protected void a(ViewGroup.LayoutParams paramLayoutParams, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.i)
    {
      if (!(paramLayoutParams instanceof LinearLayout.LayoutParams))
        break label28;
      ((LinearLayout.LayoutParams)paramLayoutParams).setMargins(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    label28: 
    do
    {
      return;
      if ((paramLayoutParams instanceof RelativeLayout.LayoutParams))
      {
        ((RelativeLayout.LayoutParams)paramLayoutParams).setMargins(paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      }
    }
    while (!(paramLayoutParams instanceof FrameLayout.LayoutParams));
    ((FrameLayout.LayoutParams)paramLayoutParams).setMargins(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  protected abstract void a(ViewGroup paramViewGroup, Activity paramActivity);

  public final void a(IUIElement paramIUIElement)
  {
    this.a.add(paramIUIElement);
  }

  public void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.e = paramJSONObject.optString("name");
    this.c = paramJSONObject.optString("type");
    this.j = paramJSONObject.optString("content");
    this.m = paramJSONObject.optString("color");
    if (paramJSONObject.has("width"))
      this.n = paramJSONObject.optString("width");
    if (paramJSONObject.has("height"))
      this.o = paramJSONObject.optString("height");
    String str1 = paramJSONObject.optString("padding");
    String str2 = paramJSONObject.optString("margin");
    if (!TextUtils.isEmpty(str1))
    {
      this.h = true;
      this.g = UIPropUtil.d(str1);
    }
    if (!TextUtils.isEmpty(str2))
    {
      this.i = true;
      this.f = UIPropUtil.e(str2);
    }
    if (paramJSONObject.has("together"))
      this.k = paramJSONObject.optBoolean("together");
    this.l = ElementAction.a(paramJSONObject, "action");
  }

  public final int b()
  {
    return 0;
  }

  public final boolean c()
  {
    return true;
  }

  public final boolean d()
  {
    return true;
  }

  public void dispose()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((IUIElement)localIterator.next()).dispose();
    this.b = null;
    this.a = null;
    if (this.d != null)
      this.d = null;
  }

  public final JSONObject e()
  {
    return null;
  }

  protected abstract int f();

  public final String g()
  {
    return this.j;
  }

  public String h()
  {
    return this.o;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.BaseComponent
 * JD-Core Version:    0.6.2
 */