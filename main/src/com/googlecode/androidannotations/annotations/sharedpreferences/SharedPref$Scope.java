package com.googlecode.androidannotations.annotations.sharedpreferences;

public enum SharedPref$Scope
{
  static
  {
    ACTIVITY = new Scope("ACTIVITY", 1);
    ACTIVITY_DEFAULT = new Scope("ACTIVITY_DEFAULT", 2);
    UNIQUE = new Scope("UNIQUE", 3);
    Scope[] arrayOfScope = new Scope[4];
    arrayOfScope[0] = APPLICATION_DEFAULT;
    arrayOfScope[1] = ACTIVITY;
    arrayOfScope[2] = ACTIVITY_DEFAULT;
    arrayOfScope[3] = UNIQUE;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.annotations.sharedpreferences.SharedPref.Scope
 * JD-Core Version:    0.6.2
 */