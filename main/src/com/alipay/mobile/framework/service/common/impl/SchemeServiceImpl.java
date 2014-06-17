package com.alipay.mobile.framework.service.common.impl;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.browser.HtmlActivity;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.ActivityHelper;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.legacy.LegacyService;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class SchemeServiceImpl extends SchemeService
{
  public static final String CLIENTVERSION = "clientVersion";
  public static final String PARAM_TITLE = "title";
  public static final String PARAM_URL = "url";
  public static final String VERSION = "v";
  private Map<String, String> a = new HashMap();
  private String b;
  private String c;

  private static Uri a(Uri paramUri)
  {
    if (TextUtils.isEmpty(paramUri.getPath()))
      paramUri = Uri.parse(Uri.decode(paramUri.toString()));
    return paramUri;
  }

  private static boolean a(String paramString)
  {
    if (paramString == null)
      return true;
    String str1 = AppInfo.getInstance().getmProductVersion();
    String str2 = paramString.substring(1, -1 + paramString.length());
    if (str2.contains("-"))
    {
      int k = str2.indexOf("-");
      String str3 = str2.substring(0, k);
      if (str3.length() <= 0)
        str3 = str1;
      String str4 = str2.substring(k + 1);
      if (str4.length() <= 0)
        str4 = str1;
      if ((str1.compareToIgnoreCase(str3) >= 0) && (str1.compareToIgnoreCase(str4) <= 0))
        return true;
    }
    else if (str2.contains(","))
    {
      String[] arrayOfString = str2.split(",");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        if (arrayOfString[j].equalsIgnoreCase(str1))
          return true;
    }
    return false;
  }

  private static Bundle b(Uri paramUri)
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = c(paramUri).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localBundle.putString(str, paramUri.getQueryParameter(str));
    }
    return localBundle;
  }

  private static Set<String> c(Uri paramUri)
  {
    String str = paramUri.getEncodedQuery();
    if (str == null)
      return Collections.emptySet();
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int i = 0;
    do
    {
      int j = str.indexOf('&', i);
      if (j == -1)
        j = str.length();
      int k = str.indexOf('=', i);
      if ((k > j) || (k == -1))
        k = j;
      localLinkedHashSet.add(Uri.decode(str.substring(i, k)));
      i = j + 1;
    }
    while (i < str.length());
    return Collections.unmodifiableSet(localLinkedHashSet);
  }

  public void cleanTagId()
  {
    this.a.clear();
    this.b = null;
  }

  public void extractTagId(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.getScheme() == null) || ((!paramUri.getScheme().equalsIgnoreCase("alipaywifi")) && (!paramUri.getScheme().equalsIgnoreCase("alipays")) && (!paramUri.getScheme().equalsIgnoreCase("alipayqr"))));
    String str1;
    String str2;
    do
    {
      return;
      Uri localUri = a(paramUri);
      str1 = localUri.getQueryParameter("tagid");
      str2 = getAppId(localUri);
    }
    while ((str1 == null) || ("".equals(str1)) || (str2 == null));
    this.a.put(str2, str1);
    this.b = str1;
  }

  public String getAppId(Uri paramUri)
  {
    String str = paramUri.getQueryParameter("appId");
    if ((str != null) && (!"".equals(str)))
      return str;
    return paramUri.getQueryParameter("saId");
  }

  public String getLastScheme()
  {
    return this.c;
  }

  public String getLastTagId()
  {
    if (this.b == null)
      return "";
    return this.b;
  }

  public String getParamsTitle(Uri paramUri)
  {
    return paramUri.getQueryParameter("title");
  }

  public String getParamsUrl(Uri paramUri)
  {
    return paramUri.getQueryParameter("url");
  }

  public String getTagByAppId(String paramString)
  {
    if ((String)this.a.get(paramString) == null)
      return "";
    return this.b;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public int process(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.getScheme() == null) || ((!paramUri.getScheme().equalsIgnoreCase("alipaywifi")) && (!paramUri.getScheme().equalsIgnoreCase("alipays")) && (!paramUri.getScheme().equalsIgnoreCase("alipayqr"))))
      return 1;
    this.c = paramUri.toString();
    AlipayApplication localAlipayApplication = getMicroApplicationContext().getApplicationContext();
    Uri localUri1 = a(paramUri);
    if (StringUtils.isEmpty(localUri1.getPath()))
      return 1;
    String str1 = localUri1.getPath().substring(1);
    String str2 = getAppId(localUri1);
    if (("09999985".equals(str2)) || ("09999982".equals(str2)))
      str2 = "20000003";
    if ((str2 != null) && ((str2.equals("09999995")) || (str2.equals("09999996")) || (str2.equals("09999997")) || (str2.equals("09999998"))));
    for (String str3 = "09999976"; ; str3 = str2)
    {
      String str4 = localUri1.getQueryParameter("sourceId");
      extractTagId(localUri1);
      if ((str1.equalsIgnoreCase("startapp")) || (str1.equalsIgnoreCase("addalipass")) || (str1.equals("home")))
      {
        String str5 = localUri1.getQueryParameter("clientVersion");
        if ((str5 == null) || ("".equals(str5)))
          str5 = localUri1.getQueryParameter("v");
        if (str5 == null);
        for (String str6 = localUri1.getQueryParameter("version"); str3 == null; str6 = "\"" + str5 + "-\"")
          return 2;
        if (!a(str6))
        {
          MicroApplicationContext localMicroApplicationContext2 = getMicroApplicationContext().getApplicationContext().getMicroApplicationContext();
          if (localMicroApplicationContext2 != null)
          {
            WeakReference localWeakReference1 = localMicroApplicationContext2.getTopActivity();
            if ((localWeakReference1 != null) && (localWeakReference1.get() != null))
            {
              Activity localActivity1 = (Activity)localWeakReference1.get();
              new ActivityHelper(localActivity1).alert("", localActivity1.getText(R.string.updateInfo), localActivity1.getText(R.string.cancleUpdate), null, localActivity1.getText(R.string.confirmUpdate), new SchemeServiceImpl.1(this, localActivity1), Boolean.valueOf(true));
            }
          }
          return 3;
        }
        try
        {
          MicroApplicationContext localMicroApplicationContext1 = getMicroApplicationContext();
          if ("touchpal".equals(str4));
          while (true)
          {
            localMicroApplicationContext1.startApp(str4, str3, b(localUri1));
            return 0;
            localUri1 = paramUri;
          }
        }
        catch (AppLoadException localAppLoadException)
        {
          return 4;
        }
      }
      if (str1.equalsIgnoreCase("openurl"))
        if (localUri1 == null)
          break label671;
      label671: for (Uri localUri2 = Uri.parse(Uri.decode(paramUri.toString())); ; localUri2 = localUri1)
      {
        String str7 = getParamsUrl(localUri2);
        String str8 = getParamsTitle(localUri2);
        if ((str7 != null) && (str7.length() != 0) && (str8 != null) && (str7.length() != 0))
        {
          WeakReference localWeakReference2 = localAlipayApplication.getMicroApplicationContext().getTopActivity();
          if (localWeakReference2 != null)
          {
            Activity localActivity2 = (Activity)localWeakReference2.get();
            Intent localIntent = new Intent();
            localIntent.putExtra("url", str7);
            localIntent.putExtra("title", str8);
            localIntent.setClass(localActivity2, HtmlActivity.class);
            localActivity2.startActivity(localIntent);
          }
        }
        while (true)
        {
          return 0;
          ((LegacyService)localAlipayApplication.getMicroApplicationContext().findServiceByInterface(LegacyService.class.getName())).sendMessage(str4, str3, str1, localUri1.getQuery());
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.SchemeServiceImpl
 * JD-Core Version:    0.6.2
 */