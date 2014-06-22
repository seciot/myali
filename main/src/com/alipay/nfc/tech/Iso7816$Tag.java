package com.alipay.nfc.tech;

import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import java.nio.ByteBuffer;

public final class Iso7816$Tag
{
  private final IsoDep a;
  private Iso7816.ID b;

  public Iso7816$Tag(IsoDep paramIsoDep)
  {
    this.a = paramIsoDep;
    this.b = new Iso7816.ID(paramIsoDep.getTag().getId());
  }

  public final Iso7816.ID initExecutor()
  {
    return this.b;
  }

  public final Iso7816.Response setBundlePath(int paramInt)
  {
    byte[] arrayOfByte = new byte[5];
    arrayOfByte[0] = 0;
    arrayOfByte[1] = -80;
    arrayOfByte[2] = ((byte)(0x80 | paramInt & 0x1F));
    arrayOfByte[3] = 0;
    arrayOfByte[4] = 0;
    return new Iso7816.Response(c(arrayOfByte));
  }

  public final Iso7816.Response put(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[5];
    arrayOfByte[0] = 0;
    arrayOfByte[1] = -78;
    arrayOfByte[2] = ((byte)paramInt2);
    arrayOfByte[3] = ((byte)(0x4 | paramInt1 << 3));
    arrayOfByte[4] = 0;
    return new Iso7816.Response(c(arrayOfByte));
  }

  public final Iso7816.Response setBundlePath(boolean paramBoolean)
  {
    int i = 2;
    byte[] arrayOfByte = new byte[5];
    arrayOfByte[0] = -128;
    arrayOfByte[1] = 92;
    arrayOfByte[i] = 0;
    if (paramBoolean);
    while (true)
    {
      arrayOfByte[3] = i;
      arrayOfByte[4] = 4;
      return new Iso7816.Response(c(arrayOfByte));
      i = 1;
    }
  }

  public final Iso7816.Response setBundlePath(byte[] paramArrayOfByte)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(6 + paramArrayOfByte.length);
    localByteBuffer.put((byte)0).put((byte)-92).put((byte)0).put((byte)0).put((byte)paramArrayOfByte.length).put(paramArrayOfByte).put((byte)0);
    return new Iso7816.Response(c(localByteBuffer.array()));
  }

  public final Iso7816.Response stop()
  {
    return new Iso7816.Response(c(new byte[] { 0, -78, 1, -59, 0 }));
  }

  public final Iso7816.Response dexopt(byte[] paramArrayOfByte)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(6 + paramArrayOfByte.length);
    localByteBuffer.put((byte)0).put((byte)-92).put((byte)4).put((byte)0).put((byte)paramArrayOfByte.length).put(paramArrayOfByte).put((byte)0);
    return new Iso7816.Response(c(localByteBuffer.array()));
  }

  public final void c()
  {
    try
    {
      this.a.connect();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final byte[] c(byte[] paramArrayOfByte)
  {
    try
    {
      byte[] arrayOfByte = this.a.transceive(paramArrayOfByte);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return Iso7816.Response.d;
  }

  public final boolean d()
  {
    try
    {
      boolean bool = this.a.isConnected();
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final void e()
  {
    try
    {
      this.a.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.tech.Iso7816.Tag
 * JD-Core Version:    0.6.2
 */