package com.googlecode.androidannotations.annotations.res;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface DimensionPixelSizeRes
{
  public abstract String resName();

  public abstract int value();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.annotations.res.DimensionPixelSizeRes
 * JD-Core Version:    0.6.2
 */