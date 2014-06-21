package com.alipay.mobile.alipassapp.ui.common;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.util.Patterns;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.alipay.mobile.alipassapp.R.color;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.common.transport.utils.NetworkUtils;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.h5container.service.H5Service;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"HandlerLeak"})
public class a
  implements View.OnClickListener
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private ActivityApplication f;
  private String g;
  private boolean h;
  private final int i = 2001;
  private boolean j = false;
  private Handler k = new f(this);

  public a(Context paramContext, String paramString1, String paramString2, ActivityApplication paramActivityApplication)
  {
    this(paramContext, paramString1, paramString2, null, null, paramActivityApplication);
  }

  public a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, ActivityApplication paramActivityApplication)
  {
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
    this.e = paramString4;
    this.f = paramActivityApplication;
  }

  public a(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, String paramString5, ActivityApplication paramActivityApplication)
  {
    this.a = paramContext;
    this.b = paramString1;
    this.g = paramString2;
    this.h = paramBoolean;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramActivityApplication;
  }

  public static int a(Context paramContext, AlipassInfo.EinfoFields paramEinfoFields)
  {
    if (("map".equalsIgnoreCase(paramEinfoFields.getType())) || ("tel".equalsIgnoreCase(paramEinfoFields.getType())))
      return paramContext.getResources().getColor(R.color.url_text_color);
    if ("url".equalsIgnoreCase(paramEinfoFields.getType()))
      return paramContext.getResources().getColor(R.color.url_text_color);
    return paramContext.getResources().getColor(R.color.backview_value_text_color);
  }

  public static int a(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0));
    do
    {
      return 0;
      if (paramString.equalsIgnoreCase("tel"))
        return R.drawable.tel;
    }
    while (!paramString.equalsIgnoreCase("map"));
    return R.drawable.map;
  }

  public static void a(Context paramContext, String paramString, APTextView paramAPTextView, ActivityApplication paramActivityApplication)
  {
    if ((paramString == null) || (paramString.trim().length() == 0))
      return;
    ArrayList localArrayList = new ArrayList();
    Matcher localMatcher = Patterns.WEB_URL.matcher(paramString);
    while (localMatcher.find())
      localArrayList.add(new c(localMatcher.group(), localMatcher.start(), localMatcher.end()));
    SpannableString localSpannableString = new SpannableString(paramString);
    try
    {
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        c localc = (c)localIterator.next();
        localSpannableString.setSpan(new d(new a(paramContext, "url", localc.a, paramActivityApplication)), localc.b, localc.c, 33);
      }
      paramAPTextView.setText(localSpannableString);
      paramAPTextView.setMovementMethod(LinkMovementMethod.getInstance());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static int b(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0));
    do
    {
      return -1;
      if (paramString.equalsIgnoreCase("tel"))
        return R.drawable.tel_back;
      if (paramString.equalsIgnoreCase("map"))
        return R.drawable.map;
    }
    while (paramString.equalsIgnoreCase("text"));
    return 0;
  }

  public void onClick(View paramView)
  {
    if ((this.b == null) || (this.b.trim().length() == 0));
    AppManageService localAppManageService;
    do
    {
      do
      {
        String str7;
        do
        {
          return;
          if (this.b.equalsIgnoreCase("tel"))
          {
            String str9 = this.c;
            if (!str9.startsWith("tel:"))
              str9 = "tel:" + str9;
            Intent localIntent3 = new Intent();
            localIntent3.setAction("android.intent.action.DIAL");
            localIntent3.setData(Uri.parse(str9));
            try
            {
              AlipayApplication.getInstance().getMicroApplicationContext().startActivity(this.f, localIntent3);
              return;
            }
            catch (ActivityNotFoundException localActivityNotFoundException3)
            {
              return;
            }
          }
          if (this.b.equalsIgnoreCase("map"))
          {
            String str8 = this.c;
            Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + str8));
            try
            {
              AlipayApplication.getInstance().getMicroApplicationContext().startActivity(this.f, localIntent2);
              return;
            }
            catch (ActivityNotFoundException localActivityNotFoundException2)
            {
              return;
            }
          }
          if (!this.b.equalsIgnoreCase("url"))
            break;
          str7 = this.c;
          if ((!StringUtils.isEmpty(str7)) && (str7.startsWith("alipays")))
            try
            {
              AlipayApplication.getInstance().getMicroApplicationContext().startActivity(this.f, new Intent("android.intent.action.VIEW", Uri.parse(str7)));
              return;
            }
            catch (Exception localException2)
            {
              return;
            }
          if (!NetworkUtils.isNetworkAvailable(this.a))
          {
            SimpleToast.makeToast(this.a, R.string.alipass_nonetwork_toast, 0).show();
            return;
          }
        }
        while ((str7 == null) || (str7.trim().length() <= 0));
        if ((!str7.startsWith("http://")) && (!str7.startsWith("https://")))
          str7 = "http://" + str7;
        Bundle localBundle2 = new Bundle();
        localBundle2.putString("u", str7);
        localBundle2.putBoolean("st", true);
        localBundle2.putBoolean("sb", false);
        ((H5Service)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(H5Service.class.getName())).startWebActivity(this.f, localBundle2);
        return;
        if (this.b.equalsIgnoreCase("app"))
        {
          String str3 = this.c;
          String str4 = this.d;
          String str5 = this.e;
          Intent localIntent1 = this.a.getPackageManager().getLaunchIntentForPackage(str3);
          if (localIntent1 == null)
          {
            ai.d(this.a, new b(this, str5));
            return;
          }
          if (str4 == null);
          for (String str6 = ""; str6 != null; str6 = Uri.parse(str4).getScheme())
            try
            {
              if (str6.length() <= 0)
                break;
              AlipayApplication.getInstance().getMicroApplicationContext().startActivity(this.f, new Intent("android.intent.action.VIEW", Uri.parse(str4)));
              return;
            }
            catch (ActivityNotFoundException localActivityNotFoundException1)
            {
              a.class.getSimpleName();
              localActivityNotFoundException1.getMessage();
              try
              {
                AlipayApplication.getInstance().getMicroApplicationContext().startActivity(this.f, localIntent1);
                return;
              }
              catch (Exception localException1)
              {
                a.class.getSimpleName();
                localException1.getMessage();
                return;
              }
            }
          AlipayApplication.getInstance().getMicroApplicationContext().startActivity(this.f, localIntent1);
          return;
        }
        if (this.b.equalsIgnoreCase("wave"))
        {
          Bundle localBundle1;
          if (!this.j)
          {
            localBundle1 = new Bundle();
            localBundle1.putString("is_verify", "true");
            localBundle1.putString("wave_code", this.c);
          }
          try
          {
            this.f.getMicroApplicationContext().startApp("20000030", "20000045", localBundle1);
            this.j = true;
            this.k.removeMessages(2001);
            this.k.sendEmptyMessageDelayed(2001, 1000L);
            return;
          }
          catch (AppLoadException localAppLoadException)
          {
            while (true)
              localAppLoadException.printStackTrace();
          }
        }
      }
      while (!this.b.equalsIgnoreCase("app_plat"));
      String str1 = this.c;
      String str2 = this.e;
      if (this.a.getPackageManager().getLaunchIntentForPackage(str1) == null)
      {
        ai.d(this.a, new e(this, str2));
        return;
      }
      localAppManageService = (AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName());
    }
    while ((localAppManageService == null) || (this.g == null));
    localAppManageService.authAndLaunch(this.g, this.c, this.h, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.a
 * JD-Core Version:    0.6.2
 */