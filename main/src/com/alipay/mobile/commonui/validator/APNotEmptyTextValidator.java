package com.alipay.mobile.commonui.validator;

public class APNotEmptyTextValidator
  implements APValidator
{
  public boolean validate(String paramString)
  {
    return (paramString == null) || (paramString.trim() == "");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.validator.APNotEmptyTextValidator
 * JD-Core Version:    0.6.2
 */