package com.alipay.mobile.command.model;

public enum RuntimeTaskStatusEnum
{
  static
  {
    F = new RuntimeTaskStatusEnum("F", 2);
    RuntimeTaskStatusEnum[] arrayOfRuntimeTaskStatusEnum = new RuntimeTaskStatusEnum[3];
    arrayOfRuntimeTaskStatusEnum[0] = I;
    arrayOfRuntimeTaskStatusEnum[1] = S;
    arrayOfRuntimeTaskStatusEnum[2] = F;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.RuntimeTaskStatusEnum
 * JD-Core Version:    0.6.2
 */