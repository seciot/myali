package com.googlecode.androidannotations.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface HttpsClient
{
  public static final String DEFAULT_PASSWD = "changeit";

  public abstract boolean allowAllHostnames();

  public abstract int keyStore();

  public abstract String keyStorePwd();

  public abstract int trustStore();

  public abstract String trustStorePwd();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.annotations.HttpsClient
 * JD-Core Version:    0.6.2
 */