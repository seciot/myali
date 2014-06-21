package com.alipay.html;

import android.text.Layout.Alignment;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ParagraphStyle;
import android.text.style.QuoteSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import org.ccil.cowan.tagsoup.Parser;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

public class Html
{
  public static Spanned a(String paramString)
  {
    return b(paramString);
  }

  public static String a(Spanned paramSpanned)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, paramSpanned);
    return localStringBuilder.toString();
  }

  private static void a(StringBuilder paramStringBuilder, Spanned paramSpanned)
  {
    int i = paramSpanned.length();
    int k;
    for (int j = 0; j < paramSpanned.length(); j = k)
    {
      k = paramSpanned.nextSpanTransition(j, i, ParagraphStyle.class);
      ParagraphStyle[] arrayOfParagraphStyle = (ParagraphStyle[])paramSpanned.getSpans(j, k, ParagraphStyle.class);
      String str = " ";
      int m = 0;
      int n = 0;
      if (m < arrayOfParagraphStyle.length)
      {
        Layout.Alignment localAlignment;
        if ((arrayOfParagraphStyle[m] instanceof AlignmentSpan))
        {
          localAlignment = ((AlignmentSpan)arrayOfParagraphStyle[m]).getAlignment();
          n = 1;
          if (localAlignment != Layout.Alignment.ALIGN_CENTER)
            break label127;
          str = "align=\"center\" " + str;
        }
        while (true)
        {
          m++;
          break;
          label127: if (localAlignment == Layout.Alignment.ALIGN_OPPOSITE)
            str = "align=\"right\" " + str;
          else
            str = "align=\"left\" " + str;
        }
      }
      if (n != 0)
        paramStringBuilder.append("<div " + str + ">");
      a(paramStringBuilder, paramSpanned, j, k);
      if (n != 0)
        paramStringBuilder.append("</div>");
    }
  }

  private static void a(StringBuilder paramStringBuilder, Spanned paramSpanned, int paramInt1, int paramInt2)
  {
    int j;
    for (int i = paramInt1; i < paramInt2; i = j)
    {
      j = paramSpanned.nextSpanTransition(i, paramInt2, QuoteSpan.class);
      int k = ((QuoteSpan[])paramSpanned.getSpans(i, j, QuoteSpan.class)).length;
      for (int m = 0; m < k; m++)
        paramStringBuilder.append("<blockquote>");
      paramStringBuilder.append("<p>");
      if (i < j)
      {
        int i1 = TextUtils.indexOf(paramSpanned, '\n', i, j);
        if (i1 < 0)
          i1 = j;
        int i2 = 0;
        int i14;
        for (int i3 = i1; (i3 < j) && (paramSpanned.charAt(i3) == '\n'); i3 = i14)
        {
          int i13 = i2 + 1;
          i14 = i3 + 1;
          i2 = i13;
        }
        int i4 = i3 - i2;
        int i5;
        if (i3 == j)
          i5 = 1;
        while (i < i4)
        {
          int i7 = paramSpanned.nextSpanTransition(i, i4, CharacterStyle.class);
          CharacterStyle[] arrayOfCharacterStyle = (CharacterStyle[])paramSpanned.getSpans(i, i7, CharacterStyle.class);
          int i8 = i;
          for (int i9 = 0; ; i9++)
          {
            if (i9 >= arrayOfCharacterStyle.length)
              break label604;
            if ((arrayOfCharacterStyle[i9] instanceof StyleSpan))
            {
              int i12 = ((StyleSpan)arrayOfCharacterStyle[i9]).getStyle();
              if ((i12 & 0x1) != 0)
                paramStringBuilder.append("<b>");
              if ((i12 & 0x2) != 0)
                paramStringBuilder.append("<i>");
            }
            if (((arrayOfCharacterStyle[i9] instanceof TypefaceSpan)) && (((TypefaceSpan)arrayOfCharacterStyle[i9]).getFamily().equals("monospace")))
              paramStringBuilder.append("<tt>");
            if ((arrayOfCharacterStyle[i9] instanceof SuperscriptSpan))
              paramStringBuilder.append("<sup>");
            if ((arrayOfCharacterStyle[i9] instanceof SubscriptSpan))
              paramStringBuilder.append("<sub>");
            if ((arrayOfCharacterStyle[i9] instanceof UnderlineSpan))
              paramStringBuilder.append("<u>");
            if ((arrayOfCharacterStyle[i9] instanceof StrikethroughSpan))
              paramStringBuilder.append("<strike>");
            if ((arrayOfCharacterStyle[i9] instanceof URLSpan))
            {
              paramStringBuilder.append("<a href=\"");
              paramStringBuilder.append(((URLSpan)arrayOfCharacterStyle[i9]).getURL());
              paramStringBuilder.append("\">");
            }
            if ((arrayOfCharacterStyle[i9] instanceof ImageSpan))
            {
              paramStringBuilder.append("<img src=\"");
              paramStringBuilder.append(((ImageSpan)arrayOfCharacterStyle[i9]).getSource());
              paramStringBuilder.append("\">");
              i8 = i7;
            }
            if ((arrayOfCharacterStyle[i9] instanceof AbsoluteSizeSpan))
            {
              paramStringBuilder.append("<font size =\"");
              paramStringBuilder.append(((AbsoluteSizeSpan)arrayOfCharacterStyle[i9]).getSize() / 6);
              paramStringBuilder.append("\">");
            }
            if ((arrayOfCharacterStyle[i9] instanceof ForegroundColorSpan))
            {
              paramStringBuilder.append("<font color =\"#");
              String str2 = Integer.toHexString(16777216 + ((ForegroundColorSpan)arrayOfCharacterStyle[i9]).getForegroundColor());
              while (true)
                if (str2.length() < 6)
                {
                  str2 = "0" + str2;
                  continue;
                  i5 = 0;
                  break;
                }
              paramStringBuilder.append(str2);
              paramStringBuilder.append("\">");
            }
          }
          label604: b(paramStringBuilder, paramSpanned, i8, i7);
          for (int i10 = -1 + arrayOfCharacterStyle.length; i10 >= 0; i10--)
          {
            if ((arrayOfCharacterStyle[i10] instanceof ForegroundColorSpan))
              paramStringBuilder.append("</font>");
            if ((arrayOfCharacterStyle[i10] instanceof AbsoluteSizeSpan))
              paramStringBuilder.append("</font>");
            if ((arrayOfCharacterStyle[i10] instanceof URLSpan))
              paramStringBuilder.append("</a>");
            if ((arrayOfCharacterStyle[i10] instanceof StrikethroughSpan))
              paramStringBuilder.append("</strike>");
            if ((arrayOfCharacterStyle[i10] instanceof UnderlineSpan))
              paramStringBuilder.append("</u>");
            if ((arrayOfCharacterStyle[i10] instanceof SubscriptSpan))
              paramStringBuilder.append("</sub>");
            if ((arrayOfCharacterStyle[i10] instanceof SuperscriptSpan))
              paramStringBuilder.append("</sup>");
            if (((arrayOfCharacterStyle[i10] instanceof TypefaceSpan)) && (((TypefaceSpan)arrayOfCharacterStyle[i10]).getFamily().equals("monospace")))
              paramStringBuilder.append("</tt>");
            if ((arrayOfCharacterStyle[i10] instanceof StyleSpan))
            {
              int i11 = ((StyleSpan)arrayOfCharacterStyle[i10]).getStyle();
              if ((i11 & 0x1) != 0)
                paramStringBuilder.append("</b>");
              if ((i11 & 0x2) != 0)
                paramStringBuilder.append("</i>");
            }
          }
          i = i7;
        }
        String str1;
        if (i5 != 0)
        {
          str1 = "";
          label862: if (i2 != 1)
            break label889;
          paramStringBuilder.append("<br>\n");
        }
        while (true)
        {
          i = i3;
          break;
          str1 = "</p>\n<p>";
          break label862;
          label889: if (i2 == 2)
          {
            paramStringBuilder.append(str1);
          }
          else
          {
            for (int i6 = 2; i6 < i2; i6++)
              paramStringBuilder.append("<br>");
            paramStringBuilder.append(str1);
          }
        }
      }
      paramStringBuilder.append("</p>\n");
      for (int n = 0; n < k; n++)
        paramStringBuilder.append("</blockquote>\n");
    }
  }

  private static Spanned b(String paramString)
  {
    Parser localParser = new Parser();
    try
    {
      localParser.setProperty("http://www.ccil.org/~cowan/tagsoup/properties/schema", a.getInstance());
      return new b(paramString, localParser).a();
    }
    catch (SAXNotRecognizedException localSAXNotRecognizedException)
    {
      throw new RuntimeException(localSAXNotRecognizedException);
    }
    catch (SAXNotSupportedException localSAXNotSupportedException)
    {
      throw new RuntimeException(localSAXNotSupportedException);
    }
  }

  private static void b(StringBuilder paramStringBuilder, Spanned paramSpanned, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    if (i < paramInt2)
    {
      char c = paramSpanned.charAt(i);
      if (c == '<')
        paramStringBuilder.append("&lt;");
      while (true)
      {
        i++;
        break;
        if (c == '>')
        {
          paramStringBuilder.append("&gt;");
        }
        else if (c == '&')
        {
          paramStringBuilder.append("&amp;");
        }
        else if ((c > '~') || (c < ' '))
        {
          paramStringBuilder.append("&#" + c + ";");
        }
        else if (c == ' ')
        {
          while ((i + 1 < paramInt2) && (paramSpanned.charAt(i + 1) == ' '))
          {
            paramStringBuilder.append("&nbsp;");
            i++;
          }
          paramStringBuilder.append(' ');
        }
        else
        {
          paramStringBuilder.append(c);
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.html.Html
 * JD-Core Version:    0.6.2
 */