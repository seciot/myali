package com.j256.ormlite.android.apptools;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.ForeignCollectionField;
import com.j256.ormlite.table.DatabaseTable;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrmLiteConfigUtil
{
  protected static final String RAW_DIR_NAME = "raw";
  protected static final String RESOURCE_DIR_NAME = "res";
  private static final DatabaseType a = new SqliteAndroidDatabaseType();
  protected static int maxFindSourceLevel = 20;

  private static String a(File paramFile)
  {
    BufferedReader localBufferedReader = new BufferedReader(new FileReader(paramFile));
    try
    {
      String[] arrayOfString;
      do
      {
        String str1;
        do
        {
          str1 = localBufferedReader.readLine();
          if (str1 == null)
            return null;
        }
        while (!str1.contains("package"));
        arrayOfString = str1.split("[ \t;]");
      }
      while ((arrayOfString.length <= 1) || (!arrayOfString[0].equals("package")));
      String str2 = arrayOfString[1];
      return str2;
    }
    finally
    {
      localBufferedReader.close();
    }
  }

  private static void a(BufferedWriter paramBufferedWriter)
  {
    paramBufferedWriter.append('#');
    paramBufferedWriter.newLine();
    paramBufferedWriter.append("# generated on ").append(new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(new Date()));
    paramBufferedWriter.newLine();
    paramBufferedWriter.append('#');
    paramBufferedWriter.newLine();
  }

  private static void a(BufferedWriter paramBufferedWriter, File paramFile, int paramInt)
  {
    File[] arrayOfFile = paramFile.listFiles();
    int i = arrayOfFile.length;
    int j = 0;
    if (j < i)
    {
      File localFile = arrayOfFile[j];
      if (localFile.isDirectory())
        if (paramInt < maxFindSourceLevel)
          a(paramBufferedWriter, localFile, paramInt + 1);
      while (true)
      {
        j++;
        break;
        if (localFile.getName().endsWith(".java"))
        {
          String str1 = a(localFile);
          if (str1 == null)
          {
            System.err.println("Could not find package name for: " + localFile);
          }
          else
          {
            String str2 = localFile.getName();
            String str3 = str2.substring(0, -5 + str2.length());
            String str4 = str1 + "." + str3;
            try
            {
              Class localClass = Class.forName(str4);
              if (a(localClass))
                a(paramBufferedWriter, localClass);
            }
            catch (Throwable localThrowable)
            {
              System.err.println("Could not load class file for: " + localFile);
              System.err.println("     " + localThrowable);
            }
          }
        }
      }
    }
  }

  private static void a(BufferedWriter paramBufferedWriter, Class<?> paramClass)
  {
    String str = DatabaseTableConfig.extractTableName(paramClass);
    ArrayList localArrayList = new ArrayList();
    for (Object localObject = paramClass; localObject != null; localObject = ((Class)localObject).getSuperclass())
      for (Field localField : ((Class)localObject).getDeclaredFields())
      {
        DatabaseFieldConfig localDatabaseFieldConfig = DatabaseFieldConfig.fromField(a, str, localField);
        if (localDatabaseFieldConfig != null)
          localArrayList.add(localDatabaseFieldConfig);
      }
    if (localArrayList.isEmpty())
    {
      System.out.println("Skipping " + paramClass + " because no annotated fields found");
      return;
    }
    DatabaseTableConfigLoader.write(paramBufferedWriter, new DatabaseTableConfig(paramClass, str, localArrayList));
    paramBufferedWriter.append("#################################");
    paramBufferedWriter.newLine();
    System.out.println("Wrote config for " + paramClass);
  }

  private static boolean a(Class<?> paramClass)
  {
    while (paramClass != null)
    {
      if (paramClass.getAnnotation(DatabaseTable.class) != null);
      while (true)
      {
        return true;
        try
        {
          Field[] arrayOfField = paramClass.getDeclaredFields();
          int i = arrayOfField.length;
          for (int j = 0; ; j++)
          {
            if (j >= i)
              break label111;
            Field localField = arrayOfField[j];
            if ((localField.getAnnotation(DatabaseField.class) != null) || (localField.getAnnotation(ForeignCollectionField.class) != null))
              break;
          }
        }
        catch (Throwable localThrowable1)
        {
          System.err.println("Could not load get delcared fields from: " + paramClass);
          System.err.println("     " + localThrowable1);
          return false;
        }
      }
      try
      {
        label111: Class localClass = paramClass.getSuperclass();
        paramClass = localClass;
      }
      catch (Throwable localThrowable2)
      {
        System.err.println("Could not get super class for: " + paramClass);
        System.err.println("     " + localThrowable2);
        return false;
      }
    }
    return false;
  }

  protected static File findRawDir(File paramFile)
  {
    for (int i = 0; (paramFile != null) && (i < 20); i++)
    {
      File[] arrayOfFile1 = paramFile.listFiles();
      int j = arrayOfFile1.length;
      int k = 0;
      File[] arrayOfFile2;
      if (k < j)
      {
        File localFile2 = arrayOfFile1[k];
        if ((localFile2.getName().equals("res")) && (localFile2.isDirectory()))
        {
          arrayOfFile2 = localFile2.listFiles(new OrmLiteConfigUtil.1());
          if (arrayOfFile2.length != 1);
        }
      }
      for (File localFile1 = arrayOfFile2[0]; ; localFile1 = null)
      {
        if (localFile1 == null)
          break label103;
        return localFile1;
        k++;
        break;
      }
      label103: paramFile = paramFile.getParentFile();
    }
    return null;
  }

  public static void main(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != 1)
      throw new IllegalArgumentException("Main can take a single file-name argument.");
    writeConfigFile(paramArrayOfString[0]);
  }

  public static void writeConfigFile(File paramFile)
  {
    System.out.println("Writing configurations to " + paramFile.getAbsolutePath());
    BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(paramFile), 4096);
    try
    {
      a(localBufferedWriter);
      a(localBufferedWriter, new File("."), 0);
      System.out.println("Done.");
      return;
    }
    finally
    {
      localBufferedWriter.close();
    }
  }

  public static void writeConfigFile(File paramFile, Class<?>[] paramArrayOfClass)
  {
    System.out.println("Writing configurations to " + paramFile.getAbsolutePath());
    writeConfigFile(new FileOutputStream(paramFile), paramArrayOfClass);
  }

  public static void writeConfigFile(OutputStream paramOutputStream, Class<?>[] paramArrayOfClass)
  {
    BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(paramOutputStream), 4096);
    try
    {
      a(localBufferedWriter);
      int i = paramArrayOfClass.length;
      for (int j = 0; j < i; j++)
        a(localBufferedWriter, paramArrayOfClass[j]);
      System.out.println("Done.");
      return;
    }
    finally
    {
      localBufferedWriter.close();
    }
  }

  public static void writeConfigFile(String paramString)
  {
    File localFile = findRawDir(new File("."));
    if (localFile == null)
    {
      System.err.println("Could not find raw directory");
      return;
    }
    writeConfigFile(new File(localFile, paramString));
  }

  public static void writeConfigFile(String paramString, Class<?>[] paramArrayOfClass)
  {
    File localFile = findRawDir(new File("."));
    if (localFile == null)
    {
      System.err.println("Could not find raw directory");
      return;
    }
    writeConfigFile(new File(localFile, paramString), paramArrayOfClass);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteConfigUtil
 * JD-Core Version:    0.6.2
 */