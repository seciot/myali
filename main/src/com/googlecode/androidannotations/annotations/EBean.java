package com.googlecode.androidannotations.annotations;

import com.googlecode.androidannotations.api.Scope;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface EBean
{
  public abstract Scope scope();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.annotations.EBean
 * JD-Core Version:    0.6.2
 */