package com.j256.ormlite.field;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface DatabaseField
{
  public static final int DEFAULT_MAX_FOREIGN_AUTO_REFRESH_LEVEL = 2;
  public static final String DEFAULT_STRING = "__ormlite__ no default value string was specified";
  public static final int NO_MAX_FOREIGN_AUTO_REFRESH_LEVEL_SPECIFIED = -1;

  public abstract boolean allowGeneratedIdInsert();

  public abstract boolean canBeNull();

  public abstract String columnDefinition();

  public abstract String columnName();

  public abstract DataType dataType();

  public abstract String defaultValue();

  public abstract boolean foreign();

  public abstract boolean foreignAutoCreate();

  public abstract boolean foreignAutoRefresh();

  public abstract String foreignColumnName();

  public abstract String format();

  public abstract boolean generatedId();

  public abstract String generatedIdSequence();

  public abstract boolean id();

  public abstract boolean index();

  public abstract String indexName();

  public abstract int maxForeignAutoRefreshLevel();

  public abstract boolean persisted();

  public abstract Class<? extends DataPersister> persisterClass();

  public abstract boolean throwIfNull();

  public abstract boolean unique();

  public abstract boolean uniqueCombo();

  public abstract boolean uniqueIndex();

  public abstract String uniqueIndexName();

  public abstract String unknownEnumName();

  public abstract boolean useGetSet();

  public abstract boolean version();

  public abstract int width();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.DatabaseField
 * JD-Core Version:    0.6.2
 */