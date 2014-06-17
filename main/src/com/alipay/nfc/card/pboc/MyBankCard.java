package com.alipay.nfc.card.pboc;

import com.alipay.nfc.Util;
import com.alipay.nfc.tech.Iso7816.Response;
import com.alipay.nfc.tech.Iso7816.Tag;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MyBankCard extends PbocCard
{
  private MyBankCard(Iso7816.Tag paramTag)
  {
    super(paramTag);
    this.p = "UNKNOWN_CARD";
    this.o = "?";
  }

  static final MyBankCard a(Iso7816.Tag paramTag)
  {
    paramTag.b(c);
    boolean bool1 = paramTag.b(c).c();
    MyBankCard localMyBankCard = null;
    byte[] arrayOfByte1;
    byte[] arrayOfByte2;
    byte[] arrayOfByte3;
    byte[] arrayOfByte4;
    byte[] arrayOfByte5;
    byte[] arrayOfByte6;
    StringBuilder localStringBuilder1;
    int i;
    label357: LogInfoInner localLogInfoInner;
    byte[] arrayOfByte8;
    if (bool1)
    {
      Iso7816.Response localResponse1 = paramTag.a(1, 1);
      boolean bool2 = localResponse1.c();
      localMyBankCard = null;
      if (bool2)
      {
        arrayOfByte1 = localResponse1.b((byte)79);
        if (Util.b(arrayOfByte1).equalsIgnoreCase("a000000333010101"))
        {
          localMyBankCard = new MyBankCard(paramTag);
          localMyBankCard.p = "DEBIT_CARD";
          arrayOfByte2 = localResponse1.b((byte)80);
          if ((arrayOfByte1 == null) || (!paramTag.b(arrayOfByte1).c()))
            break label999;
          arrayOfByte3 = new Iso7816.Response(paramTag.c(new byte[] { 0, -78, 1, 12, 60 })).b((byte)87);
          arrayOfByte4 = new Iso7816.Response(paramTag.c(new byte[] { -128, -54, -97, 121, 0 })).b((byte)121);
          arrayOfByte5 = new Iso7816.Response(paramTag.c(new byte[] { -128, -54, -97, 119, 0 })).b((byte)119);
          arrayOfByte6 = new Iso7816.Response(paramTag.c(new byte[] { -128, -54, -97, 120, 0 })).b((byte)120);
          new Iso7816.Response(paramTag.c(new byte[] { -128, -54, -97, 79, 0 }));
          localMyBankCard.s = new ArrayList();
          localStringBuilder1 = new StringBuilder();
          i = 0;
          if (localMyBankCard.s.size() >= 10)
            break label1173;
          byte[] arrayOfByte7 = { 0, -78, 1, 92, 0 };
          arrayOfByte7[2] = ((byte)(i + arrayOfByte7[2]));
          Iso7816.Response localResponse2 = new Iso7816.Response(paramTag.c(arrayOfByte7));
          if (!localResponse2.c())
            break label1173;
          localLogInfoInner = new LogInfoInner();
          arrayOfByte8 = localResponse2.b();
          int j = Integer.parseInt(Util.c(arrayOfByte8, 6, 6));
          switch (Integer.parseInt(Util.c(arrayOfByte8, 42, 1), 16))
          {
          default:
            if (j != 0)
            {
              localLogInfoInner.e = "未知";
              label612: Object[] arrayOfObject1 = new Object[6];
              arrayOfObject1[0] = Byte.valueOf(arrayOfByte8[0]);
              arrayOfObject1[1] = Byte.valueOf(arrayOfByte8[1]);
              arrayOfObject1[2] = Byte.valueOf(arrayOfByte8[2]);
              arrayOfObject1[3] = Byte.valueOf(arrayOfByte8[3]);
              arrayOfObject1[4] = Byte.valueOf(arrayOfByte8[4]);
              arrayOfObject1[5] = Byte.valueOf(arrayOfByte8[5]);
              localLogInfoInner.a = String.format("%02X.%02X.%02X %02X:%02X:%02X ", arrayOfObject1);
              localStringBuilder1.append("<br />").append(localLogInfoInner.a);
              localLogInfoInner.b = Util.a(j / 100.0F);
              localStringBuilder1.append(" | ").append(localLogInfoInner.b);
              switch (Integer.parseInt(Util.c(arrayOfByte8, 20, 2), 16))
              {
              default:
                localLogInfoInner.c = "未知";
                label791: localStringBuilder1.append(" | ").append(localLogInfoInner.c);
                if (Util.c(Arrays.copyOfRange(arrayOfByte8, 22, 42)) == null);
                break;
              case 342:
              case 2112:
              }
            }
            break;
          case 0:
          case 1:
          case 2:
          case 7:
          case 8:
          case 9:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 48:
          case 49:
          case 64:
          }
        }
      }
    }
    while (true)
    {
      try
      {
        localLogInfoInner.d = new String(Util.c(Arrays.copyOfRange(arrayOfByte8, 22, 42)), "gbk");
        localStringBuilder1.append(" | ").append(localLogInfoInner.d);
        localStringBuilder1.append(" | ").append(localLogInfoInner.e);
        localStringBuilder1.append(" | type:").append(Util.c(arrayOfByte8, 44, 1) + "<br>");
        localMyBankCard.s.add(localLogInfoInner);
        i++;
        break label357;
        if (Util.b(arrayOfByte1).equalsIgnoreCase("a000000333010102"))
        {
          localMyBankCard = new MyBankCard(paramTag);
          localMyBankCard.p = "CREDIT_CARD";
          break;
        }
        if (Util.b(arrayOfByte1).equalsIgnoreCase("a000000333010103"))
        {
          localMyBankCard = new MyBankCard(paramTag);
          localMyBankCard.p = "QUASI_CREDIT_CARD";
          break;
        }
        localMyBankCard = null;
        label999: return localMyBankCard;
        localLogInfoInner.e = "商品或服务";
        break label612;
        localLogInfoInner.e = "提款/现金付款";
        break label612;
        localLogInfoInner.e = "调整";
        break label612;
        localLogInfoInner.e = "信用证";
        break label612;
        localLogInfoInner.e = "直接转账";
        break label612;
        localLogInfoInner.e = "商品或服务并现金支付";
        break label612;
        localLogInfoInner.e = "还款";
        break label612;
        localLogInfoInner.e = "存款";
        break label612;
        localLogInfoInner.e = "调整";
        break label612;
        localLogInfoInner.e = "圈存";
        break label612;
        localLogInfoInner.e = "圈存";
        break label612;
        localLogInfoInner.e = "查询可用资金";
        break label612;
        localLogInfoInner.e = "查询余额";
        break label612;
        localLogInfoInner.e = "账户转账";
        break label612;
        localLogInfoInner.c = "人民币";
        break label791;
        localLogInfoInner.c = "美元";
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
      }
      localLogInfoInner.d = "";
    }
    label1173: int k = Integer.parseInt(Util.b(arrayOfByte4));
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Float.valueOf(k / 100.0F);
    localMyBankCard.k = String.format("%.2f", arrayOfObject2);
    int m = Integer.parseInt(Util.b(arrayOfByte5));
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = Float.valueOf(m / 100.0F);
    localMyBankCard.l = String.format("%.2f", arrayOfObject3);
    int n = Integer.parseInt(Util.b(arrayOfByte6));
    Object[] arrayOfObject4 = new Object[1];
    arrayOfObject4[0] = Float.valueOf(n / 100.0F);
    localMyBankCard.m = String.format("%.2f", arrayOfObject4);
    if (Util.c(arrayOfByte2) != null);
    try
    {
      localMyBankCard.q = new String(arrayOfByte2, "gbk");
      label1316: localMyBankCard.j = String.valueOf(Util.a(new Iso7816.Response(paramTag.c(new byte[] { -128, -54, -97, 54, 0 })).a(new byte[] { -97, 54 })));
      localMyBankCard.r = localStringBuilder1.toString();
      Iso7816.Response localResponse3 = new Iso7816.Response(paramTag.c(new byte[] { 0, -78, 1, 20, 68 }));
      String str;
      byte[] arrayOfByte9;
      label1581: byte[] arrayOfByte10;
      if ((arrayOfByte3 != null) && (arrayOfByte3.length > 0))
      {
        str = Util.b(arrayOfByte3);
        if (str.contains("D"))
        {
          localMyBankCard.g = str.substring(0, str.indexOf("D"));
          arrayOfByte9 = localResponse3.a(new byte[] { 95, 37 });
          if (arrayOfByte9 != null)
          {
            if (arrayOfByte9.length != 3)
              break label1923;
            StringBuilder localStringBuilder4 = new StringBuilder("20");
            Object[] arrayOfObject7 = new Object[3];
            arrayOfObject7[0] = Byte.valueOf(arrayOfByte9[0]);
            arrayOfObject7[1] = Byte.valueOf(arrayOfByte9[1]);
            arrayOfObject7[2] = Byte.valueOf(arrayOfByte9[2]);
            localMyBankCard.i = String.format("%02X.%02X.%02X", arrayOfObject7);
          }
          arrayOfByte10 = localResponse3.a(new byte[] { 95, 36 });
          if (arrayOfByte10 != null)
          {
            if (localMyBankCard.i == null)
              break label1995;
            localMyBankCard.i += " - ";
            label1642: if (arrayOfByte10.length != 3)
              break label2004;
            StringBuilder localStringBuilder3 = new StringBuilder().append(localMyBankCard.i).append("20");
            Object[] arrayOfObject6 = new Object[3];
            arrayOfObject6[0] = Byte.valueOf(arrayOfByte10[0]);
            arrayOfObject6[1] = Byte.valueOf(arrayOfByte10[1]);
            arrayOfObject6[2] = Byte.valueOf(arrayOfByte10[2]);
            localMyBankCard.i = String.format("%02X.%02X.%02X", arrayOfObject6);
          }
        }
      }
      while (true)
      {
        Iso7816.Response localResponse4 = new Iso7816.Response(paramTag.c(new byte[] { 0, -78, 1, 12, 60 }));
        if (Util.c(localResponse4.a(new byte[] { -97, 97 })) != null)
          localMyBankCard.n = new String(Util.c(localResponse4.a(new byte[] { -97, 97 })));
        if (Util.c(localResponse4.a(new byte[] { 95, 32 })) == null)
          break label2100;
        try
        {
          localMyBankCard.f = new String(Util.c(localResponse4.a(new byte[] { 95, 32 })), "gbk");
          return localMyBankCard;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException2)
        {
          return localMyBankCard;
        }
        localMyBankCard.g = str;
        break;
        localMyBankCard.g = Util.b(localResponse3.b((byte)90));
        break;
        label1923: if (arrayOfByte9.length != 4)
          break label1581;
        Object[] arrayOfObject8 = new Object[4];
        arrayOfObject8[0] = Byte.valueOf(arrayOfByte9[0]);
        arrayOfObject8[1] = Byte.valueOf(arrayOfByte9[1]);
        arrayOfObject8[2] = Byte.valueOf(arrayOfByte9[2]);
        arrayOfObject8[3] = Byte.valueOf(arrayOfByte9[3]);
        localMyBankCard.i = String.format("%02X%02X.%02X.%02X", arrayOfObject8);
        break label1581;
        label1995: localMyBankCard.i = "";
        break label1642;
        label2004: if (arrayOfByte10.length == 4)
        {
          StringBuilder localStringBuilder2 = new StringBuilder().append(localMyBankCard.i);
          Object[] arrayOfObject5 = new Object[4];
          arrayOfObject5[0] = Byte.valueOf(arrayOfByte10[0]);
          arrayOfObject5[1] = Byte.valueOf(arrayOfByte10[1]);
          arrayOfObject5[2] = Byte.valueOf(arrayOfByte10[2]);
          arrayOfObject5[3] = Byte.valueOf(arrayOfByte10[3]);
          localMyBankCard.i = String.format("%02X%02X.%02X.%02X", arrayOfObject5);
        }
      }
      label2100: localMyBankCard.f = "";
      return localMyBankCard;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException3)
    {
      break label1316;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.card.pboc.MyBankCard
 * JD-Core Version:    0.6.2
 */