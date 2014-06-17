package org.ccil.cowan.tagsoup;

import java.io.BufferedReader;
import java.io.PushbackReader;
import java.io.Reader;
import org.xml.sax.Locator;

public class HTMLScanner
  implements Scanner, Locator
{
  private static int[] f = { 1, 47, 5, 22, 1, 61, 4, 3, 1, 62, 6, 28, 1, 0, 27, 1, 1, -1, 6, 21, 1, 32, 4, 24, 1, 10, 4, 24, 1, 9, 4, 24, 2, 39, 7, 34, 2, 0, 27, 2, 2, -1, 8, 21, 2, 32, 29, 2, 2, 10, 29, 2, 2, 9, 29, 2, 3, 39, 28, 2, 3, 34, 28, 31, 3, 62, 8, 28, 3, 0, 27, 32, 3, -1, 8, 21, 3, 32, 28, 3, 3, 10, 28, 3, 3, 9, 28, 3, 4, 67, 28, 5, 4, 0, 28, 19, 4, -1, 28, 21, 5, 68, 28, 6, 5, 0, 28, 19, 5, -1, 28, 21, 6, 65, 28, 7, 6, 0, 28, 19, 6, -1, 28, 21, 7, 84, 28, 8, 7, 0, 28, 19, 7, -1, 28, 21, 8, 65, 28, 9, 8, 0, 28, 19, 8, -1, 28, 21, 9, 91, 28, 12, 9, 0, 28, 19, 9, -1, 28, 21, 10, 60, 27, 11, 10, 0, 27, 10, 10, -1, 23, 21, 11, 47, 32, 25, 11, 0, 27, 10, 11, -1, 32, 21, 12, 93, 27, 13, 12, 0, 27, 12, 12, -1, 28, 21, 13, 93, 27, 14, 13, 0, 27, 12, 13, -1, 28, 21, 14, 62, 9, 28, 14, 0, 27, 12, 14, -1, 28, 21, 15, 45, 28, 16, 15, 0, 27, 16, 15, -1, 10, 21, 16, 45, 28, 17, 16, 0, 27, 16, 16, -1, 10, 21, 17, 45, 28, 18, 17, 0, 20, 16, 17, -1, 10, 21, 18, 45, 22, 18, 18, 62, 10, 28, 18, 0, 21, 16, 18, -1, 10, 21, 19, 45, 28, 15, 19, 91, 28, 4, 19, 62, 28, 28, 19, 0, 27, 20, 19, -1, 28, 21, 20, 62, 11, 28, 20, 0, 27, 20, 20, -1, 28, 21, 22, 62, 12, 28, 22, 0, 27, 1, 22, 32, 28, 34, 22, 10, 28, 34, 22, 9, 28, 34, 23, 0, 13, 23, 23, -1, 13, 21, 24, 61, 28, 3, 24, 62, 3, 28, 24, 0, 2, 1, 24, -1, 3, 21, 24, 32, 28, 24, 24, 10, 28, 24, 24, 9, 28, 24, 25, 62, 15, 28, 25, 0, 27, 25, 25, -1, 15, 21, 25, 32, 28, 25, 25, 10, 28, 25, 25, 9, 28, 25, 26, 47, 28, 22, 26, 62, 17, 28, 26, 0, 27, 26, 26, -1, 28, 21, 26, 32, 16, 34, 26, 10, 16, 34, 26, 9, 16, 34, 27, 0, 13, 27, 27, -1, 13, 21, 28, 38, 14, 23, 28, 60, 23, 33, 28, 0, 27, 28, 28, -1, 23, 21, 29, 62, 24, 28, 29, 0, 27, 29, 29, -1, 24, 21, 30, 62, 26, 28, 30, 0, 27, 30, 30, -1, 26, 21, 30, 32, 25, 29, 30, 10, 25, 29, 30, 9, 25, 29, 31, 34, 7, 34, 31, 0, 27, 31, 31, -1, 8, 21, 31, 32, 29, 31, 31, 10, 29, 31, 31, 9, 29, 31, 32, 62, 8, 28, 32, 0, 27, 32, 32, -1, 8, 21, 32, 32, 7, 34, 32, 10, 7, 34, 32, 9, 7, 34, 33, 33, 28, 19, 33, 63, 28, 30, 33, 47, 28, 25, 33, 60, 27, 33, 33, 0, 27, 26, 33, -1, 19, 21, 33, 32, 18, 28, 33, 10, 18, 28, 33, 9, 18, 28, 34, 47, 28, 22, 34, 62, 30, 28, 34, 0, 27, 1, 34, -1, 30, 21, 34, 32, 28, 34, 34, 10, 28, 34, 34, 9, 28, 34, 35, 0, 13, 35, 35, -1, 13, 21 };
  int a;
  int b;
  char[] c = new char['È'];
  int d;
  int[] e = { 8364, 65533, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 65533, 381, 65533, 65533, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 65533, 382, 376 };
  private String g;
  private String h;
  private int i;
  private int j;
  private int k;
  private int l;

  private void a(int paramInt, ScanHandler paramScanHandler)
  {
    if (this.d >= -20 + this.c.length)
    {
      if ((this.a != 28) && (this.a != 10))
        break label78;
      paramScanHandler.g(this.c, this.d);
      this.d = 0;
    }
    while (true)
    {
      char[] arrayOfChar1 = this.c;
      int m = this.d;
      this.d = (m + 1);
      arrayOfChar1[m] = ((char)paramInt);
      return;
      label78: char[] arrayOfChar2 = new char[2 * this.c.length];
      System.arraycopy(this.c, 0, arrayOfChar2, 0, 1 + this.d);
      this.c = arrayOfChar2;
    }
  }

  private static void a(PushbackReader paramPushbackReader, int paramInt)
  {
    if (paramInt != -1)
      paramPushbackReader.unread(paramInt);
  }

  private void b()
  {
    this.j = this.l;
    this.i = this.k;
  }

  public final void a()
  {
    this.b = 10;
  }

  public final void a(Reader paramReader, ScanHandler paramScanHandler)
  {
    this.a = 28;
    PushbackReader localPushbackReader;
    label18: label37: int n;
    if ((paramReader instanceof PushbackReader))
    {
      localPushbackReader = (PushbackReader)paramReader;
      int m = localPushbackReader.read();
      if (m != 65279)
        a(localPushbackReader, m);
      if (this.a == 21)
        break label1710;
      n = localPushbackReader.read();
      if ((n >= 128) && (n <= 159))
        n = this.e[(n - 128)];
      if (n != 13)
        break label1722;
      n = localPushbackReader.read();
      if (n == 10)
        break label1722;
      a(localPushbackReader, n);
    }
    label133: label419: label1710: label1722: for (int i1 = 10; ; i1 = n)
    {
      int i2;
      int i3;
      if (i1 == 10)
      {
        this.k = (1 + this.k);
        this.l = 0;
        if ((i1 < 32) && (i1 != 10) && (i1 != 9) && (i1 != -1))
          break label37;
        i2 = 0;
        i3 = 0;
        if (i2 < f.length)
        {
          if (this.a == f[i2])
            break label419;
          if (i3 == 0)
            break label452;
        }
      }
      while (true)
        switch (i3)
        {
        default:
          throw new Error("Can't process state " + i3);
          if ((paramReader instanceof BufferedReader))
          {
            localPushbackReader = new PushbackReader(paramReader);
            break label18;
          }
          localPushbackReader = new PushbackReader(new BufferedReader(paramReader, 200));
          break label18;
          this.l = (1 + this.l);
          break label133;
          if (f[(i2 + 1)] == 0)
          {
            i3 = f[(i2 + 2)];
            this.b = f[(i2 + 3)];
          }
          label452: 
          while (f[(i2 + 1)] != i1)
          {
            i2 += 4;
            break;
          }
          i3 = f[(i2 + 2)];
          this.b = f[(i2 + 3)];
        case 0:
        case 1:
        case 28:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 14:
        case 13:
        case 15:
        case 11:
        case 16:
        case 17:
        case 18:
        case 19:
        case 23:
        case 10:
        case 22:
        case 21:
        case 20:
        case 24:
        case 25:
        case 26:
        case 27:
        case 29:
        case 30:
        case 12:
        case 31:
        case 32:
        }
      throw new Error("HTMLScanner can't cope with " + Integer.toString(i1) + " in state " + Integer.toString(this.a));
      paramScanHandler.a();
      this.d = 0;
      while (true)
      {
        this.a = this.b;
        break;
        paramScanHandler.a();
        this.d = 0;
        a(i1, paramScanHandler);
        continue;
        paramScanHandler.a();
        this.d = 0;
        paramScanHandler.j(this.c, this.d);
        continue;
        paramScanHandler.a(this.c, this.d);
        this.d = 0;
        continue;
        paramScanHandler.a(this.c, this.d);
        this.d = 0;
        paramScanHandler.a();
        continue;
        paramScanHandler.a(this.c, this.d);
        this.d = 0;
        paramScanHandler.a();
        paramScanHandler.j(this.c, this.d);
        continue;
        paramScanHandler.b(this.c, this.d);
        this.d = 0;
        continue;
        paramScanHandler.b(this.c, this.d);
        this.d = 0;
        paramScanHandler.j(this.c, this.d);
        continue;
        b();
        if (this.d > 1)
          this.d = (-2 + this.d);
        paramScanHandler.g(this.c, this.d);
        this.d = 0;
        continue;
        paramScanHandler.g(this.c, this.d);
        this.d = 0;
        a(i1, paramScanHandler);
        continue;
        b();
        char c1 = (char)i1;
        if ((this.a == 23) && (c1 == '#'))
        {
          this.b = 27;
          a(i1, paramScanHandler);
        }
        else if ((this.a == 27) && ((c1 == 'x') || (c1 == 'X')))
        {
          this.b = 35;
          a(i1, paramScanHandler);
        }
        else if ((this.a == 23) && (Character.isLetterOrDigit(c1)))
        {
          a(i1, paramScanHandler);
        }
        else if ((this.a == 27) && (Character.isDigit(c1)))
        {
          a(i1, paramScanHandler);
        }
        else if ((this.a == 35) && ((Character.isDigit(c1)) || ("abcdefABCDEF".indexOf(c1) != -1)))
        {
          a(i1, paramScanHandler);
        }
        else
        {
          paramScanHandler.c(this.c, -1 + this.d);
          int i4 = paramScanHandler.c();
          if (i4 != 0)
          {
            this.d = 0;
            if ((i4 >= 128) && (i4 <= 159))
              i4 = this.e[(i4 - 128)];
            if ((i4 >= 32) && ((i4 < 55296) || (i4 > 57343)))
            {
              if (i4 > 65535)
                break label1186;
              a(i4, paramScanHandler);
            }
          }
          while (true)
          {
            if (i1 != 59)
            {
              a(localPushbackReader, i1);
              this.l = (-1 + this.l);
            }
            this.b = 28;
            break;
            int i5 = i4 - 65536;
            a(55296 + (i5 >> 10), paramScanHandler);
            a(56320 + (i5 & 0x3FF), paramScanHandler);
          }
          paramScanHandler.d(this.c, this.d);
          this.d = 0;
          continue;
          paramScanHandler.e(this.c, this.d);
          this.d = 0;
          continue;
          paramScanHandler.f(this.c, this.d);
          this.d = 0;
          continue;
          paramScanHandler.f(this.c, this.d);
          this.d = 0;
          paramScanHandler.j(this.c, this.d);
          continue;
          b();
          a(60, paramScanHandler);
          a(i1, paramScanHandler);
          continue;
          b();
          a(60, paramScanHandler);
          paramScanHandler.g(this.c, this.d);
          this.d = 0;
          continue;
          b();
          paramScanHandler.g(this.c, this.d);
          this.d = 0;
          continue;
          b();
          paramScanHandler.l(this.c, this.d);
          this.d = 0;
          continue;
          a(45, paramScanHandler);
          a(32, paramScanHandler);
          continue;
          a(45, paramScanHandler);
          a(32, paramScanHandler);
          a(45, paramScanHandler);
          a(i1, paramScanHandler);
          continue;
          b();
          paramScanHandler.i(this.c, this.d);
          this.d = 0;
          continue;
          paramScanHandler.h(this.c, this.d);
          this.d = 0;
          continue;
          paramScanHandler.h(this.c, this.d);
          this.d = 0;
          paramScanHandler.i(this.c, this.d);
          continue;
          a(i1, paramScanHandler);
          continue;
          a(32, paramScanHandler);
          continue;
          paramScanHandler.j(this.c, this.d);
          this.d = 0;
          continue;
          b();
          if (this.d > 0)
            paramScanHandler.f(this.c, this.d);
          this.d = 0;
          paramScanHandler.k(this.c, this.d);
          continue;
          a(localPushbackReader, i1);
          this.l = (-1 + this.l);
          continue;
          if (this.d > 0)
            this.d = (-1 + this.d);
          paramScanHandler.g(this.c, this.d);
          this.d = 0;
        }
      }
      paramScanHandler.b();
      return;
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    this.g = paramString1;
    this.h = paramString2;
    this.l = 0;
    this.k = 0;
    this.j = 0;
    this.i = 0;
  }

  public int getColumnNumber()
  {
    return this.j;
  }

  public int getLineNumber()
  {
    return this.i;
  }

  public String getPublicId()
  {
    return this.g;
  }

  public String getSystemId()
  {
    return this.h;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.ccil.cowan.tagsoup.HTMLScanner
 * JD-Core Version:    0.6.2
 */