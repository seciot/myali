package com.alipay.mobile.quinox.splash;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public final class a
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;

  public a(Context paramContext)
  {
    File localFile = paramContext.getFilesDir();
    if ((localFile == null) || (!localFile.exists()))
      localFile.mkdirs();
    this.a = (paramContext.getFilesDir().getAbsolutePath() + "/apps/");
  }

  private static int a(String paramString1, String paramString2, String paramString3)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String str = localSimpleDateFormat.format(new Date(System.currentTimeMillis()));
    try
    {
      Date localDate1 = localSimpleDateFormat.parse(paramString1);
      Date localDate2 = localSimpleDateFormat.parse(paramString2);
      Date localDate3 = localSimpleDateFormat.parse(str);
      if (localDate2.compareTo(localDate3) < 0)
      {
        if (paramString3.equals("delay"))
          return 1;
      }
      else
      {
        int i = localDate1.compareTo(localDate3);
        if (i <= 0)
          return 2;
      }
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
    }
    return 0;
  }

  private b a(File paramFile, String paramString)
  {
    if (paramFile == null)
      return null;
    Document localDocument = a(paramFile);
    this.b = a(localDocument, "starttime");
    this.c = a(localDocument, "endtime");
    this.d = a(localDocument, "status");
    this.e = a(localDocument, "entry");
    this.f = a(localDocument, "showtime");
    this.g = a(localDocument, "preview");
    this.h = a(localDocument, "showpicture");
    int i = a(this.b, this.c, this.d);
    return new b(this, paramString, this.b, this.c, this.d, this.e, this.f, i, this.g, this.h);
  }

  private File a(String paramString)
  {
    File localFile = new File(this.a + paramString);
    if (localFile.exists())
      return localFile;
    return null;
  }

  private static String a(Document paramDocument, String paramString)
  {
    try
    {
      String str = ((Element)paramDocument.getDocumentElement().getElementsByTagName(paramString).item(0)).getFirstChild().getNodeValue();
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private static Document a(File paramFile)
  {
    if (paramFile == null)
      return null;
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    try
    {
      Document localDocument = localDocumentBuilderFactory.newDocumentBuilder().parse(new File(paramFile.getPath() + "/Manifest.xml"));
      return localDocument;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (SAXException localSAXException)
    {
      return null;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
    }
    return null;
  }

  private static long b(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    try
    {
      long l = localSimpleDateFormat.parse(paramString).getTime();
      return l;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
    }
    return 0L;
  }

  public final String a()
  {
    return this.a;
  }

  public final b b()
  {
    b[] arrayOfb = new b[2];
    arrayOfb[0] = a(a("09999970"), "09999970");
    arrayOfb[1] = a(a("09999971"), "09999971");
    if ((arrayOfb[0] != null) || (arrayOfb[1] != null))
    {
      if ((arrayOfb[0] == null) || (arrayOfb[1] == null))
        break label193;
      if (arrayOfb[0].i != arrayOfb[1].i)
        break label170;
      switch (arrayOfb[0].i)
      {
      case 0:
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      return null;
      if (b(arrayOfb[0].c) > b(arrayOfb[1].c))
        return arrayOfb[0];
      return arrayOfb[1];
      if (b(arrayOfb[0].b) > b(arrayOfb[1].b))
        return arrayOfb[0];
      return arrayOfb[1];
      label170: if (arrayOfb[0].i > arrayOfb[1].i)
        return arrayOfb[0];
      return arrayOfb[1];
      label193: int i = arrayOfb.length;
      for (int j = 0; j < i; j++)
      {
        b localb = arrayOfb[j];
        if ((localb != null) && (localb.i != 0))
          return localb;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.splash.a
 * JD-Core Version:    0.6.2
 */