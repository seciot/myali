package com.alipay.mobile.framework.cardbin;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable(tableName="cardbin_table")
public class Cardbin
  implements Serializable
{
  public static final String BIN_VALUE = "binValue";
  public static final String CARD_LENGTH = "cardLength";
  private static final long serialVersionUID = 1L;

  @DatabaseField
  private String bandAlias;

  @DatabaseField
  private String binValue;

  @DatabaseField
  private int cardLength;

  @DatabaseField
  private String cardName;

  @DatabaseField
  private String cardType;

  @DatabaseField(generatedId=true)
  private int id;

  public String getBandAlias()
  {
    return this.bandAlias;
  }

  public String getBinValue()
  {
    return this.binValue;
  }

  public int getCardLength()
  {
    return this.cardLength;
  }

  public String getCardName()
  {
    return this.cardName;
  }

  public String getCardType()
  {
    return this.cardType;
  }

  public int getId()
  {
    return this.id;
  }

  public void setBandAlias(String paramString)
  {
    this.bandAlias = paramString;
  }

  public void setBinValue(String paramString)
  {
    this.binValue = paramString;
  }

  public void setCardLength(int paramInt)
  {
    this.cardLength = paramInt;
  }

  public void setCardName(String paramString)
  {
    this.cardName = paramString;
  }

  public void setCardType(String paramString)
  {
    this.cardType = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public String toString()
  {
    return " (" + getBinValue() + ":" + getCardLength() + ":" + getCardType() + ":" + getCardName() + ":" + getBandAlias() + ")";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.cardbin.Cardbin
 * JD-Core Version:    0.6.2
 */