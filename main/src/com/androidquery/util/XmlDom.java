package com.androidquery.util;

import android.util.Xml;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlSerializer;

public class XmlDom
{
  private Element a;

  public XmlDom(InputStream paramInputStream)
  {
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    try
    {
      this.a = localDocumentBuilderFactory.newDocumentBuilder().parse(paramInputStream).getDocumentElement();
      return;
    }
    catch (IOException localIOException)
    {
      throw new SAXException(localIOException);
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
    }
  }

  public XmlDom(String paramString)
  {
    this(paramString.getBytes());
  }

  public XmlDom(Element paramElement)
  {
    this.a = paramElement;
  }

  public XmlDom(byte[] paramArrayOfByte)
  {
    this(new ByteArrayInputStream(paramArrayOfByte));
  }

  private static XmlDom convert(Node paramNode, String paramString1, String paramString2, String paramString3)
  {
    if (paramNode.getNodeType() != 1);
    Element localElement;
    do
    {
      return null;
      localElement = (Element)paramNode;
    }
    while (((paramString1 != null) && (!paramString1.equals(localElement.getTagName()))) || ((paramString2 != null) && (!localElement.hasAttribute(paramString2))) || ((paramString3 != null) && (!paramString3.equals(localElement.getAttribute(paramString2)))));
    return new XmlDom(localElement);
  }

  private static List<XmlDom> convert(NodeList paramNodeList, String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; ; i++)
    {
      if (i >= paramNodeList.getLength())
        return localArrayList;
      XmlDom localXmlDom = convert(paramNodeList.item(i), paramString1, paramString2, paramString3);
      if (localXmlDom != null)
        localArrayList.add(localXmlDom);
    }
  }

  private String serialize(Element paramElement, int paramInt)
  {
    while (true)
    {
      try
      {
        XmlSerializer localXmlSerializer = Xml.newSerializer();
        StringWriter localStringWriter = new StringWriter();
        localXmlSerializer.setOutput(localStringWriter);
        localXmlSerializer.startDocument("utf-8", null);
        if (paramInt > 0)
        {
          char[] arrayOfChar = new char[paramInt];
          Arrays.fill(arrayOfChar, ' ');
          str1 = new String(arrayOfChar);
          serialize(this.a, localXmlSerializer, 0, str1);
          localXmlSerializer.endDocument();
          String str2 = localStringWriter.toString();
          return str2;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      String str1 = null;
    }
  }

  private void serialize(Element paramElement, XmlSerializer paramXmlSerializer, int paramInt, String paramString)
  {
    int i = 0;
    String str = paramElement.getTagName();
    writeSpace(paramXmlSerializer, paramInt, paramString);
    paramXmlSerializer.startTag("", str);
    NamedNodeMap localNamedNodeMap;
    if (paramElement.hasAttributes())
      localNamedNodeMap = paramElement.getAttributes();
    NodeList localNodeList;
    int j;
    for (int m = 0; ; m++)
    {
      if (m >= localNamedNodeMap.getLength())
      {
        if (paramElement.hasChildNodes())
        {
          localNodeList = paramElement.getChildNodes();
          j = 0;
          if (i < localNodeList.getLength())
            break;
          if (j > 0)
            writeSpace(paramXmlSerializer, paramInt, paramString);
        }
        paramXmlSerializer.endTag("", str);
        return;
      }
      Attr localAttr = (Attr)localNamedNodeMap.item(m);
      paramXmlSerializer.attribute("", localAttr.getName(), localAttr.getValue());
    }
    Node localNode = localNodeList.item(i);
    switch (localNode.getNodeType())
    {
    case 2:
    default:
    case 1:
    case 3:
    case 4:
    }
    while (true)
    {
      int k = j;
      while (true)
      {
        i++;
        j = k;
        break;
        serialize((Element)localNode, paramXmlSerializer, paramInt + 1, paramString);
        k = j + 1;
        continue;
        paramXmlSerializer.text(text(localNode));
        k = j;
      }
      paramXmlSerializer.cdsect(text(localNode));
    }
  }

  private String text(Node paramNode)
  {
    int i = paramNode.getNodeType();
    String str = null;
    switch (i)
    {
    default:
    case 3:
    case 4:
    }
    while (true)
    {
      if (str == null)
        str = "";
      return str;
      str = paramNode.getNodeValue();
      if (str != null)
      {
        str = str.trim();
        continue;
        str = paramNode.getNodeValue();
      }
    }
  }

  private void writeSpace(XmlSerializer paramXmlSerializer, int paramInt, String paramString)
  {
    if (paramString != null)
      paramXmlSerializer.text("\n");
    for (int i = 0; ; i++)
    {
      if (i >= paramInt)
        return;
      paramXmlSerializer.text(paramString);
    }
  }

  public String attr(String paramString)
  {
    return this.a.getAttribute(paramString);
  }

  public XmlDom child(String paramString)
  {
    return child(paramString, null, null);
  }

  public XmlDom child(String paramString1, String paramString2, String paramString3)
  {
    List localList = children(paramString1, paramString2, paramString3);
    if (localList.size() == 0)
      return null;
    return (XmlDom)localList.get(0);
  }

  public List<XmlDom> children(String paramString)
  {
    return children(paramString, null, null);
  }

  public List<XmlDom> children(String paramString1, String paramString2, String paramString3)
  {
    return convert(this.a.getChildNodes(), paramString1, paramString2, paramString3);
  }

  public Element getElement()
  {
    return this.a;
  }

  public XmlDom tag(String paramString)
  {
    NodeList localNodeList = this.a.getElementsByTagName(paramString);
    XmlDom localXmlDom = null;
    if (localNodeList != null)
    {
      int i = localNodeList.getLength();
      localXmlDom = null;
      if (i > 0)
        localXmlDom = new XmlDom((Element)localNodeList.item(0));
    }
    return localXmlDom;
  }

  public XmlDom tag(String paramString1, String paramString2, String paramString3)
  {
    List localList = tags(paramString1, paramString2, paramString3);
    if (localList.size() == 0)
      return null;
    return (XmlDom)localList.get(0);
  }

  public List<XmlDom> tags(String paramString)
  {
    return tags(paramString, null, null);
  }

  public List<XmlDom> tags(String paramString1, String paramString2, String paramString3)
  {
    return convert(this.a.getElementsByTagName(paramString1), null, paramString2, paramString3);
  }

  public String text()
  {
    int i = 0;
    NodeList localNodeList = this.a.getChildNodes();
    if (localNodeList.getLength() == 1)
      return localNodeList.item(0).getNodeValue();
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      if (i >= localNodeList.getLength())
        return localStringBuilder.toString();
      localStringBuilder.append(text(localNodeList.item(i)));
      i++;
    }
  }

  public String text(String paramString)
  {
    XmlDom localXmlDom = child(paramString);
    if (localXmlDom == null)
      return null;
    return localXmlDom.text();
  }

  public String toString()
  {
    return toString(0);
  }

  public String toString(int paramInt)
  {
    return serialize(this.a, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.XmlDom
 * JD-Core Version:    0.6.2
 */