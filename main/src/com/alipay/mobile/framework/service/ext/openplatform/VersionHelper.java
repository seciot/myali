package com.alipay.mobile.framework.service.ext.openplatform;

import com.alipay.mobile.appstoreapp.security.CertHandler;
import com.alipay.mobile.common.apkutil.ApkUtil;
import com.alipay.mobile.common.apkutil.AppInfoData;
import com.alipay.mobile.framework.AlipayApplication;
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

public class VersionHelper
{
  private static final String ANDROID_POSTFIX = ".apk";
  private static final String APP_PATH = "/apps/";
  private static final String INNER_POSTFIX = ".jar";
  private static final String MANIFEST_NAME = "Manifest.xml";
  private static final String TAG = "VersionHelper";

  private static String getAndroidAppVersion(String paramString)
  {
    String str1 = AlipayApplication.getInstance().getFilesDir().getAbsolutePath() + File.separator + "apps" + File.separator;
    String str2 = str1 + paramString + ".apk";
    AppInfoData localAppInfoData = ApkUtil.getApkFileInfo(AlipayApplication.getInstance(), str2);
    if ((localAppInfoData != null) && (localAppInfoData.getAppversion() != null))
      return localAppInfoData.getAppversion();
    return "0.0.0.0";
  }

  private static String getInnerAppVersion(String paramString)
  {
    String str1 = AlipayApplication.getInstance().getFilesDir().getAbsolutePath() + File.separator + "apps" + File.separator;
    String str2 = str1 + paramString + ".jar";
    AppInfoData localAppInfoData = ApkUtil.getApkFileInfo(AlipayApplication.getInstance(), str2);
    if ((localAppInfoData != null) && (localAppInfoData.getAppversion() != null))
      return localAppInfoData.getAppversion();
    return "0.0.0.0";
  }

  public static final String getPushPackageVersionByAppId(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString1 == null))
      return "0.0.0.0";
    AppInstallerTypeEnum localAppInstallerTypeEnum = AppInstallerTypeEnum.getEnum(paramString2);
    if (localAppInstallerTypeEnum == null)
      return "0.0.0.0";
    switch (b.a[localAppInstallerTypeEnum.ordinal()])
    {
    default:
      return "0.0.0.0";
    case 1:
      return "0.0.0.0";
    case 2:
      return getXMLAppVerison(paramString1);
    case 3:
      return "0.0.0.0";
    case 4:
      return getXMLAppVerison(paramString1);
    case 5:
      return getAndroidAppVersion(paramString1);
    case 6:
      return getInnerAppVersion(paramString1);
    case 7:
    }
    return getXMLAppVerison(paramString1);
  }

  private static String getXMLAppVerison(String paramString)
  {
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    String str1 = AlipayApplication.getInstance().getFilesDir().getAbsolutePath() + "/apps/";
    try
    {
      String str2 = ((Element)localDocumentBuilderFactory.newDocumentBuilder().parse(CertHandler.a(str1 + paramString, "Manifest.xml")).getDocumentElement().getElementsByTagName("version").item(0)).getFirstChild().getNodeValue();
      return str2;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      return "0.0.0.0";
    }
    catch (IOException localIOException)
    {
      return "0.0.0.0";
    }
    catch (SAXException localSAXException)
    {
      return "0.0.0.0";
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return "0.0.0.0";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.VersionHelper
 * JD-Core Version:    0.6.2
 */