package com.alipay.mobile.command.manager;

import android.content.Context;
import com.alipay.mobile.command.facade.BaseCommand;
import com.alipay.mobile.command.model.CommandMetaCollect;
import com.alipay.mobile.command.model.CommandMetaWrap;
import com.alipay.mobile.command.util.CommandConfig;
import com.alipay.mobile.command.util.CommandLogUtil;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.CommandUtil.ExtFileBasePathEnum;
import com.alipay.mobile.command.util.CommandUtil.MetaTypeEnum;
import com.alipay.mobile.command.util.SignVerifyTool;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class CommandManager
{
  private static Map<String, CommandManager.WrapBaseCommand> a = new ConcurrentHashMap();
  private static String b = null;
  private static String c = null;

  public static CommandManager.WrapBaseCommand a(String paramString)
  {
    return (CommandManager.WrapBaseCommand)a.get(paramString);
  }

  public static void a(CommandMetaCollect paramCommandMetaCollect, List<CommandMetaWrap> paramList, List<String> paramList1)
  {
    if (paramCommandMetaCollect == null);
    Map localMap;
    try
    {
      paramCommandMetaCollect = new CommandMetaCollect();
      localMap = paramCommandMetaCollect.getCommandWrapMap();
      if ((paramList1 != null) && (paramList1.size() > 0))
      {
        Iterator localIterator3 = paramList1.iterator();
        while (localIterator3.hasNext())
        {
          CommandMetaWrap localCommandMetaWrap3 = (CommandMetaWrap)localMap.remove((String)localIterator3.next());
          if (localCommandMetaWrap3 != null)
          {
            CommandManager.WrapBaseCommand localWrapBaseCommand = (CommandManager.WrapBaseCommand)a.remove(localCommandMetaWrap3.getUuid());
            if (localWrapBaseCommand != null)
              localWrapBaseCommand.a();
          }
        }
      }
    }
    finally
    {
    }
    if ((paramList != null) && (paramList.size() > 0))
    {
      Iterator localIterator2 = paramList.iterator();
      while (localIterator2.hasNext())
      {
        CommandMetaWrap localCommandMetaWrap2 = (CommandMetaWrap)localIterator2.next();
        localMap.put(localCommandMetaWrap2.getUuid(), localCommandMetaWrap2);
      }
    }
    Iterator localIterator1 = localMap.values().iterator();
    label216: label474: label478: 
    while (true)
    {
      CommandMetaWrap localCommandMetaWrap1;
      int k;
      if (localIterator1.hasNext())
      {
        localCommandMetaWrap1 = (CommandMetaWrap)localIterator1.next();
        k = 0;
        if (k >= 3)
          break label474;
        if (CommandUtil.checkFileInMd5(localCommandMetaWrap1.getMd5(), localCommandMetaWrap1.file()))
          a(localCommandMetaWrap1);
      }
      for (int m = 1; ; m = 0)
      {
        if (m != 0)
          break label478;
        Object[] arrayOfObject2 = new Object[4];
        arrayOfObject2[0] = "command md5检查异常.Command:";
        arrayOfObject2[1] = localCommandMetaWrap1;
        arrayOfObject2[2] = "File isExsit:";
        arrayOfObject2[3] = Boolean.valueOf(localCommandMetaWrap1.file().exists());
        Object[] arrayOfObject3 = new Object[4];
        arrayOfObject3[0] = "command md5检查异常.Command:";
        arrayOfObject3[1] = localCommandMetaWrap1;
        arrayOfObject3[2] = "File isExsit:";
        arrayOfObject3[3] = Boolean.valueOf(localCommandMetaWrap1.file().exists());
        CommandLogUtil.upErrorInfo(null, arrayOfObject3);
        break;
        CommandUtil.decoderBase64File(localCommandMetaWrap1.getJarContent(), localCommandMetaWrap1.file());
        k++;
        break label216;
        try
        {
          File[] arrayOfFile = new File(CommandUtil.getDownLoadFilePath(CommandUtil.ExtFileBasePathEnum.CMD)).listFiles();
          if (arrayOfFile != null)
          {
            int i = arrayOfFile.length;
            for (int j = 0; j < i; j++)
            {
              File localFile = arrayOfFile[j];
              if (!paramCommandMetaCollect.containsCommandFileName(localFile.getName()))
                CommandUtil.delFile(localFile, true);
            }
          }
        }
        catch (Throwable localThrowable)
        {
          new Object[] { "清除command失败" };
          CommandUtil.writerMeta(CommandUtil.MetaTypeEnum.COMMAND, paramCommandMetaCollect);
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = "当前内存维护 command:";
          arrayOfObject1[1] = a.keySet();
          return;
        }
      }
    }
  }

  private static void a(CommandMetaWrap paramCommandMetaWrap)
  {
    while (true)
    {
      boolean bool;
      try
      {
        File localFile;
        if ((CommandManager.WrapBaseCommand)a.get(paramCommandMetaWrap.getUuid()) == null)
        {
          bool = SignVerifyTool.verifyApk(SignVerifyTool.getPackageSignatures(CommandConfig.getContext(), CommandConfig.getContext().getPackageName()), paramCommandMetaWrap.file().getAbsolutePath(), "classes.dex");
          if (!bool)
            break label370;
          String str = CommandUtil.fetchCommandClassPath(paramCommandMetaWrap.file().getAbsolutePath());
          if (b == null)
            b = CommandConfig.getContext().getDir("installApkCache", 0).getAbsolutePath();
          if (c == null)
            c = CommandConfig.getContext().getDir("installApkOtpCache", 0).getAbsolutePath();
          localFile = new File(b, paramCommandMetaWrap.getUuid() + ".apk");
          if ((localFile.exists()) || (CommandUtil.copyFile(paramCommandMetaWrap.file().getAbsolutePath(), localFile.getAbsolutePath())))
          {
            DexClassLoader localDexClassLoader = new DexClassLoader(localFile.getAbsolutePath(), c, null, CommandManager.class.getClassLoader());
            a.put(paramCommandMetaWrap.getUuid(), new CommandManager.WrapBaseCommand(localDexClassLoader, (BaseCommand)localDexClassLoader.loadClass(str).newInstance(), paramCommandMetaWrap.getName()));
            Object[] arrayOfObject1 = new Object[4];
            arrayOfObject1[0] = "加载command安装包成功.detail:";
            arrayOfObject1[1] = paramCommandMetaWrap.getUuid();
            arrayOfObject1[2] = ",name:";
            arrayOfObject1[3] = paramCommandMetaWrap.getName();
          }
        }
        else
        {
          return;
        }
        Object[] arrayOfObject2 = new Object[6];
        arrayOfObject2[0] = "加载command安装包失败.detail:";
        arrayOfObject2[1] = paramCommandMetaWrap.getUuid();
        arrayOfObject2[2] = ",name:";
        arrayOfObject2[3] = paramCommandMetaWrap.getName();
        arrayOfObject2[4] = ",targetFileIsExisit:";
        arrayOfObject2[5] = Boolean.valueOf(localFile.exists());
        continue;
      }
      catch (Throwable localThrowable)
      {
        new Object[] { "加载command安装包异常.", paramCommandMetaWrap };
        CommandLogUtil.upErrorInfo(localThrowable, new Object[] { "加载command安装包异常.", paramCommandMetaWrap });
        continue;
      }
      finally
      {
      }
      label370: Object[] arrayOfObject3 = new Object[4];
      arrayOfObject3[0] = "apk verify signInfo error. apkFile:";
      arrayOfObject3[1] = paramCommandMetaWrap.file();
      arrayOfObject3[2] = ",verify:";
      arrayOfObject3[3] = Boolean.valueOf(bool);
      Object[] arrayOfObject4 = new Object[4];
      arrayOfObject4[0] = "apk verify signInfo error. apkFile:";
      arrayOfObject4[1] = paramCommandMetaWrap.file();
      arrayOfObject4[2] = ",verify:";
      arrayOfObject4[3] = Boolean.valueOf(bool);
      CommandLogUtil.upErrorInfo(null, arrayOfObject4);
    }
  }

  public static boolean a()
  {
    return (a != null) && (a.size() != 0);
  }

  public static boolean a(List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
      return true;
    return a.keySet().containsAll(paramList);
  }

  public static CommandManager.WrapBaseCommand b(String paramString)
  {
    return (CommandManager.WrapBaseCommand)a.get(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.CommandManager
 * JD-Core Version:    0.6.2
 */