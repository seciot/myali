package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.alipay.mobile.appstoreapp.security.CertHandler;
import com.alipay.mobile.common.helper.ZipHelper;
import com.alipay.mobile.common.utils.BundleUtil;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;
import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import java.io.File;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public abstract class XmlApp extends App
{
  private String a = context.getFilesDir().getAbsolutePath() + "/apps/";
  private boolean b = false;

  private void a()
  {
    String str = getDownloadUrl();
    if (str == null)
      return;
    if ((str.startsWith("http:")) || (str.startsWith("https:")))
    {
      ExternalDownloadManager localExternalDownloadManager = (ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName());
      DownloadRequest localDownloadRequest = new DownloadRequest();
      localDownloadRequest.setAppId(getAppId());
      localDownloadRequest.setDescription(getAppDesc());
      localDownloadRequest.setTitle(getAppName());
      localDownloadRequest.setDownloadUrl(str);
      localDownloadRequest.setFileName(getAppName() + "-" + getAppVersion() + ".amr");
      localDownloadRequest.setShowRunningNotification(false);
      localExternalDownloadManager.addDownload(localDownloadRequest, this);
      return;
    }
    if (str.startsWith("file:"))
    {
      installApp(new String[] { str });
      return;
    }
    if (str.endsWith("amr"))
    {
      a("apps_preInstall" + File.separator + str);
      return;
    }
    AlipayApplication.getInstance().getMicroApplicationContext().Toast(getAppName() + " 下载失败", 0);
  }

  private void a(File paramFile)
  {
    if ((paramFile == null) || (!paramFile.exists()))
      return;
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        a(arrayOfFile[j]);
    }
    paramFile.delete();
  }

  // ERROR //
  private boolean a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 21	com/alipay/mobile/framework/service/ext/openplatform/apps/XmlApp:context	Landroid/content/Context;
    //   5: invokevirtual 172	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   8: aload_1
    //   9: invokevirtual 178	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   12: astore 8
    //   14: aload 8
    //   16: astore_2
    //   17: aload_2
    //   18: new 16	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 17	java/lang/StringBuilder:<init>	()V
    //   25: aload_0
    //   26: getfield 44	com/alipay/mobile/framework/service/ext/openplatform/apps/XmlApp:a	Ljava/lang/String;
    //   29: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: invokevirtual 86	com/alipay/mobile/framework/service/ext/openplatform/apps/XmlApp:getAppId	()Ljava/lang/String;
    //   36: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc 180
    //   41: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 186	com/alipay/mobile/common/helper/ZipHelper:unZip	(Ljava/io/InputStream;Ljava/lang/String;)Z
    //   50: ifne +61 -> 111
    //   53: new 168	java/lang/Exception
    //   56: dup
    //   57: invokespecial 187	java/lang/Exception:<init>	()V
    //   60: athrow
    //   61: astore 9
    //   63: aload_2
    //   64: astore 4
    //   66: new 16	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 17	java/lang/StringBuilder:<init>	()V
    //   73: aload_0
    //   74: getfield 44	com/alipay/mobile/framework/service/ext/openplatform/apps/XmlApp:a	Ljava/lang/String;
    //   77: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: aload_0
    //   81: invokevirtual 86	com/alipay/mobile/framework/service/ext/openplatform/apps/XmlApp:getAppId	()Ljava/lang/String;
    //   84: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: ldc 180
    //   89: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: invokestatic 191	com/alipay/mobile/common/helper/FileHelper:delete	(Ljava/lang/String;)Z
    //   98: pop
    //   99: aload_0
    //   100: iconst_0
    //   101: invokevirtual 194	com/alipay/mobile/framework/service/ext/openplatform/apps/XmlApp:onInstallComplete	(Z)V
    //   104: aload 4
    //   106: invokestatic 200	com/alipay/mobile/common/utils/IOUtil:closeStream	(Ljava/io/Closeable;)V
    //   109: iconst_0
    //   110: ireturn
    //   111: aload_0
    //   112: iconst_1
    //   113: invokevirtual 194	com/alipay/mobile/framework/service/ext/openplatform/apps/XmlApp:onInstallComplete	(Z)V
    //   116: aload_2
    //   117: invokestatic 200	com/alipay/mobile/common/utils/IOUtil:closeStream	(Ljava/io/Closeable;)V
    //   120: iconst_1
    //   121: ireturn
    //   122: astore 6
    //   124: aload_2
    //   125: invokestatic 200	com/alipay/mobile/common/utils/IOUtil:closeStream	(Ljava/io/Closeable;)V
    //   128: aload 6
    //   130: athrow
    //   131: astore 5
    //   133: aload 4
    //   135: astore_2
    //   136: aload 5
    //   138: astore 6
    //   140: goto -16 -> 124
    //   143: astore_3
    //   144: aconst_null
    //   145: astore 4
    //   147: goto -81 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   17	61	61	java/lang/Exception
    //   111	116	61	java/lang/Exception
    //   2	14	122	finally
    //   17	61	122	finally
    //   111	116	122	finally
    //   66	104	131	finally
    //   2	14	143	java/lang/Exception
  }

  private String b(String paramString)
  {
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    try
    {
      String str = ((Element)localDocumentBuilderFactory.newDocumentBuilder().parse(CertHandler.a(this.a + getAppId(), "Manifest.xml")).getDocumentElement().getElementsByTagName(paramString).item(0)).getFirstChild().getNodeValue();
      return str;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      new StringBuilder("getAppAttribute error").append(getAppId()).toString();
      return "";
    }
    catch (IOException localIOException)
    {
      new StringBuilder("getAppAttribute error").append(getAppId()).toString();
      return "";
    }
    catch (SAXException localSAXException)
    {
      new StringBuilder("getAppAttribute error").append(getAppId()).toString();
      return "";
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      new StringBuilder("getXMLAppVerison error,").append(getAppId()).toString();
    }
    return "";
  }

  private void b(File paramFile)
  {
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        b(arrayOfFile[j]);
    }
    paramFile.delete();
  }

  public void autoUpgradeApp()
  {
    a();
  }

  public final void downloadApp()
  {
    a();
  }

  public String getInstalledPath()
  {
    return this.a + getAppId() + "/";
  }

  public final void installApp(String[] paramArrayOfString)
  {
    this.b = false;
    if (paramArrayOfString != null);
    while (true)
    {
      try
      {
        if (paramArrayOfString.length > 0)
        {
          str = paramArrayOfString[0];
          if (str == null)
            break;
          File localFile1 = new File(str);
          if (!localFile1.exists())
            return;
          File localFile2 = new File(this.a + getAppId() + "/");
          if (localFile2.exists())
          {
            boolean bool2 = localFile2.renameTo(new File(this.a + getAppId() + "temp/"));
            bool1 = bool2;
            try
            {
              if (ZipHelper.unZip(str, this.a + getAppId() + "/"))
                continue;
              throw new Exception();
            }
            catch (Exception localException2)
            {
            }
            a(new File(this.a + getAppId() + "/"));
            if (bool1)
              new File(this.a + getAppId() + "temp/").renameTo(new File(this.a + getAppId() + "/"));
            onInstallComplete(false);
            return;
            a(new File(this.a + getAppId() + "temp/"));
            localFile1.delete();
            onInstallComplete(true);
            return;
          }
        }
      }
      catch (Exception localException1)
      {
        boolean bool1 = false;
        continue;
        bool1 = false;
        continue;
      }
      String str = null;
    }
  }

  public boolean isDownloading()
  {
    if ((getDownloadUrl() == null) || ("".equals(getDownloadUrl())))
      return false;
    return ((ExternalDownloadManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ExternalDownloadManager.class.getName())).isDownloading(getDownloadUrl());
  }

  public boolean isInstallBySystem()
  {
    return false;
  }

  public boolean isInstalled()
  {
    String[] arrayOfString = new File(this.a).list();
    if (arrayOfString == null);
    while (true)
    {
      return false;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        if (arrayOfString[j].equalsIgnoreCase(getAppId()))
          return true;
    }
  }

  public boolean isNeedUpgrade()
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() < getMinSdkVersion());
    String str;
    do
    {
      do
        return false;
      while ((isOffline()) || (!isInstalled()));
      str = b("version");
      if ((str == null) || (str.length() == 0))
        return true;
    }
    while (AppUtils.compareVersion(getAppVersion(), str) <= 0);
    return true;
  }

  public boolean isPreInstall()
  {
    return this.b;
  }

  public void launchAppWithAuthCode(String paramString1, String paramString2, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    if (paramBundle != null)
      localBundle.putString("param", BundleUtil.deserialBundle(paramBundle));
    try
    {
      AlipayApplication.getInstance().getMicroApplicationContext().startApp("20000001", getAppId(), localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getMessage();
    }
  }

  public boolean preInstallApp()
  {
    this.b = true;
    return a("apps_preInstall" + File.separator + getAppId() + ".amr");
  }

  public final void uninstallApp()
  {
    File localFile1 = new File(this.a + getAppId());
    if ((localFile1.exists()) && (localFile1.isDirectory()))
      for (File localFile2 : localFile1.listFiles())
        if (!localFile2.getName().equals("cache"))
          b(localFile2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.XmlApp
 * JD-Core Version:    0.6.2
 */