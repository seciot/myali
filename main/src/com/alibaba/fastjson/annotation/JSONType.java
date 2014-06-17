package com.alibaba.fastjson.annotation;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface JSONType
{
  public abstract boolean alphabetic();

  public abstract boolean asm();

  public abstract String[] ignores();

  public abstract String[] orders();

  public abstract SerializerFeature[] serialzeFeatures();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.annotation.JSONType
 * JD-Core Version:    0.6.2
 */