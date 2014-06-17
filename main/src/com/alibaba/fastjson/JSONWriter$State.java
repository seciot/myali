package com.alibaba.fastjson;

public enum JSONWriter$State
{
  static
  {
    BeginArray = new State("BeginArray", 3);
    ArrayValue = new State("ArrayValue", 4);
    State[] arrayOfState = new State[5];
    arrayOfState[0] = BeginObject;
    arrayOfState[1] = PropertyKey;
    arrayOfState[2] = PropertyValue;
    arrayOfState[3] = BeginArray;
    arrayOfState[4] = ArrayValue;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.JSONWriter.State
 * JD-Core Version:    0.6.2
 */