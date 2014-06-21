package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;
import com.alipay.android.app.encrypt.MD5;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.util.UIPropUtil;
import com.alipay.android.mini.widget.CustomToast;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class UISimplePassword extends BaseElement
{
  LinearLayout e;
  private String f = "";
  private List g;
  private EditText h;
  private boolean i;
  private String j;
  private String k;
  private String l;
  private boolean m = true;
  private boolean n;

  private void a(int paramInt)
  {
    int i1 = 0;
    if (i1 < this.g.size())
    {
      if (i1 < paramInt)
        ((ImageView)this.g.get(i1)).setVisibility(0);
      while (true)
      {
        i1++;
        break;
        ((ImageView)this.g.get(i1)).setVisibility(8);
      }
    }
  }

  public final boolean E()
  {
    return this.n;
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.i = paramJSONObject.optBoolean("auto", false);
    this.j = paramJSONObject.optString("format");
    this.k = paramJSONObject.optString("format_type");
    this.l = paramJSONObject.optString("format_msg");
    this.n = paramJSONObject.optBoolean("verifyweak", false);
  }

  public final int b()
  {
    EditText localEditText = this.h;
    ElementFactory.a(localEditText);
    if (localEditText != null)
      return localEditText.getId();
    return 0;
  }

  public final boolean c()
  {
    if ((this.e == null) || (!l()));
    while (this.f.length() == 6)
      return true;
    return false;
  }

  public final boolean d()
  {
    if (c())
    {
      Activity localActivity = (Activity)this.h.getContext();
      if (!TextUtils.isEmpty(this.j))
        try
        {
          String str2 = this.f;
          if (TextUtils.equals(this.k, "md5"))
            str2 = MD5.a(str2);
          boolean bool = Pattern.compile(this.j).matcher(str2).matches();
          if (!bool)
          {
            if (TextUtils.isEmpty(this.l))
            {
              String str3 = localActivity.getString(R.string.DefaultThreadFactory);
              this.l = (p() + str3);
            }
            UIPropUtil.b(this.h);
            CustomToast.a(localActivity, this.l);
            h();
          }
          return bool;
        }
        catch (Exception localException)
        {
        }
      if (this.n)
      {
        String str1 = this.f;
        int i1;
        if (UIPropUtil.g(str1))
        {
          this.h.postDelayed(new ah(this, localActivity), 200L);
          i1 = 1;
        }
        while (i1 != 0)
        {
          return false;
          if ((UIPropUtil.h(str1)) || (UIPropUtil.i(str1)))
          {
            this.h.postDelayed(new ai(this, localActivity), 200L);
            i1 = 1;
          }
          else
          {
            i1 = 0;
          }
        }
      }
    }
    return c();
  }

  public void dispose()
  {
    super.dispose();
    if (this.g != null)
      this.g.clear();
    this.f = null;
    this.h = null;
    this.e = null;
  }

  public final JSONObject e()
  {
    JSONObject localJSONObject = s();
    try
    {
      localJSONObject.put(a(), this.f);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      LogUtils.a(localJSONException);
    }
    return localJSONObject;
  }

  public final void g()
  {
    if ((this.h != null) && (this.m))
      this.h.postDelayed(new ae(this), 200L);
  }

  public final void h()
  {
    if (this.h != null)
    {
      this.h.getText().clear();
      this.f = "";
      a(this.f.length());
    }
  }

  protected final int t()
  {
    return R.layout.x;
  }

  protected final void u()
  {
  }

  public final String x()
  {
    return this.l;
  }

  public final EditText z()
  {
    return this.h;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UISimplePassword
 * JD-Core Version:    0.6.2
 */