package com.alipay.mobile.security.securitycommon;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SecurityUtil
{
  private static final List<String> b;
  private AlertDialog a;

  static
  {
    ArrayList localArrayList = new ArrayList();
    b = localArrayList;
    localArrayList.add("alipays://platformapi/startapp?appId=20000009");
    b.add("alipays://platformapi/startApp?appId=20000060");
    b.add("alipays://platformapi/startApp?appId=20000015");
  }

  public static int a(View paramView)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    return paramView.getMeasuredHeight();
  }

  public static String a(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      String str3;
      String str4;
      if ("hideaccount".equals(paramString2))
        if (paramString1.contains("@"))
        {
          int j = paramString1.indexOf("@");
          str3 = paramString1.substring(0, j);
          str4 = paramString1.substring(j, paramString1.length());
          if (str3.length() >= 3)
            paramString1 = str3.substring(0, 3) + "***" + str4;
        }
      int i;
      do
      {
        do
        {
          do
          {
            return paramString1;
            return str3 + "***" + str4;
          }
          while (!paramString1.matches("1\\d{10}"));
          String str1 = paramString1.substring(0, 3);
          String str2 = paramString1.substring(7, paramString1.length());
          return str1 + "****" + str2;
        }
        while (!"hidename".equals(paramString2));
        i = paramString1.length();
      }
      while (i <= 1);
      return "*" + paramString1.substring(1, i);
    }
    return "";
  }

  public static void a()
  {
    new Handler(Looper.getMainLooper()).post(new SecurityUtil.2());
  }

  public static void a(Context paramContext, View paramView)
  {
    try
    {
      b(paramContext, paramView);
      View localView = paramView.findFocus();
      if (localView != null)
        localView.clearFocus();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(ActivityApplication paramActivityApplication, APCheckboxWithLinkText paramAPCheckboxWithLinkText, String paramString1, String paramString2)
  {
    paramAPCheckboxWithLinkText.getLinkTextView().setClickable(true);
    paramAPCheckboxWithLinkText.getLinkTextView().setFocusable(true);
    paramAPCheckboxWithLinkText.getLinkTextView().setOnClickListener(new SecurityUtil.1(paramString1, paramString2, paramActivityApplication));
  }

  public static boolean a(String paramString)
  {
    return (paramString == null) || ("".equals(paramString));
  }

  public static void b(Context paramContext, View paramView)
  {
    try
    {
      ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static boolean b()
  {
    try
    {
      Account[] arrayOfAccount2 = AccountManager.get(AlipayApplication.getInstance()).getAccountsByType("com.eg.android.AlipayGphone");
      arrayOfAccount1 = arrayOfAccount2;
      if ((arrayOfAccount1 != null) && (arrayOfAccount1.length > 0))
        return true;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.getMessage();
        Account[] arrayOfAccount1 = null;
      }
    }
    return false;
  }

  public static boolean b(String paramString)
  {
    if (!StringUtils.isBlank(paramString))
      return paramString.trim().startsWith("alipays://platformapi/startapp?appId=20000009");
    return false;
  }

  public static void c(Context paramContext, View paramView)
  {
    if ((paramContext == null) || (paramView == null))
      return;
    paramView.requestFocus();
    ((InputMethodManager)paramContext.getSystemService("input_method")).showSoftInput(paramView, 0);
  }

  public static boolean c(String paramString)
  {
    if ((b != null) && (!b.isEmpty()) && (!StringUtils.isEmpty(paramString)))
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
        if (paramString.startsWith((String)localIterator.next()))
          return true;
      return false;
    }
    return false;
  }

  public final void a(Context paramContext, String paramString1, String paramString2, View.OnClickListener paramOnClickListener1, String paramString3, View.OnClickListener paramOnClickListener2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    View localView = LayoutInflater.from(paramContext).inflate(R.layout.aA, null);
    TextView localTextView1 = (TextView)localView.findViewById(R.id.er);
    localTextView1.setTextColor(-16777216);
    localTextView1.setText(paramString1);
    TextView localTextView2 = (TextView)localView.findViewById(R.id.eK);
    localTextView2.setTextColor(-16777216);
    localTextView2.setText(paramString2);
    TextView localTextView3 = (TextView)localView.findViewById(R.id.fo);
    localTextView3.setTextColor(-16777216);
    localTextView3.setText(paramString3);
    localBuilder.setView(localView);
    localBuilder.setOnKeyListener(new SecurityUtil.3(this));
    this.a = localBuilder.create();
    this.a.show();
    localTextView2.setOnClickListener(new SecurityUtil.4(this, paramOnClickListener1));
    localTextView3.setOnClickListener(new SecurityUtil.5(this, paramOnClickListener2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityUtil
 * JD-Core Version:    0.6.2
 */