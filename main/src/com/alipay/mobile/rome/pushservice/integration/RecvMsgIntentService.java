package com.alipay.mobile.rome.pushservice.integration;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.alipay.mobile.rome.pushservice.adapter.a;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

public class RecvMsgIntentService extends IntentService
{
  public static final String a = RecvMsgIntentService.class.getSimpleName();
  private String b = "";
  private String c = "";

  public RecvMsgIntentService()
  {
    super("RecvMsgIntentService");
  }

  private Uri a()
  {
    Uri localUri1;
    if ((this.b != null) && (this.b.length() > 0))
    {
      new StringBuilder("checkSoundDataTunnel mSndGroup=").append(this.c).append(", mSndFile=").append(this.b).toString();
      new StringBuilder("checkSoundDataTunnel soundResDir=").append("").toString();
      if ("".length() <= 0)
        break label229;
      localUri1 = Uri.parse("");
      new StringBuilder("checkSoundDataTunnel soundUri=").append(localUri1).toString();
    }
    while (localUri1 == null)
    {
      String str = "";
      try
      {
        int i = this.b.lastIndexOf(".");
        if (i > 0)
          str = this.b.substring(0, i);
        if ((str == null) || (str.length() == 0))
          str = this.b;
        localUri1 = Uri.parse("android.resource://" + getPackageName() + File.separatorChar + "raw" + File.separatorChar + str);
        boolean bool = a(localUri1);
        if (!bool)
        {
          return null;
          label229: localUri1 = null;
        }
      }
      catch (Exception localException)
      {
        Uri localUri2 = localUri1;
        localException.printStackTrace();
        return localUri2;
      }
    }
    return localUri1;
  }

  private static void a(Context paramContext, Bundle paramBundle)
  {
    Intent localIntent = new Intent("alipayclient.action.SHOW_MESSAGE");
    localIntent.setClass(paramContext, PushDialogActivity.class);
    localIntent.putExtras(paramBundle);
    localIntent.addFlags(268435456);
    localIntent.addFlags(536870912);
    paramContext.startActivity(localIntent);
  }

  private void a(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("push_msg_key");
    String str2 = paramBundle.getString("push_msg_data");
    new StringBuilder("transtoMsg push_msg_data:").append(str2.toString()).toString();
    new a(this).b(str1, str2);
  }

  private void a(String paramString)
  {
    Object localObject1 = "";
    Object localObject2 = "";
    new StringBuilder("getSoundProp sound:").append(paramString).toString();
    String[] arrayOfString = paramString.split("&");
    int i = 0;
    if (i < arrayOfString.length)
    {
      int j = arrayOfString[i].indexOf("=");
      Object localObject3;
      if (j > 0)
      {
        String str = arrayOfString[i].substring(0, j);
        localObject3 = arrayOfString[i].substring(j + 1);
        new StringBuilder("getSoundProp i=").append(i).append(", index=").append(j).append(", key=").append(str).append(", value=").append((String)localObject3).toString();
        if ("file".equalsIgnoreCase(str))
          localObject2 = localObject3;
        if (!"group".equalsIgnoreCase(str))
          break label196;
      }
      while (true)
      {
        i++;
        localObject1 = localObject3;
        break;
        new StringBuilder("getSoundProp failed. i=").append(i).toString();
        label196: localObject3 = localObject1;
      }
    }
    this.b = ((String)localObject2);
    this.c = ((String)localObject1);
    new StringBuilder("getSoundProp mSndFile=").append(this.b).append(", mSndGroup=").append(this.c).toString();
  }

  private boolean a(Uri paramUri)
  {
    boolean bool = false;
    InputStream localInputStream = null;
    new StringBuilder("checkSoundRes sound:").append(paramUri.toString()).toString();
    try
    {
      localInputStream = getContentResolver().openInputStream(paramUri);
      while (true)
      {
        if ((localInputStream != null) || (localInputStream != null));
        try
        {
          localInputStream.close();
          return bool;
          bool = true;
        }
        catch (IOException localIOException3)
        {
          localIOException3.printStackTrace();
          return bool;
        }
      }
    }
    catch (Exception localException)
    {
      do
      {
        localException.printStackTrace();
        bool = false;
      }
      while (localInputStream == null);
      try
      {
        localInputStream.close();
        return false;
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
        return false;
      }
    }
    finally
    {
      if (localInputStream == null);
    }
    try
    {
      localInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        localIOException1.printStackTrace();
    }
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    Context localContext = getApplicationContext();
    String str1 = paramIntent.getAction();
    new StringBuilder("onHandleIntent: action = ").append(str1).toString();
    if (str1.equals(getPackageName() + ".push.action.REGISTRATION_ID"))
    {
      String str10 = paramIntent.getStringExtra("push_gerister_token");
      new StringBuilder("onRegister: registrationId = ").append(str10).toString();
      return;
    }
    Bundle localBundle;
    String str2;
    if (str1.equals(getPackageName() + ".push.action.MESSAGE_RECEIVED"))
    {
      localBundle = paramIntent.getExtras();
      str2 = localBundle.getString("push_show_style");
      if ((str2 == null) || (str2.length() <= 0))
        break label940;
    }
    label905: label920: label940: for (int i = Integer.valueOf(str2).intValue(); ; i = 0)
    {
      new StringBuilder("onMessage style:").append(i).toString();
      String str3;
      String str4;
      String str6;
      String str7;
      Notification localNotification;
      switch (i)
      {
      case 2:
      case 3:
      default:
        str3 = localBundle.getString("push_show_title");
        str4 = localBundle.getString("push_show_text");
        String str5 = localBundle.getString("push_show_sound");
        str6 = localBundle.getString("push_msg_key");
        str7 = localBundle.getString("push_msg_data");
        new StringBuilder("onMessage msgShowTitle:").append(str3).append(", msgShowText:").append(str4).append(", msgId:").append(str6).append(", msgData:").append(str7).toString();
        localNotification = new Notification();
        localNotification.icon = localContext.getApplicationInfo().icon;
        localNotification.flags = (0x10 | localNotification.flags);
        localNotification.when = System.currentTimeMillis();
        int j = Integer.valueOf("8").intValue();
        int k = Integer.valueOf("22").intValue();
        Date localDate1 = new Date();
        int m = Integer.valueOf(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(localDate1).substring(11, 13)).intValue();
        int n = 0;
        if (m < k)
        {
          n = 0;
          if (m >= j)
            n = 1;
        }
        if (n != 0)
        {
          localNotification.defaults = (0x2 | localNotification.defaults);
          localNotification.defaults = (0x4 | localNotification.defaults);
          if ((str5 == null) || (str5.length() <= 0))
            break label920;
          a(str5);
          Uri localUri = a();
          if (localUri == null)
            break label905;
          localNotification.sound = localUri;
        }
        break;
      case 1:
      case 4:
      case 5:
      case 6:
      }
      while (true)
      {
        NotificationManager localNotificationManager = (NotificationManager)localContext.getSystemService("notification");
        localNotification.tickerText = str4;
        Intent localIntent = new Intent();
        localIntent.setClass(localContext, PushDistributerService.class);
        localIntent.putExtra("push_key", str6);
        localIntent.putExtra("push_data", str7);
        localIntent.setAction(Long.toString(System.currentTimeMillis()));
        try
        {
          String str8 = getPackageName();
          int i1 = ((Integer)Class.forName(str8 + ".R$layout").getField("alipay_push_notification").get(null)).intValue();
          RemoteViews localRemoteViews = new RemoteViews(localContext.getPackageName(), i1);
          Class localClass = Class.forName(str8 + ".R$id");
          localRemoteViews.setImageViewResource(((Integer)localClass.getField("push_app_image").get(null)).intValue(), localContext.getApplicationInfo().icon);
          localRemoteViews.setTextViewText(((Integer)localClass.getField("push_msg_title").get(null)).intValue(), str3);
          localRemoteViews.setTextViewText(((Integer)localClass.getField("push_msg_body").get(null)).intValue(), str4);
          Date localDate2 = new Date();
          String str9 = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(localDate2);
          localRemoteViews.setTextViewText(((Integer)localClass.getField("push_msg_time").get(null)).intValue(), str9);
          localNotification.contentView = localRemoteViews;
          localNotification.contentIntent = PendingIntent.getService(localContext, 0, localIntent, 134217728);
          localNotificationManager.notify(new Random(System.currentTimeMillis()).nextInt(), localNotification);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        a(localContext, localBundle);
        return;
        a(localBundle);
        return;
        a(localBundle);
        a(localContext, localBundle);
        return;
        a(localBundle);
        break;
        localNotification.defaults = (0x1 | localNotification.defaults);
        continue;
        localNotification.defaults = (0x1 | localNotification.defaults);
      }
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.integration.RecvMsgIntentService
 * JD-Core Version:    0.6.2
 */