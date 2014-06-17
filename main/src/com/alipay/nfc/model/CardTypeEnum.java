package com.alipay.nfc.model;

public enum CardTypeEnum
{
  private final String code;
  private final String memo;

  static
  {
    LeavedCard = new CardTypeEnum("LeavedCard", 5, "LEAVED_CARD", "卡已离开");
    CardTypeEnum[] arrayOfCardTypeEnum = new CardTypeEnum[6];
    arrayOfCardTypeEnum[0] = CreditCard;
    arrayOfCardTypeEnum[1] = DebitCard;
    arrayOfCardTypeEnum[2] = QuasiCreditCard;
    arrayOfCardTypeEnum[3] = TransferCard;
    arrayOfCardTypeEnum[4] = UnknowCard;
    arrayOfCardTypeEnum[5] = LeavedCard;
  }

  private CardTypeEnum(String paramString1, String paramString2)
  {
    this.code = paramString1;
    this.memo = paramString2;
  }

  public static CardTypeEnum getCardTypeEnumByCode(String paramString)
  {
    for (CardTypeEnum localCardTypeEnum : values())
      if (localCardTypeEnum.code.equals(paramString))
        return localCardTypeEnum;
    return null;
  }

  public final String getCode()
  {
    return this.code;
  }

  public final String getMemo()
  {
    return this.memo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.model.CardTypeEnum
 * JD-Core Version:    0.6.2
 */