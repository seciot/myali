package com.alipay.android.mini.window;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.uielement.UIInput;
import com.alipay.android.mini.uielement.UISimplePassword;
import java.util.HashSet;
import java.util.Set;

public class GuideWindow
{
  private static Set b = new HashSet();
  private static GuideWindow f;
  private final String a = "version";
  private View c;
  private SharedPreferences d;
  private boolean e = false;

  private GuideWindow()
  {
    Context localContext = GlobalContext.a().b();
    this.d = localContext.getSharedPreferences("msp_guides", 0);
    String str1 = DeviceInfo.a(localContext).a();
    String str2 = this.d.getString("version", "");
    if ((!TextUtils.isEmpty(str2)) && (!TextUtils.equals(str2, str1)))
    {
      this.d.edit().putString("version", str1).commit();
      this.d.edit().putBoolean("info", false).putBoolean("switch", false).putBoolean("desc", false).commit();
    }
  }

  public static GuideWindow a()
  {
    if (f == null)
      f = new GuideWindow();
    return f;
  }

  public final void a(Activity paramActivity)
  {
    if (this.e)
    {
      ViewGroup localViewGroup = (ViewGroup)paramActivity.findViewById(16908290);
      View localView = localViewGroup.findViewById(R.id.C);
      this.e = false;
      localViewGroup.removeView(this.c);
      if (localView != null)
        localView.setVisibility(0);
    }
  }

  public final void a(Activity paramActivity, String paramString, BaseElement paramBaseElement)
  {
    EditText localEditText;
    if ((paramBaseElement instanceof UIInput))
      localEditText = ((UIInput)paramBaseElement).z();
    while (true)
    {
      if (GlobalContext.a().d())
        if (b.contains(paramString))
          if (paramBaseElement != null)
            paramBaseElement.g();
      do
      {
        return;
        if (!(paramBaseElement instanceof UISimplePassword))
          break label247;
        localEditText = ((UISimplePassword)paramBaseElement).z();
        break;
        b.add(paramString);
        do
        {
          this.e = true;
          this.d.edit().putBoolean(paramString, true).commit();
          DisplayMetrics localDisplayMetrics = new DisplayMetrics();
          paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
          ViewGroup localViewGroup = (ViewGroup)paramActivity.findViewById(16908290);
          View localView = localViewGroup.findViewById(R.id.C);
          if (localView != null)
            localView.setVisibility(8);
          LayoutInflater localLayoutInflater = LayoutInflater.from(paramActivity);
          if (this.c != null)
            break;
          this.c = localLayoutInflater.inflate(R.layout.c, null);
          ((ImageView)this.c.findViewById(R.id.w)).setOnClickListener(new h(this, localEditText, localViewGroup, localView));
          localViewGroup.addView(this.c);
          return;
        }
        while (!this.d.getBoolean(paramString, false));
      }
      while (paramBaseElement == null);
      paramBaseElement.g();
      return;
      label247: localEditText = null;
    }
  }

  public final boolean a(String paramString)
  {
    return this.d.getBoolean(paramString, false);
  }

  public final boolean b()
  {
    return this.e;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.GuideWindow
 * JD-Core Version:    0.6.2
 */