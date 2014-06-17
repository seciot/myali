package com.alipay.mobile.common.transport.spdy.internal;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class DiskLruCache
  implements Closeable
{
  static final long ANY_SEQUENCE_NUMBER = -1L;
  static final String JOURNAL_FILE = "journal";
  static final String JOURNAL_FILE_BACKUP = "journal.bkp";
  static final String JOURNAL_FILE_TEMP = "journal.tmp";
  static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,64}");
  static final String MAGIC = "libcore.io.DiskLruCache";
  static final String VERSION_1 = "1";
  private static final OutputStream n = new DiskLruCache.2();
  private final File a;
  private final File b;
  private final File c;
  private final File d;
  private final int e;
  final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private long f;
  private final int g;
  private long h = 0L;
  private Writer i;
  private final LinkedHashMap j = new LinkedHashMap(0, 0.75F, true);
  private int k;
  private long l = 0L;
  private final Callable m = new DiskLruCache.1(this);

  private DiskLruCache(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    this.a = paramFile;
    this.e = paramInt1;
    this.b = new File(paramFile, "journal");
    this.c = new File(paramFile, "journal.tmp");
    this.d = new File(paramFile, "journal.bkp");
    this.g = paramInt2;
    this.f = paramLong;
  }

  private DiskLruCache.Editor a(String paramString, long paramLong)
  {
    while (true)
    {
      DiskLruCache.Entry localEntry1;
      DiskLruCache.Editor localEditor2;
      DiskLruCache.Entry localEntry2;
      try
      {
        e();
        a(paramString);
        localEntry1 = (DiskLruCache.Entry)this.j.get(paramString);
        if (paramLong != -1L)
          if (localEntry1 != null)
          {
            long l1 = DiskLruCache.Entry.access$1200(localEntry1);
            if (l1 == paramLong);
          }
          else
          {
            localEditor2 = null;
            return localEditor2;
          }
        if (localEntry1 == null)
        {
          DiskLruCache.Entry localEntry3 = new DiskLruCache.Entry(this, paramString, null);
          this.j.put(paramString, localEntry3);
          localEntry2 = localEntry3;
          localEditor2 = new DiskLruCache.Editor(this, localEntry2, null);
          DiskLruCache.Entry.access$702(localEntry2, localEditor2);
          this.i.write("DIRTY " + paramString + '\n');
          this.i.flush();
          continue;
        }
      }
      finally
      {
      }
      DiskLruCache.Editor localEditor1 = DiskLruCache.Entry.access$700(localEntry1);
      if (localEditor1 != null)
        localEditor2 = null;
      else
        localEntry2 = localEntry1;
    }
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: new 194	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader
    //   3: dup
    //   4: new 196	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 119	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:b	Ljava/io/File;
    //   12: invokespecial 199	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: getstatic 205	com/alipay/mobile/common/transport/spdy/internal/Util:US_ASCII	Ljava/nio/charset/Charset;
    //   18: invokespecial 208	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 211	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader:readLine	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_1
    //   28: invokevirtual 211	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader:readLine	()Ljava/lang/String;
    //   31: astore 4
    //   33: aload_1
    //   34: invokevirtual 211	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader:readLine	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload_1
    //   40: invokevirtual 211	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader:readLine	()Ljava/lang/String;
    //   43: astore 6
    //   45: aload_1
    //   46: invokevirtual 211	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader:readLine	()Ljava/lang/String;
    //   49: astore 7
    //   51: ldc 25
    //   53: aload_3
    //   54: invokevirtual 217	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifeq +53 -> 110
    //   60: ldc 28
    //   62: aload 4
    //   64: invokevirtual 217	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   67: ifeq +43 -> 110
    //   70: aload_0
    //   71: getfield 112	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:e	I
    //   74: invokestatic 222	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   77: aload 5
    //   79: invokevirtual 217	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifeq +28 -> 110
    //   85: aload_0
    //   86: getfield 125	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:g	I
    //   89: invokestatic 222	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   92: aload 6
    //   94: invokevirtual 217	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   97: ifeq +13 -> 110
    //   100: ldc 224
    //   102: aload 7
    //   104: invokevirtual 217	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   107: ifne +69 -> 176
    //   110: new 226	java/io/IOException
    //   113: dup
    //   114: new 163	java/lang/StringBuilder
    //   117: dup
    //   118: ldc 228
    //   120: invokespecial 167	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: aload_3
    //   124: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: ldc 230
    //   129: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload 4
    //   134: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: ldc 230
    //   139: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: aload 6
    //   144: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: ldc 230
    //   149: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: aload 7
    //   154: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: ldc 232
    //   159: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokespecial 233	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   168: athrow
    //   169: astore_2
    //   170: aload_1
    //   171: invokestatic 237	com/alipay/mobile/common/transport/spdy/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   174: aload_2
    //   175: athrow
    //   176: iconst_0
    //   177: istore 8
    //   179: aload_1
    //   180: invokevirtual 211	com/alipay/mobile/common/transport/spdy/internal/StrictLineReader:readLine	()Ljava/lang/String;
    //   183: astore 10
    //   185: aload 10
    //   187: bipush 32
    //   189: invokevirtual 241	java/lang/String:indexOf	(I)I
    //   192: istore 11
    //   194: iload 11
    //   196: iconst_m1
    //   197: if_icmpne +49 -> 246
    //   200: new 226	java/io/IOException
    //   203: dup
    //   204: new 163	java/lang/StringBuilder
    //   207: dup
    //   208: ldc 243
    //   210: invokespecial 167	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   213: aload 10
    //   215: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: invokespecial 233	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   224: athrow
    //   225: astore 9
    //   227: aload_0
    //   228: iload 8
    //   230: aload_0
    //   231: getfield 81	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:j	Ljava/util/LinkedHashMap;
    //   234: invokevirtual 247	java/util/LinkedHashMap:size	()I
    //   237: isub
    //   238: putfield 249	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:k	I
    //   241: aload_1
    //   242: invokestatic 237	com/alipay/mobile/common/transport/spdy/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   245: return
    //   246: iload 11
    //   248: iconst_1
    //   249: iadd
    //   250: istore 12
    //   252: aload 10
    //   254: bipush 32
    //   256: iload 12
    //   258: invokevirtual 252	java/lang/String:indexOf	(II)I
    //   261: istore 13
    //   263: iload 13
    //   265: iconst_m1
    //   266: if_icmpne +43 -> 309
    //   269: aload 10
    //   271: iload 12
    //   273: invokevirtual 255	java/lang/String:substring	(I)Ljava/lang/String;
    //   276: astore 14
    //   278: iload 11
    //   280: bipush 6
    //   282: if_icmpne +237 -> 519
    //   285: aload 10
    //   287: ldc_w 257
    //   290: invokevirtual 261	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   293: ifeq +226 -> 519
    //   296: aload_0
    //   297: getfield 81	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:j	Ljava/util/LinkedHashMap;
    //   300: aload 14
    //   302: invokevirtual 264	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   305: pop
    //   306: goto +220 -> 526
    //   309: aload 10
    //   311: iload 12
    //   313: iload 13
    //   315: invokevirtual 267	java/lang/String:substring	(II)Ljava/lang/String;
    //   318: astore 15
    //   320: aload_0
    //   321: getfield 81	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:j	Ljava/util/LinkedHashMap;
    //   324: aload 15
    //   326: invokevirtual 137	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   329: checkcast 139	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry
    //   332: astore 16
    //   334: aload 16
    //   336: ifnonnull +28 -> 364
    //   339: new 139	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry
    //   342: dup
    //   343: aload_0
    //   344: aload 15
    //   346: aconst_null
    //   347: invokespecial 146	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry:<init>	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V
    //   350: astore 16
    //   352: aload_0
    //   353: getfield 81	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:j	Ljava/util/LinkedHashMap;
    //   356: aload 15
    //   358: aload 16
    //   360: invokevirtual 150	java/util/LinkedHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   363: pop
    //   364: iload 13
    //   366: iconst_m1
    //   367: if_icmpeq +61 -> 428
    //   370: iload 11
    //   372: iconst_5
    //   373: if_icmpne +55 -> 428
    //   376: aload 10
    //   378: ldc_w 269
    //   381: invokevirtual 261	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   384: ifeq +44 -> 428
    //   387: aload 10
    //   389: iload 13
    //   391: iconst_1
    //   392: iadd
    //   393: invokevirtual 255	java/lang/String:substring	(I)Ljava/lang/String;
    //   396: ldc_w 271
    //   399: invokevirtual 275	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   402: astore 19
    //   404: aload 16
    //   406: iconst_1
    //   407: invokestatic 279	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry:access$602	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Z)Z
    //   410: pop
    //   411: aload 16
    //   413: aconst_null
    //   414: invokestatic 159	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry:access$702	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    //   417: pop
    //   418: aload 16
    //   420: aload 19
    //   422: invokestatic 283	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry:access$800	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;[Ljava/lang/String;)V
    //   425: goto +101 -> 526
    //   428: iload 13
    //   430: iconst_m1
    //   431: if_icmpne +40 -> 471
    //   434: iload 11
    //   436: iconst_5
    //   437: if_icmpne +34 -> 471
    //   440: aload 10
    //   442: ldc_w 285
    //   445: invokevirtual 261	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   448: ifeq +23 -> 471
    //   451: aload 16
    //   453: new 152	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor
    //   456: dup
    //   457: aload_0
    //   458: aload 16
    //   460: aconst_null
    //   461: invokespecial 155	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor:<init>	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V
    //   464: invokestatic 159	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry:access$702	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    //   467: pop
    //   468: goto +58 -> 526
    //   471: iload 13
    //   473: iconst_m1
    //   474: if_icmpne +20 -> 494
    //   477: iload 11
    //   479: iconst_4
    //   480: if_icmpne +14 -> 494
    //   483: aload 10
    //   485: ldc_w 287
    //   488: invokevirtual 261	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   491: ifne +35 -> 526
    //   494: new 226	java/io/IOException
    //   497: dup
    //   498: new 163	java/lang/StringBuilder
    //   501: dup
    //   502: ldc 243
    //   504: invokespecial 167	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   507: aload 10
    //   509: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   515: invokespecial 233	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   518: athrow
    //   519: aload 14
    //   521: astore 15
    //   523: goto -203 -> 320
    //   526: iinc 8 1
    //   529: goto -350 -> 179
    //
    // Exception table:
    //   from	to	target	type
    //   22	110	169	finally
    //   110	169	169	finally
    //   179	194	169	finally
    //   200	225	169	finally
    //   227	241	169	finally
    //   252	263	169	finally
    //   269	278	169	finally
    //   285	306	169	finally
    //   309	320	169	finally
    //   320	334	169	finally
    //   339	364	169	finally
    //   376	425	169	finally
    //   440	468	169	finally
    //   483	494	169	finally
    //   494	519	169	finally
    //   179	194	225	java/io/EOFException
    //   200	225	225	java/io/EOFException
    //   252	263	225	java/io/EOFException
    //   269	278	225	java/io/EOFException
    //   285	306	225	java/io/EOFException
    //   309	320	225	java/io/EOFException
    //   320	334	225	java/io/EOFException
    //   339	364	225	java/io/EOFException
    //   376	425	225	java/io/EOFException
    //   440	468	225	java/io/EOFException
    //   483	494	225	java/io/EOFException
    //   494	519	225	java/io/EOFException
  }

  private void a(DiskLruCache.Editor paramEditor, boolean paramBoolean)
  {
    DiskLruCache.Entry localEntry;
    try
    {
      localEntry = DiskLruCache.Editor.access$1400(paramEditor);
      if (DiskLruCache.Entry.access$700(localEntry) != paramEditor)
        throw new IllegalStateException();
    }
    finally
    {
    }
    int i1 = 0;
    if (paramBoolean)
    {
      boolean bool = DiskLruCache.Entry.access$600(localEntry);
      i1 = 0;
      if (!bool)
        for (int i2 = 0; ; i2++)
        {
          int i3 = this.g;
          i1 = 0;
          if (i2 >= i3)
            break;
          if (DiskLruCache.Editor.access$1500(paramEditor)[i2] == 0)
          {
            paramEditor.abort();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
          }
          if (!localEntry.getDirtyFile(i2).exists())
          {
            paramEditor.abort();
            return;
          }
        }
    }
    while (true)
    {
      if (i1 < this.g)
      {
        File localFile1 = localEntry.getDirtyFile(i1);
        if (paramBoolean)
        {
          if (localFile1.exists())
          {
            File localFile2 = localEntry.getCleanFile(i1);
            localFile1.renameTo(localFile2);
            long l2 = DiskLruCache.Entry.access$1000(localEntry)[i1];
            long l3 = localFile2.length();
            DiskLruCache.Entry.access$1000(localEntry)[i1] = l3;
            this.h = (l3 + (this.h - l2));
          }
        }
        else
          a(localFile1);
      }
      else
      {
        this.k = (1 + this.k);
        DiskLruCache.Entry.access$702(localEntry, null);
        if ((paramBoolean | DiskLruCache.Entry.access$600(localEntry)))
        {
          DiskLruCache.Entry.access$602(localEntry, true);
          this.i.write("CLEAN " + DiskLruCache.Entry.access$1100(localEntry) + localEntry.getLengths() + '\n');
          if (paramBoolean)
          {
            long l1 = this.l;
            this.l = (1L + l1);
            DiskLruCache.Entry.access$1202(localEntry, l1);
          }
        }
        while (true)
        {
          this.i.flush();
          if ((this.h <= this.f) && (!d()))
            break;
          this.executorService.submit(this.m);
          break;
          this.j.remove(DiskLruCache.Entry.access$1100(localEntry));
          this.i.write("REMOVE " + DiskLruCache.Entry.access$1100(localEntry) + '\n');
        }
      }
      i1++;
    }
  }

  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete()))
      throw new IOException();
  }

  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean)
      a(paramFile2);
    if (!paramFile1.renameTo(paramFile2))
      throw new IOException();
  }

  private static void a(String paramString)
  {
    if (!LEGAL_KEY_PATTERN.matcher(paramString).matches())
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + paramString + "\"");
  }

  private void b()
  {
    a(this.c);
    Iterator localIterator = this.j.values().iterator();
    while (localIterator.hasNext())
    {
      DiskLruCache.Entry localEntry = (DiskLruCache.Entry)localIterator.next();
      if (DiskLruCache.Entry.access$700(localEntry) == null)
      {
        for (int i2 = 0; i2 < this.g; i2++)
          this.h += DiskLruCache.Entry.access$1000(localEntry)[i2];
      }
      else
      {
        DiskLruCache.Entry.access$702(localEntry, null);
        for (int i1 = 0; i1 < this.g; i1++)
        {
          a(localEntry.getCleanFile(i1));
          a(localEntry.getDirtyFile(i1));
        }
        localIterator.remove();
      }
    }
  }

  private void c()
  {
    BufferedWriter localBufferedWriter;
    while (true)
    {
      DiskLruCache.Entry localEntry;
      try
      {
        if (this.i != null)
          this.i.close();
        localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), Util.US_ASCII));
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.e));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.g));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = this.j.values().iterator();
          if (!localIterator.hasNext())
            break;
          localEntry = (DiskLruCache.Entry)localIterator.next();
          if (DiskLruCache.Entry.access$700(localEntry) != null)
          {
            localBufferedWriter.write("DIRTY " + DiskLruCache.Entry.access$1100(localEntry) + '\n');
            continue;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
      }
      finally
      {
      }
      localBufferedWriter.write("CLEAN " + DiskLruCache.Entry.access$1100(localEntry) + localEntry.getLengths() + '\n');
    }
    localBufferedWriter.close();
    if (this.b.exists())
      a(this.b, this.d, true);
    a(this.c, this.b, false);
    this.d.delete();
    this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), Util.US_ASCII));
  }

  private boolean d()
  {
    return (this.k >= 2000) && (this.k >= this.j.size());
  }

  private void e()
  {
    if (this.i == null)
      throw new IllegalStateException("cache is closed");
  }

  private void f()
  {
    while (this.h > this.f)
      remove((String)((Map.Entry)this.j.entrySet().iterator().next()).getKey());
  }

  public static DiskLruCache open(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException("maxSize <= 0");
    if (paramInt2 <= 0)
      throw new IllegalArgumentException("valueCount <= 0");
    File localFile1 = new File(paramFile, "journal.bkp");
    File localFile2;
    if (localFile1.exists())
    {
      localFile2 = new File(paramFile, "journal");
      if (!localFile2.exists())
        break label150;
      localFile1.delete();
    }
    while (true)
    {
      DiskLruCache localDiskLruCache1 = new DiskLruCache(paramFile, paramInt1, paramInt2, paramLong);
      if (localDiskLruCache1.b.exists())
        try
        {
          localDiskLruCache1.a();
          localDiskLruCache1.b();
          localDiskLruCache1.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(localDiskLruCache1.b, true), Util.US_ASCII));
          return localDiskLruCache1;
          label150: a(localFile1, localFile2, false);
        }
        catch (IOException localIOException)
        {
          Platform.get().logW("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
          localDiskLruCache1.delete();
        }
    }
    paramFile.mkdirs();
    DiskLruCache localDiskLruCache2 = new DiskLruCache(paramFile, paramInt1, paramInt2, paramLong);
    localDiskLruCache2.c();
    return localDiskLruCache2;
  }

  public final void close()
  {
    while (true)
    {
      try
      {
        Writer localWriter = this.i;
        if (localWriter == null)
          return;
        Iterator localIterator = new ArrayList(this.j.values()).iterator();
        if (localIterator.hasNext())
        {
          DiskLruCache.Entry localEntry = (DiskLruCache.Entry)localIterator.next();
          if (DiskLruCache.Entry.access$700(localEntry) == null)
            continue;
          DiskLruCache.Entry.access$700(localEntry).abort();
          continue;
        }
      }
      finally
      {
      }
      f();
      this.i.close();
      this.i = null;
    }
  }

  public final void delete()
  {
    close();
    Util.deleteContents(this.a);
  }

  public final DiskLruCache.Editor edit(String paramString)
  {
    return a(paramString, -1L);
  }

  public final void flush()
  {
    try
    {
      e();
      f();
      this.i.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final DiskLruCache.Snapshot get(String paramString)
  {
    while (true)
    {
      try
      {
        e();
        a(paramString);
        DiskLruCache.Entry localEntry = (DiskLruCache.Entry)this.j.get(paramString);
        if (localEntry == null)
        {
          localSnapshot = null;
          return localSnapshot;
        }
        if (!DiskLruCache.Entry.access$600(localEntry))
        {
          localSnapshot = null;
          continue;
        }
        InputStream[] arrayOfInputStream = new InputStream[this.g];
        int i1 = 0;
        int i2;
        try
        {
          if (i1 >= this.g)
            continue;
          arrayOfInputStream[i1] = new FileInputStream(localEntry.getCleanFile(i1));
          i1++;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          i2 = 0;
          if (i2 >= this.g)
            break label217;
        }
        if (arrayOfInputStream[i2] != null)
        {
          Util.closeQuietly(arrayOfInputStream[i2]);
          i2++;
          continue;
          this.k = (1 + this.k);
          this.i.append("READ " + paramString + '\n');
          if (d())
            this.executorService.submit(this.m);
          localSnapshot = new DiskLruCache.Snapshot(this, paramString, DiskLruCache.Entry.access$1200(localEntry), arrayOfInputStream, DiskLruCache.Entry.access$1000(localEntry), null);
          continue;
        }
      }
      finally
      {
      }
      label217: DiskLruCache.Snapshot localSnapshot = null;
    }
  }

  public final File getDirectory()
  {
    return this.a;
  }

  public final long getMaxSize()
  {
    return this.f;
  }

  public final boolean isClosed()
  {
    return this.i == null;
  }

  public final boolean remove(String paramString)
  {
    while (true)
    {
      try
      {
        e();
        a(paramString);
        DiskLruCache.Entry localEntry = (DiskLruCache.Entry)this.j.get(paramString);
        int i1;
        if (localEntry != null)
        {
          DiskLruCache.Editor localEditor = DiskLruCache.Entry.access$700(localEntry);
          i1 = 0;
          if (localEditor == null);
        }
        else
        {
          bool = false;
          return bool;
          this.h -= DiskLruCache.Entry.access$1000(localEntry)[i1];
          DiskLruCache.Entry.access$1000(localEntry)[i1] = 0L;
          i1++;
        }
        if (i1 < this.g)
        {
          File localFile = localEntry.getCleanFile(i1);
          if (localFile.delete())
            continue;
          throw new IOException("failed to delete " + localFile);
        }
      }
      finally
      {
      }
      this.k = (1 + this.k);
      this.i.append("REMOVE " + paramString + '\n');
      this.j.remove(paramString);
      if (d())
        this.executorService.submit(this.m);
      boolean bool = true;
    }
  }

  public final void setMaxSize(long paramLong)
  {
    try
    {
      this.f = paramLong;
      this.executorService.submit(this.m);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long size()
  {
    try
    {
      long l1 = this.h;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.DiskLruCache
 * JD-Core Version:    0.6.2
 */