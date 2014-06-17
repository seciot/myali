package com.alipay.android.mini.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.alipay.android.app.R.color;
import com.alipay.android.app.R.dimen;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;
import com.alipay.android.app.R.style;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.app.util.StringUtil;
import com.alipay.android.app.util.UIUtils;
import com.alipay.android.app.widget.BaseTarget;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.uielement.ElementAction;
import com.alipay.android.mini.window.IFormShower;
import com.alipay.android.mini.window.IUIForm;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestBuilder;
import java.lang.reflect.Array;
import java.util.HashMap;

public class UIPropUtil
{
  public static int a;
  public static int b;
  private static final HashMap c = new HashMap();
  private static final HashMap d = new HashMap();

  static
  {
    a = -1;
    b = -1;
    c.put("xx-small", Float.valueOf(11.0F));
    c.put("x-small", Float.valueOf(12.0F));
    c.put("small", Float.valueOf(13.0F));
    c.put("medium", Float.valueOf(15.0F));
    c.put("large", Float.valueOf(16.0F));
    c.put("x-large", Float.valueOf(19.0F));
    c.put("xx-large", Float.valueOf(20.0F));
    d.put("switch", Integer.valueOf(R.drawable.J));
    d.put("skip", Integer.valueOf(R.drawable.J));
    d.put("white_content", Integer.valueOf(R.drawable.e));
    d.put("gray_content", Integer.valueOf(R.drawable.d));
    d.put("detail", Integer.valueOf(R.drawable.z));
    d.put("tip", Integer.valueOf(R.drawable.z));
    d.put("header_line", Integer.valueOf(R.drawable.v));
    d.put("title", Integer.valueOf(R.drawable.F));
    d.put("footer_line", Integer.valueOf(R.drawable.t));
    d.put("middle_line", Integer.valueOf(R.drawable.t));
    d.put("sure", Integer.valueOf(R.drawable.B));
    d.put("page_title", Integer.valueOf(R.drawable.p));
    d.put("dash_line", Integer.valueOf(R.drawable.s));
    d.put("result_ok", Integer.valueOf(R.drawable.A));
    d.put("normal", Integer.valueOf(R.drawable.k));
    d.put("hover", Integer.valueOf(R.drawable.l));
    d.put("normal_second", Integer.valueOf(R.drawable.i));
    d.put("hover_second", Integer.valueOf(R.drawable.j));
    d.put("disable_second", Integer.valueOf(R.drawable.m));
    d.put("disable_gray", Integer.valueOf(R.drawable.m));
    d.put("disable_blue", Integer.valueOf(R.drawable.k));
    d.put("sms_normal", Integer.valueOf(R.drawable.n));
    d.put("sms_hover", Integer.valueOf(R.drawable.o));
    d.put("sms_disable", Integer.valueOf(R.drawable.I));
    d.put("disable", Integer.valueOf(R.drawable.m));
    d.put("login_disable", Integer.valueOf(R.drawable.k));
    d.put("finger_print_info", Integer.valueOf(R.drawable.k));
    d.put("goto", Integer.valueOf(R.drawable.a));
    d.put("error", Integer.valueOf(R.drawable.Y));
    d.put("back", Integer.valueOf(R.drawable.b));
    d.put("mini_fullscreen_switch", Integer.valueOf(R.drawable.u));
    d.put("hui", Integer.valueOf(R.drawable.r));
    d.put("gou", Integer.valueOf(R.drawable.q));
    d.put("red_dot", Integer.valueOf(R.drawable.H));
    d.put("info", Integer.valueOf(R.drawable.C));
    d.put("icon_camera", Integer.valueOf(R.drawable.x));
    d.put("inputGroup", Integer.valueOf(R.drawable.D));
    d.put("help", Integer.valueOf(R.drawable.w));
    d.put("three_point", Integer.valueOf(R.drawable.K));
  }

  public static int a(Activity paramActivity)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics.widthPixels;
  }

  public static int a(Context paramContext, float paramFloat)
  {
    if (paramContext != null);
    for (Resources localResources = paramContext.getResources(); ; localResources = Resources.getSystem())
      return (int)(paramFloat * localResources.getDisplayMetrics().density);
  }

  public static int a(String paramString)
  {
    if (StringUtil.a(paramString))
      return GlobalContext.a().b().getResources().getColor(R.color.i);
    if (paramString.contains("rgb"))
    {
      int[] arrayOfInt = new int[3];
      String[] arrayOfString = paramString.substring(1 + paramString.indexOf("("), paramString.indexOf(")")).split(",");
      for (int i = 0; i < arrayOfString.length; i++)
        arrayOfInt[i] = Integer.parseInt(arrayOfString[i].trim());
      return Color.rgb(arrayOfInt[0], arrayOfInt[1], arrayOfInt[2]);
    }
    return Color.parseColor(paramString);
  }

  public static int a(String paramString, Activity paramActivity)
  {
    return a(paramString, paramActivity, f(paramActivity));
  }

  public static int a(String paramString, Activity paramActivity, int paramInt)
  {
    if (TextUtils.isEmpty(paramString));
    int i;
    do
    {
      return -2;
      if (paramString.contains("%"))
        return Math.round(paramInt * j(paramString));
      try
      {
        int j = Integer.parseInt(paramString);
        i = j;
        if (i > 0)
          return Math.round(Integer.parseInt(paramString) / 1.5F * c(paramActivity));
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
          i = -2;
      }
    }
    while (i == 0);
    return i;
  }

  public static int a(String paramString, Activity paramActivity, int[] paramArrayOfInt)
  {
    if (TextUtils.isEmpty(paramString));
    int i;
    do
    {
      return -2;
      if (paramString.contains("%"))
        return Math.round((d(paramActivity) - (paramArrayOfInt[0] + paramArrayOfInt[1])) * j(paramString));
      try
      {
        int j = Integer.parseInt(paramString);
        i = j;
        if (i > 0)
          return Math.round(Integer.parseInt(paramString) / 1.5F * c(paramActivity));
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
        {
          localNumberFormatException.printStackTrace();
          i = 0;
        }
      }
    }
    while (i == 0);
    return i;
  }

  public static ColorStateList a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      int[] arrayOfInt1 = { 4, 4 };
      int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt1);
      int[] arrayOfInt2 = new int[4];
      int i = 0;
      int j = 1;
      if (i < paramArrayOfString.length)
      {
        String str = paramArrayOfString[i];
        if (!TextUtils.isEmpty(str))
          if (str.startsWith("rgb"))
            switch (i)
            {
            default:
            case 0:
            case 1:
            case 2:
            }
        while (true)
        {
          j = 0;
          while (true)
          {
            i++;
            break;
            arrayOfInt[0] = { 16842910, -16842919, -16842908 };
            arrayOfInt2[0] = a(str);
            j = 0;
            continue;
            arrayOfInt[1] = { 16842910, 16842919 };
            arrayOfInt2[1] = a(str);
            arrayOfInt[2] = { 16842910, 16842908 };
            arrayOfInt2[2] = a(str);
            j = 0;
          }
          arrayOfInt[3] = { -16842910 };
          arrayOfInt2[3] = a(str);
        }
      }
      if (j == 0)
        return new ColorStateList(arrayOfInt, arrayOfInt2);
    }
    return null;
  }

  public static Drawable a(int paramInt, Resources paramResources)
  {
    int i = paramResources.getDimensionPixelSize(R.dimen.a);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inDensity = 240;
    Bitmap localBitmap1 = BitmapFactory.decodeResource(paramResources, paramInt, localOptions);
    Bitmap localBitmap2 = Bitmap.createBitmap(i + localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap2);
    Rect localRect = new Rect(0, 0, localBitmap1.getWidth(), localBitmap1.getHeight());
    localCanvas.drawBitmap(localBitmap1, localRect, localRect, null);
    return new BitmapDrawable(paramResources, localBitmap2);
  }

  private static Drawable a(Context paramContext, String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    Drawable localDrawable = null;
    if (!bool1)
    {
      if (!paramString.contains("local"))
        break label39;
      int i = f(paramString);
      localDrawable = paramContext.getResources().getDrawable(i);
    }
    label39: boolean bool2;
    do
    {
      return localDrawable;
      bool2 = paramString.startsWith("#");
      localDrawable = null;
    }
    while (!bool2);
    return new ColorDrawable(Color.parseColor(paramString));
  }

  public static StateListDrawable a(Context paramContext, String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      StateListDrawable localStateListDrawable = new StateListDrawable();
      int i = paramArrayOfString.length;
      int j = 0;
      int k = 1;
      if (j < i)
      {
        String str = paramArrayOfString[j];
        if (!TextUtils.isEmpty(str))
        {
          if (!str.contains("normal"))
            break label96;
          localStateListDrawable.addState(new int[] { 16842910, -16842919, -16842908 }, a(paramContext, str));
          k = 0;
        }
        while (true)
        {
          j++;
          break;
          label96: if (str.contains("hover"))
          {
            localStateListDrawable.addState(new int[] { 16842910, 16842919 }, a(paramContext, str));
            localStateListDrawable.addState(new int[] { 16842910, 16842908 }, a(paramContext, str));
            k = 0;
          }
          else
          {
            if (str.contains("disable"))
              localStateListDrawable.addState(new int[] { -16842910 }, a(paramContext, str));
            k = 0;
          }
        }
      }
      if (k != 0)
        return null;
      return localStateListDrawable;
    }
    return null;
  }

  public static void a(Activity paramActivity, int paramInt)
  {
    View localView1 = paramActivity.findViewById(16908290);
    if (localView1 != null)
      localView1.setVisibility(paramInt);
    localView1.invalidate();
    View localView2 = paramActivity.findViewById(R.id.C);
    if (localView2 != null)
      localView2.setVisibility(paramInt);
    localView2.invalidate();
  }

  public static void a(Activity paramActivity, String paramString, IFormShower paramIFormShower, boolean paramBoolean)
  {
    View localView = paramActivity.getCurrentFocus();
    if (localView != null)
      a(localView.getWindowToken(), paramActivity);
    if (!paramBoolean)
      a(paramActivity, 4);
    if (TextUtils.isEmpty(paramString));
    for (String str1 = "确定退出支付？"; ; str1 = paramString)
    {
      String str2 = paramActivity.getString(R.string.s);
      ActionType[] arrayOfActionType1 = new ActionType[1];
      arrayOfActionType1[0] = ActionType.d;
      ActionType[] arrayOfActionType2 = new ActionType[1];
      arrayOfActionType2[0] = ActionType.B;
      paramIFormShower.a(str2, str1, "是", arrayOfActionType1, "否", arrayOfActionType2);
      return;
    }
  }

  public static void a(Context paramContext)
  {
    Dialog localDialog = new Dialog(paramContext, R.style.c);
    View localView = LayoutInflater.from(paramContext).inflate(R.layout.e, null);
    localView.findViewById(R.id.I).setOnClickListener(new f(localDialog));
    localDialog.setContentView(localView);
    localDialog.show();
  }

  public static void a(Context paramContext, ElementAction[] paramArrayOfElementAction, String[] paramArrayOfString, IUIForm paramIUIForm)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setItems(paramArrayOfString, new g(paramIUIForm, paramArrayOfElementAction));
    localBuilder.create().show();
  }

  public static void a(Context paramContext, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    paramContext.getString(R.string.z);
    String str = paramContext.getString(R.string.A);
    i locali = new i(paramArrayOfString1, paramContext, paramArrayOfString2);
    localBuilder.setTitle(str);
    localBuilder.setItems(paramArrayOfString2, locali);
    localBuilder.create().show();
  }

  public static void a(Context paramContext, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString1, String paramString2, IUIForm paramIUIForm, String paramString3)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    String str = paramContext.getString(R.string.z);
    h localh = new h(paramString3, paramArrayOfString1, paramString1, paramString2, paramArrayOfString2, paramIUIForm);
    localBuilder.setTitle(str);
    localBuilder.setItems(paramArrayOfString2, localh);
    localBuilder.create().show();
  }

  public static void a(IBinder paramIBinder, Context paramContext)
  {
    ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramIBinder, 2);
  }

  public static void a(EditText paramEditText)
  {
    paramEditText.postDelayed(new j(paramEditText), 300L);
  }

  public static void a(TextView paramTextView, int paramInt)
  {
    paramTextView.setShadowLayer(2.0F, 0.0F, 2.0F, paramInt);
  }

  public static void a(String paramString, BaseTarget paramBaseTarget)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    Context localContext = GlobalContext.a().b();
    if ((!TextUtils.isEmpty(paramString)) && (paramString.startsWith("local:")));
    for (int i = 1; ; i = 0)
    {
      if (i == 0)
        break label61;
      int j = f(paramString);
      if (j == 0)
        break;
      paramBaseTarget.a(j);
      return;
    }
    label61: if ((paramString.startsWith("http://")) || (paramString.startsWith("https://")))
    {
      Picasso.a(localContext).a(paramString).a(paramBaseTarget);
      return;
    }
    paramBaseTarget.a();
  }

  private static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (!bool1)
    {
      int i = paramString.length();
      char[] arrayOfChar = paramString.toCharArray();
      int j = 0;
      if (j < i - 1)
      {
        if (paramBoolean)
        {
          int m = j + 1;
          arrayOfChar[m] = ((char)(arrayOfChar[m] - (j + 1)));
        }
        while (true)
        {
          j++;
          break;
          int k = j + 1;
          arrayOfChar[k] = ((char)(arrayOfChar[k] + (j + 1)));
        }
      }
      boolean bool3 = new String(arrayOfChar).matches("^(\\d)\\1+$");
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
  }

  public static int b(Activity paramActivity)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics.heightPixels;
  }

  public static int b(String paramString)
  {
    int i = 3;
    if (paramString.equals("center"))
      i = 17;
    while ((paramString.equals("left")) || (!paramString.equals("right")))
      return i;
    return 5;
  }

  public static int b(String paramString, Activity paramActivity)
  {
    return b(paramString, paramActivity, d(paramActivity));
  }

  public static int b(String paramString, Activity paramActivity, int paramInt)
  {
    int i;
    if (TextUtils.isEmpty(paramString))
      i = 0;
    do
    {
      return i;
      if (paramString.contains("%"))
        return Math.round(paramInt * j(paramString));
      i = Integer.parseInt(paramString);
      if (i > 0)
        i = Math.round(i / 1.5F * c(paramActivity));
    }
    while (i != 0);
    return -2;
  }

  public static void b(EditText paramEditText)
  {
    a(paramEditText.getWindowToken(), paramEditText.getContext());
  }

  public static float c(Activity paramActivity)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics.density;
  }

  public static float c(String paramString)
  {
    if (c.containsKey(paramString))
      return ((Float)c.get(paramString)).floatValue();
    try
    {
      float f = Float.parseFloat(paramString);
      return f / 1.5F;
    }
    catch (Exception localException)
    {
    }
    return ((Float)c.get("medium")).floatValue();
  }

  public static int d(Activity paramActivity)
  {
    float f1;
    float f2;
    if (a == -1)
    {
      f1 = a(paramActivity);
      f2 = b(paramActivity);
      if (f1 <= f2)
        break label137;
    }
    while (true)
    {
      if (f2 / f1 - 0.6F >= 0.0F);
      for (a = (int)(0.875F * f2); ; a = (int)(10 + (int)(f2 - 480.0F) / 5 + 286.0F * c(paramActivity)))
      {
        float f4 = paramActivity.getResources().getConfiguration().fontScale;
        if (f4 - 1.0F > 0.0F)
        {
          int i = (int)(a * (1.0F + (f4 - 1.0F) / 3.0F));
          a = i;
          if (i - f2 > 0.0F)
            a = (int)f2;
        }
        return a;
      }
      label137: float f3 = f2;
      f2 = f1;
      f1 = f3;
    }
  }

  public static int[] d(String paramString)
  {
    int i = 0;
    int[] arrayOfInt = { 0, 0, 0, 0 };
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return arrayOfInt;
      try
      {
        Context localContext = GlobalContext.a().b();
        if (StringUtil.a(paramString))
        {
          int k = UIUtils.a(localContext, (int)(Integer.valueOf(paramString).intValue() / 1.5F));
          while (i < arrayOfInt.length)
          {
            arrayOfInt[i] = k;
            i++;
          }
        }
        String[] arrayOfString = paramString.split(" ");
        if (arrayOfString != null)
        {
          int j = Math.min(arrayOfString.length, arrayOfInt.length);
          while (i < j)
          {
            arrayOfInt[i] = UIUtils.a(localContext, (int)(Integer.valueOf(arrayOfString[i]).intValue() / 1.5F));
            i++;
          }
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        LogUtils.a(localNumberFormatException);
      }
    }
    return arrayOfInt;
  }

  public static int e(Activity paramActivity)
  {
    int i = (int)(d(paramActivity) - 2.0F * (14.0F * c(paramActivity)));
    int j = (int)(40.0F * c(paramActivity));
    int k = i / 6 - j;
    int m = paramActivity.getResources().getDimensionPixelSize(R.dimen.b);
    if (k + m > f(paramActivity))
      b = k + m;
    return b;
  }

  public static int[] e(String paramString)
  {
    int i = 0;
    int[] arrayOfInt = new int[4];
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return arrayOfInt;
      try
      {
        Context localContext = GlobalContext.a().b();
        if (StringUtil.a(paramString))
        {
          int k = UIUtils.a(localContext, (int)(Integer.valueOf(paramString).intValue() / 1.5F));
          while (i < arrayOfInt.length)
          {
            arrayOfInt[i] = k;
            i++;
          }
        }
        String[] arrayOfString = paramString.split(" ");
        if (arrayOfString != null)
        {
          int j = Math.min(arrayOfString.length, arrayOfInt.length);
          while (i < j)
          {
            arrayOfInt[i] = a(localContext, (int)(Integer.valueOf(arrayOfString[i]).intValue() / 1.5F));
            i++;
          }
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        LogUtils.a(localNumberFormatException);
      }
    }
    return arrayOfInt;
  }

  private static int f(Activity paramActivity)
  {
    if (b == -1)
    {
      float f1 = b(paramActivity);
      b = paramActivity.getResources().getDimensionPixelSize(R.dimen.b);
      float f2 = paramActivity.getResources().getConfiguration().fontScale;
      if (f2 - 1.0F > 0.0F)
      {
        int i = (int)(b * (1.0F + (f2 - 1.0F) / 3.0F));
        b = i;
        if (i - f1 > 0.0F)
          b = (int)f1;
      }
    }
    return b;
  }

  public static int f(String paramString)
  {
    if (StringUtil.a(paramString))
      return 0;
    String str = paramString.substring(1 + paramString.lastIndexOf(":"));
    if (d.containsKey(str))
      return ((Integer)d.get(str)).intValue();
    try
    {
      int i = Integer.valueOf(str, 0).intValue();
      return i;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public static boolean g(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = paramString.matches("^(\\d)\\1+$");
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
  }

  public static boolean h(String paramString)
  {
    return a(paramString, true);
  }

  public static boolean i(String paramString)
  {
    return a(paramString, false);
  }

  private static float j(String paramString)
  {
    String str = paramString.replace("%", "");
    if (TextUtils.isEmpty(str))
      return 0.0F;
    return Float.valueOf(str).floatValue() / 100.0F;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.UIPropUtil
 * JD-Core Version:    0.6.2
 */