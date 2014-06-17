package com.alipay.mobile.framework.service.ext.appentry;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.framework.AlipayApplication;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class AppEntryConfigServiceImpl extends AppEntryConfigService
{
  private List<WidgetItemInfo> a;

  private static List<WidgetItemInfo> a()
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    int i = localAlipayApplication.getResources().getIdentifier("widgetgroupcontainer", "raw", "com.alipay.android.phone.businesscommon.prefrence");
    if (i <= 0)
      return null;
    ArrayList localArrayList = new ArrayList();
    InputStream localInputStream = localAlipayApplication.getResources().openRawResource(i);
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    try
    {
      NodeList localNodeList1 = localDocumentBuilderFactory.newDocumentBuilder().parse(localInputStream).getElementsByTagName("widgetGroupContainer");
      for (int j = 0; j < localNodeList1.getLength(); j++)
      {
        Element localElement1 = (Element)localNodeList1.item(j);
        String str = localElement1.getAttribute("id");
        NodeList localNodeList2 = localElement1.getElementsByTagName("widgetItem");
        for (int k = 0; k < localNodeList2.getLength(); k++)
        {
          Element localElement2 = (Element)localNodeList2.item(k);
          WidgetItemInfo localWidgetItemInfo = new WidgetItemInfo();
          localWidgetItemInfo.setContainerId(str);
          localWidgetItemInfo.setAction(localElement2.getAttribute("action"));
          localWidgetItemInfo.setAppId(localElement2.getAttribute("appId"));
          localWidgetItemInfo.setAppType(localElement2.getAttribute("appType"));
          localWidgetItemInfo.setIndex(localElement2.getAttribute("index"));
          localWidgetItemInfo.setGroup(localElement2.getAttribute("group"));
          localWidgetItemInfo.setName(localElement2.getAttribute("name"));
          localWidgetItemInfo.setIcon(localElement2.getAttribute("icon"));
          localWidgetItemInfo.setDisc(localElement2.getAttribute("desc"));
          localWidgetItemInfo.setTips(localElement2.getAttribute("tips"));
          localWidgetItemInfo.setWidgetId(localElement2.getAttribute("widgetId"));
          new StringBuilder("getWidgetInfoListFromXML:").append(localWidgetItemInfo.toString()).toString();
          localArrayList.add(localWidgetItemInfo);
        }
      }
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      localParserConfigurationException.printStackTrace();
      return localArrayList;
    }
    catch (SAXException localSAXException)
    {
      while (true)
        localSAXException.printStackTrace();
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public List<WidgetItemInfo> getWidgetInfoListbyContainerId(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    if (this.a == null)
      this.a = a();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      WidgetItemInfo localWidgetItemInfo = (WidgetItemInfo)localIterator.next();
      if (paramString.equals(localWidgetItemInfo.getContainerId()))
        localArrayList.add(localWidgetItemInfo);
    }
    new StringBuilder("getWidgetInfoListbyContainerId:").append(localArrayList).toString();
    return localArrayList;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.appentry.AppEntryConfigServiceImpl
 * JD-Core Version:    0.6.2
 */