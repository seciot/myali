package com.alipay.mobile.common.cache.disk;

import com.alipay.mobile.common.logging.PerformanceLog;
import com.alipay.mobile.common.utils.SerialExecutor;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class DiskCache
{
  private SerialExecutor a = new SerialExecutor("DiskCache");
  private AtomicBoolean b = new AtomicBoolean();
  private AtomicBoolean c = new AtomicBoolean();
  protected String mDirectory;
  protected HashMap mEntities;
  protected HashMap mGroup;
  protected long mMaxsize;
  protected Meta mMeta;
  protected long mSize;

  protected DiskCache()
  {
    this.b.set(false);
    this.c.set(false);
  }

  private void a()
  {
    if (this.b.get())
      return;
    PerformanceLog.getInstance().log("diskCache start write meta.");
    this.b.set(true);
    this.a.execute(new DiskCache.4(this));
  }

  private void a(String paramString)
  {
    if (paramString != null)
    {
      removeEntity(paramString);
      removeCacheFile(paramString);
    }
  }

  // ERROR //
  private static byte[] b(String paramString)
  {
    // Byte code:
    //   0: new 81	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_1
    //   9: aload_1
    //   10: invokevirtual 85	java/io/File:exists	()Z
    //   13: ifne +16 -> 29
    //   16: new 90	com/alipay/mobile/common/cache/disk/CacheException
    //   19: dup
    //   20: getstatic 140	com/alipay/mobile/common/cache/disk/CacheException$ErrorCode:READ_IO_ERROR	Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;
    //   23: ldc 142
    //   25: invokespecial 101	com/alipay/mobile/common/cache/disk/CacheException:<init>	(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V
    //   28: athrow
    //   29: new 144	java/io/FileInputStream
    //   32: dup
    //   33: aload_1
    //   34: invokespecial 145	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   37: astore_2
    //   38: aload_2
    //   39: invokevirtual 149	java/io/FileInputStream:available	()I
    //   42: newarray byte
    //   44: astore 7
    //   46: aload_2
    //   47: aload 7
    //   49: invokevirtual 153	java/io/FileInputStream:read	([B)I
    //   52: pop
    //   53: aload_2
    //   54: invokevirtual 154	java/io/FileInputStream:close	()V
    //   57: aload 7
    //   59: areturn
    //   60: astore 9
    //   62: new 122	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   69: aload 9
    //   71: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: pop
    //   78: aload 7
    //   80: areturn
    //   81: astore_3
    //   82: aconst_null
    //   83: astore_2
    //   84: new 90	com/alipay/mobile/common/cache/disk/CacheException
    //   87: dup
    //   88: getstatic 140	com/alipay/mobile/common/cache/disk/CacheException$ErrorCode:READ_IO_ERROR	Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;
    //   91: aload_3
    //   92: invokevirtual 131	java/io/IOException:getMessage	()Ljava/lang/String;
    //   95: invokespecial 101	com/alipay/mobile/common/cache/disk/CacheException:<init>	(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V
    //   98: athrow
    //   99: astore 4
    //   101: aload_2
    //   102: ifnull +7 -> 109
    //   105: aload_2
    //   106: invokevirtual 154	java/io/FileInputStream:close	()V
    //   109: aload 4
    //   111: athrow
    //   112: astore 5
    //   114: new 122	java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   121: aload 5
    //   123: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: pop
    //   130: goto -21 -> 109
    //   133: astore 4
    //   135: aconst_null
    //   136: astore_2
    //   137: goto -36 -> 101
    //   140: astore_3
    //   141: goto -57 -> 84
    //
    // Exception table:
    //   from	to	target	type
    //   53	57	60	java/io/IOException
    //   29	38	81	java/io/IOException
    //   38	53	99	finally
    //   84	99	99	finally
    //   105	109	112	java/io/IOException
    //   29	38	133	finally
    //   38	53	140	java/io/IOException
  }

  void addEntity(Entity paramEntity)
  {
    synchronized (this.mEntities)
    {
      this.mEntities.put(paramEntity.getUrl(), paramEntity);
      String str = paramEntity.getGroup();
      if ((str != null) && (!str.equalsIgnoreCase("-")))
      {
        Object localObject2 = (Set)this.mGroup.get(str);
        if (localObject2 == null)
        {
          localObject2 = new HashSet();
          this.mGroup.put(str, localObject2);
        }
        ((Set)localObject2).add(paramEntity);
      }
      this.mSize += paramEntity.getSize();
      return;
    }
  }

  void clear()
  {
    this.a.execute(new DiskCache.3(this));
  }

  public void close()
  {
    a();
  }

  boolean containEntity(String paramString)
  {
    synchronized (this.mEntities)
    {
      boolean bool = this.mEntities.containsKey(paramString);
      return bool;
    }
  }

  public byte[] get(String paramString1, String paramString2)
  {
    if (!this.c.get())
      throw new RuntimeException("DiskCache must call open() before");
    if ((paramString1 != null) && (paramString1.equalsIgnoreCase("-")))
      throw new RuntimeException("owner can't be -");
    PerformanceLog.getInstance().log("diskCache start get:" + paramString2);
    if (!containEntity(paramString2));
    Entity localEntity;
    do
    {
      return null;
      localEntity = getEntity(paramString2);
      if (localEntity.expire())
      {
        remove(paramString2);
        return null;
      }
    }
    while (!localEntity.authenticate(paramString1));
    localEntity.use();
    String str = obtainKey(localEntity.getUrl());
    byte[] arrayOfByte = b(getDirectory() + File.separatorChar + str);
    PerformanceLog.getInstance().log("diskCache finish get:" + paramString2);
    return arrayOfByte;
  }

  public int getCacheCount()
  {
    return this.mEntities.size();
  }

  public String getDirectory()
  {
    return this.mDirectory;
  }

  Entity getEntity(String paramString)
  {
    synchronized (this.mEntities)
    {
      Entity localEntity = (Entity)this.mEntities.get(paramString);
      return localEntity;
    }
  }

  public long getMaxsize()
  {
    return this.mMaxsize;
  }

  // ERROR //
  public java.io.Serializable getSerializable(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokevirtual 275	com/alipay/mobile/common/cache/disk/DiskCache:get	(Ljava/lang/String;Ljava/lang/String;)[B
    //   6: astore_3
    //   7: aload_3
    //   8: ifnonnull +5 -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: new 277	java/io/ByteArrayInputStream
    //   16: dup
    //   17: aload_3
    //   18: invokespecial 279	java/io/ByteArrayInputStream:<init>	([B)V
    //   21: astore 4
    //   23: new 281	java/io/ObjectInputStream
    //   26: dup
    //   27: aload 4
    //   29: invokespecial 284	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   32: astore 5
    //   34: aload 5
    //   36: invokevirtual 288	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   39: checkcast 290	java/io/Serializable
    //   42: astore 12
    //   44: aload 4
    //   46: invokevirtual 293	java/io/InputStream:close	()V
    //   49: aload 5
    //   51: invokevirtual 294	java/io/ObjectInputStream:close	()V
    //   54: aload 12
    //   56: areturn
    //   57: astore 13
    //   59: new 122	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   66: aload 13
    //   68: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: pop
    //   75: aload 12
    //   77: areturn
    //   78: astore 18
    //   80: aconst_null
    //   81: astore 5
    //   83: aload 18
    //   85: astore 6
    //   87: new 90	com/alipay/mobile/common/cache/disk/CacheException
    //   90: dup
    //   91: aload 6
    //   93: invokevirtual 295	java/io/StreamCorruptedException:getMessage	()Ljava/lang/String;
    //   96: invokespecial 296	com/alipay/mobile/common/cache/disk/CacheException:<init>	(Ljava/lang/String;)V
    //   99: athrow
    //   100: astore 7
    //   102: aload 4
    //   104: invokevirtual 293	java/io/InputStream:close	()V
    //   107: aload 5
    //   109: ifnull +8 -> 117
    //   112: aload 5
    //   114: invokevirtual 294	java/io/ObjectInputStream:close	()V
    //   117: aload 7
    //   119: athrow
    //   120: astore 17
    //   122: aconst_null
    //   123: astore 5
    //   125: aload 17
    //   127: astore 10
    //   129: new 90	com/alipay/mobile/common/cache/disk/CacheException
    //   132: dup
    //   133: aload 10
    //   135: invokevirtual 131	java/io/IOException:getMessage	()Ljava/lang/String;
    //   138: invokespecial 296	com/alipay/mobile/common/cache/disk/CacheException:<init>	(Ljava/lang/String;)V
    //   141: athrow
    //   142: new 90	com/alipay/mobile/common/cache/disk/CacheException
    //   145: dup
    //   146: aload 11
    //   148: invokevirtual 297	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   151: invokespecial 296	com/alipay/mobile/common/cache/disk/CacheException:<init>	(Ljava/lang/String;)V
    //   154: athrow
    //   155: astore 8
    //   157: new 122	java/lang/StringBuilder
    //   160: dup
    //   161: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   164: aload 8
    //   166: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: pop
    //   173: goto -56 -> 117
    //   176: astore 15
    //   178: aload 15
    //   180: astore 7
    //   182: aconst_null
    //   183: astore 5
    //   185: goto -83 -> 102
    //   188: astore 11
    //   190: goto -48 -> 142
    //   193: astore 10
    //   195: goto -66 -> 129
    //   198: astore 6
    //   200: goto -113 -> 87
    //   203: astore 16
    //   205: aload 16
    //   207: astore 11
    //   209: aconst_null
    //   210: astore 5
    //   212: goto -70 -> 142
    //
    // Exception table:
    //   from	to	target	type
    //   44	54	57	java/io/IOException
    //   23	34	78	java/io/StreamCorruptedException
    //   34	44	100	finally
    //   87	100	100	finally
    //   129	142	100	finally
    //   142	155	100	finally
    //   23	34	120	java/io/IOException
    //   102	107	155	java/io/IOException
    //   112	117	155	java/io/IOException
    //   23	34	176	finally
    //   34	44	188	java/lang/ClassNotFoundException
    //   34	44	193	java/io/IOException
    //   34	44	198	java/io/StreamCorruptedException
    //   23	34	203	java/lang/ClassNotFoundException
  }

  public long getSize()
  {
    synchronized (this.mEntities)
    {
      long l = this.mSize;
      return l;
    }
  }

  protected abstract void init();

  protected String obtainKey(String paramString)
  {
    return Integer.toHexString(paramString.hashCode());
  }

  public void open()
  {
    if (this.c.get())
      return;
    PerformanceLog.getInstance().log("diskCache start open.");
    init();
    this.mMeta = new Meta(this);
    this.mMeta.init();
    this.c.set(true);
    PerformanceLog.getInstance().log("diskCache finish open.");
  }

  public void put(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, long paramLong1, long paramLong2, String paramString4)
  {
    if (!this.c.get())
      throw new RuntimeException("DiskCache must call open() before");
    if ((paramString1 != null) && (paramString1.equalsIgnoreCase("-")))
      throw new RuntimeException("owner can't be -");
    if ((paramString2 != null) && (paramString2.equalsIgnoreCase("-")))
      throw new RuntimeException("group can't be -");
    PerformanceLog.getInstance().log("diskCache start put:" + paramString3);
    String str = obtainKey(paramString3);
    addEntity(new Entity(paramString1, paramString2, paramString3, 0, paramArrayOfByte.length, str, paramLong1, paramLong2, paramString4));
    this.a.execute(new DiskCache.1(this, str, paramArrayOfByte, paramString3));
  }

  // ERROR //
  public void putSerializable(String paramString1, String paramString2, String paramString3, java.io.Serializable paramSerializable, long paramLong1, long paramLong2, String paramString4)
  {
    // Byte code:
    //   0: new 339	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 340	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore 10
    //   9: aconst_null
    //   10: astore 11
    //   12: new 342	java/io/ObjectOutputStream
    //   15: dup
    //   16: aload 10
    //   18: invokespecial 345	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: astore 12
    //   23: aload 12
    //   25: aload 4
    //   27: invokevirtual 349	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   30: aload_0
    //   31: aload_1
    //   32: aload_2
    //   33: aload_3
    //   34: aload 10
    //   36: invokevirtual 353	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   39: lload 5
    //   41: lload 7
    //   43: aload 9
    //   45: invokevirtual 355	com/alipay/mobile/common/cache/disk/DiskCache:put	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    //   48: aload 10
    //   50: invokevirtual 356	java/io/ByteArrayOutputStream:close	()V
    //   53: aload 12
    //   55: invokevirtual 357	java/io/ObjectOutputStream:close	()V
    //   58: return
    //   59: astore 17
    //   61: new 122	java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   68: aload 17
    //   70: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: pop
    //   77: return
    //   78: astore 13
    //   80: new 211	java/lang/RuntimeException
    //   83: dup
    //   84: aload 13
    //   86: invokespecial 360	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   89: athrow
    //   90: astore 14
    //   92: aload 10
    //   94: invokevirtual 356	java/io/ByteArrayOutputStream:close	()V
    //   97: aload 11
    //   99: ifnull +8 -> 107
    //   102: aload 11
    //   104: invokevirtual 357	java/io/ObjectOutputStream:close	()V
    //   107: aload 14
    //   109: athrow
    //   110: astore 15
    //   112: new 122	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   119: aload 15
    //   121: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: pop
    //   128: goto -21 -> 107
    //   131: astore 14
    //   133: aload 12
    //   135: astore 11
    //   137: goto -45 -> 92
    //   140: astore 13
    //   142: aload 12
    //   144: astore 11
    //   146: goto -66 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   48	58	59	java/io/IOException
    //   12	23	78	java/io/IOException
    //   12	23	90	finally
    //   80	90	90	finally
    //   92	97	110	java/io/IOException
    //   102	107	110	java/io/IOException
    //   23	48	131	finally
    //   23	48	140	java/io/IOException
  }

  public void remove(String paramString)
  {
    if (!this.c.get())
      throw new RuntimeException("DiskCache must call open() before");
    PerformanceLog.getInstance().log("diskCache start remove:" + paramString);
    a(paramString);
  }

  public void removeByGroup(String paramString)
  {
    if (!this.c.get())
      throw new RuntimeException("DiskCache must call open() before");
    if (paramString != null)
    {
      if (paramString.equalsIgnoreCase("-"))
        throw new RuntimeException("group can't be -");
      Set localSet = (Set)this.mGroup.get(paramString);
      if (localSet != null)
      {
        HashSet localHashSet = new HashSet();
        Iterator localIterator1 = localSet.iterator();
        while (localIterator1.hasNext())
          localHashSet.add(((Entity)localIterator1.next()).getUrl());
        Iterator localIterator2 = localHashSet.iterator();
        while (localIterator2.hasNext())
        {
          String str = (String)localIterator2.next();
          a(str);
          PerformanceLog.getInstance().log("diskCache start remove group:" + paramString + " url :[" + str + "]");
        }
      }
    }
  }

  protected void removeCacheFile(String paramString)
  {
    String str = obtainKey(paramString);
    this.a.execute(new DiskCache.2(this, str, paramString));
  }

  void removeEntity(String paramString)
  {
    synchronized (this.mEntities)
    {
      Entity localEntity = (Entity)this.mEntities.get(paramString);
      if (localEntity != null)
      {
        this.mEntities.remove(paramString);
        String str = localEntity.getGroup();
        if ((str != null) && (!str.equalsIgnoreCase("-")))
        {
          Set localSet = (Set)this.mGroup.get(str);
          if (localSet != null)
            localSet.remove(localEntity);
        }
        this.mSize -= localEntity.getSize();
      }
      return;
    }
  }

  protected final void setDirectory(String paramString)
  {
    this.mDirectory = paramString;
    if (this.mDirectory == null)
      throw new IllegalArgumentException("Not set valid cache directory.");
    File localFile = new File(this.mDirectory);
    if ((!localFile.exists()) && (!localFile.mkdir()))
      throw new IllegalArgumentException("An Error occured while  cache directory.");
    if (!localFile.isDirectory())
      throw new IllegalArgumentException("Not set valid cache directory.");
  }

  protected final void setMaxsize(long paramLong)
  {
    this.mMaxsize = paramLong;
    if (this.mMaxsize <= 0L)
      throw new IllegalArgumentException("Not set valid cache size.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.DiskCache
 * JD-Core Version:    0.6.2
 */