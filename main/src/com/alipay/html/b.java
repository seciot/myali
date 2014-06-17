package com.alipay.html;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ParagraphStyle;
import android.text.style.QuoteSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.UIUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.HashMap;
import org.ccil.cowan.tagsoup.Parser;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

final class b
  implements ContentHandler
{
  private static final float[] a = { 1.5F, 1.4F, 1.3F, 1.2F, 1.1F, 1.0F };
  private static HashMap g = localHashMap;
  private String b;
  private XMLReader c;
  private SpannableStringBuilder d;
  private Html.ImageGetter e;
  private Html.TagHandler f;

  static
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("aqua", Integer.valueOf(65535));
    localHashMap.put("black", Integer.valueOf(0));
    localHashMap.put("blue", Integer.valueOf(255));
    localHashMap.put("fuchsia", Integer.valueOf(16711935));
    localHashMap.put("green", Integer.valueOf(32768));
    localHashMap.put("grey", Integer.valueOf(8421504));
    localHashMap.put("lime", Integer.valueOf(65280));
    localHashMap.put("maroon", Integer.valueOf(8388608));
    localHashMap.put("navy", Integer.valueOf(128));
    localHashMap.put("olive", Integer.valueOf(8421376));
    localHashMap.put("purple", Integer.valueOf(8388736));
    localHashMap.put("red", Integer.valueOf(16711680));
    localHashMap.put("silver", Integer.valueOf(12632256));
    localHashMap.put("teal", Integer.valueOf(32896));
    localHashMap.put("white", Integer.valueOf(16777215));
    localHashMap.put("yellow", Integer.valueOf(16776960));
  }

  public b(String paramString, Parser paramParser)
  {
    this.b = paramString;
    this.d = new SpannableStringBuilder();
    this.e = null;
    this.f = null;
    this.c = paramParser;
  }

  private static int a(String paramString)
  {
    Integer localInteger = (Integer)g.get(paramString.toLowerCase());
    if (localInteger != null)
      return localInteger.intValue();
    try
    {
      int i = XmlUtils.a(paramString);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return -1;
  }

  private static Object a(Spanned paramSpanned, Class paramClass)
  {
    Object[] arrayOfObject = paramSpanned.getSpans(0, paramSpanned.length(), paramClass);
    if (arrayOfObject.length == 0)
      return null;
    return arrayOfObject[(-1 + arrayOfObject.length)];
  }

  private static void a(SpannableStringBuilder paramSpannableStringBuilder)
  {
    int i = paramSpannableStringBuilder.length();
    if ((i > 0) && (paramSpannableStringBuilder.charAt(i - 1) == '\n'))
      if ((i < 2) || (paramSpannableStringBuilder.charAt(i - 2) != '\n'));
    while (i == 0)
    {
      return;
      paramSpannableStringBuilder.append("\n");
      return;
    }
    paramSpannableStringBuilder.append("\n\n");
  }

  private static void a(SpannableStringBuilder paramSpannableStringBuilder, Class paramClass, Object paramObject)
  {
    int i = paramSpannableStringBuilder.length();
    Object localObject = a(paramSpannableStringBuilder, paramClass);
    int j = paramSpannableStringBuilder.getSpanStart(localObject);
    paramSpannableStringBuilder.removeSpan(localObject);
    if (j != i)
      paramSpannableStringBuilder.setSpan(paramObject, j, i, 33);
  }

  private static void a(SpannableStringBuilder paramSpannableStringBuilder, Object paramObject)
  {
    int i = paramSpannableStringBuilder.length();
    paramSpannableStringBuilder.setSpan(paramObject, i, i, 17);
  }

  // ERROR //
  private static int b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: invokestatic 43	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   4: astore_1
    //   5: aload_0
    //   6: iconst_0
    //   7: bipush 254
    //   9: aload_0
    //   10: invokevirtual 171	java/lang/String:length	()I
    //   13: iadd
    //   14: invokevirtual 175	java/lang/String:substring	(II)Ljava/lang/String;
    //   17: astore 9
    //   19: aload 9
    //   21: astore 4
    //   23: aload 4
    //   25: invokestatic 181	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   28: ifne +13 -> 41
    //   31: aload 4
    //   33: invokestatic 184	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   36: astore 8
    //   38: aload 8
    //   40: astore_1
    //   41: aload_1
    //   42: invokevirtual 123	java/lang/Integer:intValue	()I
    //   45: ireturn
    //   46: astore_2
    //   47: aconst_null
    //   48: invokestatic 181	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   51: istore_3
    //   52: aconst_null
    //   53: astore 4
    //   55: iload_3
    //   56: ifne -33 -> 23
    //   59: aload_0
    //   60: invokestatic 184	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   63: astore 6
    //   65: aload 6
    //   67: astore_1
    //   68: aload_1
    //   69: invokevirtual 123	java/lang/Integer:intValue	()I
    //   72: ireturn
    //   73: astore 7
    //   75: aload 7
    //   77: invokevirtual 187	java/lang/NumberFormatException:printStackTrace	()V
    //   80: goto -39 -> 41
    //   83: astore 5
    //   85: goto -17 -> 68
    //
    // Exception table:
    //   from	to	target	type
    //   5	19	46	java/lang/Exception
    //   31	38	73	java/lang/NumberFormatException
    //   59	65	83	java/lang/NumberFormatException
  }

  private static void b(SpannableStringBuilder paramSpannableStringBuilder)
  {
    int i = paramSpannableStringBuilder.length();
    Object localObject = a(paramSpannableStringBuilder, g.class);
    int j = paramSpannableStringBuilder.getSpanStart(localObject);
    paramSpannableStringBuilder.removeSpan(localObject);
    while ((i > j) && (paramSpannableStringBuilder.charAt(i - 1) == '\n'))
      i--;
    if (j != i)
    {
      g localg = (g)localObject;
      paramSpannableStringBuilder.setSpan(new RelativeSizeSpan(a[g.a(localg)]), j, i, 33);
      paramSpannableStringBuilder.setSpan(new StyleSpan(1), j, i, 33);
    }
  }

  public final Spanned a()
  {
    int i = 0;
    this.c.setContentHandler(this);
    while (true)
    {
      Object[] arrayOfObject;
      int j;
      int k;
      try
      {
        this.c.parse(new InputSource(new StringReader(this.b)));
        arrayOfObject = this.d.getSpans(0, this.d.length(), ParagraphStyle.class);
        if (i >= arrayOfObject.length)
          break;
        j = this.d.getSpanStart(arrayOfObject[i]);
        k = this.d.getSpanEnd(arrayOfObject[i]);
        if ((k - 2 >= 0) && (this.d.charAt(k - 1) == '\n') && (this.d.charAt(k - 2) == '\n'))
          k--;
        if (k == j)
        {
          this.d.removeSpan(arrayOfObject[i]);
          i++;
          continue;
        }
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException(localIOException);
      }
      catch (SAXException localSAXException)
      {
        throw new RuntimeException(localSAXException);
      }
      this.d.setSpan(arrayOfObject[i], j, k, 51);
    }
    return this.d;
  }

  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < paramInt2)
    {
      char c1 = paramArrayOfChar[(i + paramInt1)];
      int j;
      int m;
      int k;
      if ((c1 == ' ') || (c1 == '\n'))
      {
        j = localStringBuilder.length();
        if (j == 0)
        {
          m = this.d.length();
          if (m == 0)
          {
            k = 10;
            label70: if ((k != 32) && (k != 10))
              localStringBuilder.append(' ');
          }
        }
      }
      while (true)
      {
        i++;
        break;
        k = this.d.charAt(m - 1);
        break label70;
        k = localStringBuilder.charAt(j - 1);
        break label70;
        localStringBuilder.append(c1);
      }
    }
    this.d.append(localStringBuilder);
  }

  public final void endDocument()
  {
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2.equalsIgnoreCase("br"))
      this.d.append("\n");
    label542: label585: 
    do
    {
      SpannableStringBuilder localSpannableStringBuilder1;
      int i;
      int j;
      h localh;
      do
      {
        Object localObject1;
        do
        {
          SpannableStringBuilder localSpannableStringBuilder2;
          int k;
          Object localObject2;
          int m;
          do
          {
            return;
            if (paramString2.equalsIgnoreCase("p"))
            {
              a(this.d);
              return;
            }
            if (paramString2.equalsIgnoreCase("div"))
            {
              a(this.d);
              return;
            }
            if (paramString2.equalsIgnoreCase("strong"))
            {
              a(this.d, e.class, new StyleSpan(1));
              return;
            }
            if (paramString2.equalsIgnoreCase("b"))
            {
              a(this.d, e.class, new StyleSpan(1));
              return;
            }
            if (paramString2.equalsIgnoreCase("em"))
            {
              a(this.d, i.class, new StyleSpan(2));
              return;
            }
            if (paramString2.equalsIgnoreCase("cite"))
            {
              a(this.d, i.class, new StyleSpan(2));
              return;
            }
            if (paramString2.equalsIgnoreCase("dfn"))
            {
              a(this.d, i.class, new StyleSpan(2));
              return;
            }
            if (paramString2.equalsIgnoreCase("i"))
            {
              a(this.d, i.class, new StyleSpan(2));
              return;
            }
            if (paramString2.equalsIgnoreCase("big"))
            {
              a(this.d, c.class, new RelativeSizeSpan(1.25F));
              return;
            }
            if (paramString2.equalsIgnoreCase("small"))
            {
              a(this.d, k.class, new RelativeSizeSpan(0.8F));
              return;
            }
            if (!paramString2.equalsIgnoreCase("font"))
              break;
            localSpannableStringBuilder2 = this.d;
            k = localSpannableStringBuilder2.length();
            localObject2 = a(localSpannableStringBuilder2, f.class);
            m = localSpannableStringBuilder2.getSpanStart(localObject2);
            localSpannableStringBuilder2.removeSpan(localObject2);
          }
          while (m == k);
          f localf = (f)localObject2;
          if (!TextUtils.isEmpty(localf.a))
          {
            if (!localf.a.startsWith("@"))
              break label542;
            Resources localResources = Resources.getSystem();
            int i2 = localResources.getIdentifier(localf.a.substring(1), "color", "android");
            if (i2 != 0)
              localSpannableStringBuilder2.setSpan(new TextAppearanceSpan(null, 0, 0, localResources.getColorStateList(i2), null), m, k, 33);
          }
          while (true)
          {
            if (localf.b != null)
              localSpannableStringBuilder2.setSpan(new TypefaceSpan(localf.b), m, k, 33);
            if (TextUtils.isEmpty(localf.c))
              break;
            if (!localf.c.endsWith("pt"))
              break label585;
            int n = b(localf.c);
            localSpannableStringBuilder2.setSpan(new TextAppearanceSpan(null, 0, UIUtils.a(GlobalContext.a().b(), n), null, null), m, k, 33);
            return;
            int i1 = a(localf.a);
            if (i1 != -1)
              localSpannableStringBuilder2.setSpan(new ForegroundColorSpan(i1 | 0xFF000000), m, k, 33);
          }
          float f1;
          switch (b(localf.c))
          {
          case 4:
          default:
            f1 = UIUtils.c("large");
          case 0:
          case 1:
          case 2:
          case 3:
          case 5:
          case 6:
          case 7:
          }
          while (true)
          {
            localSpannableStringBuilder2.setSpan(new TextAppearanceSpan(null, 0, (int)UIUtils.a(GlobalContext.a().b(), (int)f1), null, null), m, k, 33);
            return;
            f1 = UIUtils.c("small");
            continue;
            f1 = UIUtils.c("medium");
            continue;
            f1 = UIUtils.c("huge");
          }
          if (paramString2.equalsIgnoreCase("blockquote"))
          {
            a(this.d);
            a(this.d, d.class, new QuoteSpan());
            return;
          }
          if (paramString2.equalsIgnoreCase("tt"))
          {
            a(this.d, j.class, new TypefaceSpan("monospace"));
            return;
          }
          if (!paramString2.equalsIgnoreCase("a"))
            break;
          localSpannableStringBuilder1 = this.d;
          i = localSpannableStringBuilder1.length();
          localObject1 = a(localSpannableStringBuilder1, h.class);
          j = localSpannableStringBuilder1.getSpanStart(localObject1);
          localSpannableStringBuilder1.removeSpan(localObject1);
        }
        while (j == i);
        localh = (h)localObject1;
      }
      while (localh.a == null);
      localSpannableStringBuilder1.setSpan(new URLSpan(localh.a), j, i, 33);
      return;
      if (paramString2.equalsIgnoreCase("u"))
      {
        a(this.d, o.class, new UnderlineSpan());
        return;
      }
      if (paramString2.equalsIgnoreCase("sup"))
      {
        a(this.d, n.class, new SuperscriptSpan());
        return;
      }
      if (paramString2.equalsIgnoreCase("sub"))
      {
        a(this.d, m.class, new SubscriptSpan());
        return;
      }
      if ((paramString2.equalsIgnoreCase("s")) || (paramString2.equalsIgnoreCase("strike")))
      {
        a(this.d, l.class, new StrikethroughSpan());
        return;
      }
      if ((paramString2.length() == 2) && (Character.toLowerCase(paramString2.charAt(0)) == 'h') && (paramString2.charAt(1) >= '1') && (paramString2.charAt(1) <= '6'))
      {
        a(this.d);
        b(this.d);
        return;
      }
    }
    while (this.f == null);
    Html.TagHandler localTagHandler = this.f;
    localTagHandler.a();
  }

  public final void endPrefixMapping(String paramString)
  {
  }

  public final void ignorableWhitespace(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
  }

  public final void processingInstruction(String paramString1, String paramString2)
  {
  }

  public final void setDocumentLocator(Locator paramLocator)
  {
  }

  public final void skippedEntity(String paramString)
  {
  }

  public final void startDocument()
  {
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    if (!paramString2.equalsIgnoreCase("br"))
    {
      if (!paramString2.equalsIgnoreCase("p"))
        break label27;
      a(this.d);
    }
    label27: 
    do
    {
      return;
      if (paramString2.equalsIgnoreCase("div"))
      {
        a(this.d);
        return;
      }
      if (paramString2.equalsIgnoreCase("strong"))
      {
        a(this.d, new e((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("b"))
      {
        a(this.d, new e((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("em"))
      {
        a(this.d, new i((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("cite"))
      {
        a(this.d, new i((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("dfn"))
      {
        a(this.d, new i((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("i"))
      {
        a(this.d, new i((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("big"))
      {
        a(this.d, new c((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("small"))
      {
        a(this.d, new k((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("font"))
      {
        SpannableStringBuilder localSpannableStringBuilder3 = this.d;
        String str3 = paramAttributes.getValue("", "color");
        String str4 = paramAttributes.getValue("", "face");
        String str5 = paramAttributes.getValue("", "size");
        int k = localSpannableStringBuilder3.length();
        localSpannableStringBuilder3.setSpan(new f(str3, str4, str5), k, k, 17);
        return;
      }
      if (paramString2.equalsIgnoreCase("blockquote"))
      {
        a(this.d);
        a(this.d, new d((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("tt"))
      {
        a(this.d, new j((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("a"))
      {
        SpannableStringBuilder localSpannableStringBuilder2 = this.d;
        String str2 = paramAttributes.getValue("", "href");
        int j = localSpannableStringBuilder2.length();
        localSpannableStringBuilder2.setSpan(new h(str2), j, j, 17);
        return;
      }
      if (paramString2.equalsIgnoreCase("u"))
      {
        a(this.d, new o((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("sup"))
      {
        a(this.d, new n((byte)0));
        return;
      }
      if (paramString2.equalsIgnoreCase("sub"))
      {
        a(this.d, new m((byte)0));
        return;
      }
      if ((paramString2.equalsIgnoreCase("s")) || (paramString2.equalsIgnoreCase("strike")))
      {
        a(this.d, new l((byte)0));
        return;
      }
      if ((paramString2.length() == 2) && (Character.toLowerCase(paramString2.charAt(0)) == 'h') && (paramString2.charAt(1) >= '1') && (paramString2.charAt(1) <= '6'))
      {
        a(this.d);
        a(this.d, new g('\0)7' + paramString2.charAt(1)));
        return;
      }
      if (paramString2.equalsIgnoreCase("img"))
      {
        SpannableStringBuilder localSpannableStringBuilder1 = this.d;
        Html.ImageGetter localImageGetter = this.e;
        String str1 = paramAttributes.getValue("", "src");
        Drawable localDrawable = null;
        if (localImageGetter != null)
          localDrawable = localImageGetter.a();
        int i = localSpannableStringBuilder1.length();
        localSpannableStringBuilder1.append("￼");
        localSpannableStringBuilder1.setSpan(new ImageSpan(localDrawable, str1), i, localSpannableStringBuilder1.length(), 33);
        return;
      }
    }
    while (this.f == null);
    Html.TagHandler localTagHandler = this.f;
    localTagHandler.a();
  }

  public final void startPrefixMapping(String paramString1, String paramString2)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.html.b
 * JD-Core Version:    0.6.2
 */