package android.util;

abstract class Base64$Coder
{
  public int op;
  public byte[] output;

  public abstract int maxOutputSize(int paramInt);

  public abstract boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.util.Base64.Coder
 * JD-Core Version:    0.6.2
 */