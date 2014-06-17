package com.j256.ormlite.field;

import com.j256.ormlite.field.types.EnumStringType;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class DataPersisterManager
{
  private static final DataPersister DEFAULT_ENUM_PERSISTER = EnumStringType.getSingleton();
  private static final Map<String, DataPersister> builtInMap;
  private static List<DataPersister> registeredPersisters = null;

  static
  {
    builtInMap = new HashMap();
    DataType[] arrayOfDataType = DataType.values();
    int i = arrayOfDataType.length;
    for (int j = 0; j < i; j++)
    {
      DataPersister localDataPersister = arrayOfDataType[j].getDataPersister();
      if (localDataPersister != null)
      {
        for (Class localClass : localDataPersister.getAssociatedClasses())
          builtInMap.put(localClass.getName(), localDataPersister);
        if (localDataPersister.getAssociatedClassNames() != null)
          for (String str : localDataPersister.getAssociatedClassNames())
            builtInMap.put(str, localDataPersister);
      }
    }
  }

  public static void clear()
  {
    registeredPersisters = null;
  }

  public static DataPersister lookupForField(Field paramField)
  {
    DataPersister localDataPersister;
    if (registeredPersisters != null)
    {
      Iterator localIterator = registeredPersisters.iterator();
      if (localIterator.hasNext())
      {
        localDataPersister = (DataPersister)localIterator.next();
        if (!localDataPersister.isValidForField(paramField));
      }
    }
    label86: 
    do
    {
      return localDataPersister;
      Class[] arrayOfClass = localDataPersister.getAssociatedClasses();
      int i = arrayOfClass.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label86;
        Class localClass = arrayOfClass[j];
        if (paramField.getType() == localClass)
          break;
      }
      break;
      localDataPersister = (DataPersister)builtInMap.get(paramField.getType().getName());
    }
    while (localDataPersister != null);
    if (paramField.getType().isEnum())
      return DEFAULT_ENUM_PERSISTER;
    return null;
  }

  public static void registerDataPersisters(DataPersister[] paramArrayOfDataPersister)
  {
    ArrayList localArrayList = new ArrayList();
    if (registeredPersisters != null)
      localArrayList.addAll(registeredPersisters);
    int i = paramArrayOfDataPersister.length;
    for (int j = 0; j < i; j++)
      localArrayList.add(paramArrayOfDataPersister[j]);
    registeredPersisters = localArrayList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.DataPersisterManager
 * JD-Core Version:    0.6.2
 */