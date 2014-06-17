package com.alipay.mobile.common.rpc;

import com.alipay.mobile.common.logging.PerformanceLog;
import com.alipay.mobile.common.rpc.protocol.Deserializer;
import com.alipay.mobile.common.rpc.protocol.Serializer;
import com.alipay.mobile.common.rpc.transport.RpcCaller;
import com.alipay.mobile.common.utils.ThreadUtil;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicInteger;

public class RpcInvoker
{
  private static final ThreadLocal a = new ThreadLocal();
  private static final ThreadLocal b = new ThreadLocal();
  private byte c = 0;
  private AtomicInteger d;
  private RpcFactory e;

  public RpcInvoker(RpcFactory paramRpcFactory)
  {
    this.e = paramRpcFactory;
    this.d = new AtomicInteger();
  }

  private boolean a(Annotation[] paramArrayOfAnnotation, RpcInvoker.Handle paramHandle)
  {
    int i = paramArrayOfAnnotation.length;
    boolean bool = true;
    for (int j = 0; j < i; j++)
    {
      Annotation localAnnotation = paramArrayOfAnnotation[j];
      Class localClass = localAnnotation.annotationType();
      RpcInterceptor localRpcInterceptor = this.e.findRpcInterceptor(localClass);
      if (localRpcInterceptor == null)
        break;
      bool = paramHandle.handle(localRpcInterceptor, localAnnotation);
      if (!bool)
        break;
    }
    return bool;
  }

  public static void addProtocolArgs(String paramString, Object paramObject)
  {
    if (b.get() == null)
      b.set(new HashMap());
    ((Map)b.get()).put(paramString, paramObject);
  }

  public void batchBegin()
  {
    this.c = 1;
  }

  public FutureTask batchCommit()
  {
    this.c = 0;
    return null;
  }

  public Object invoke(RpcInvocationHandler paramRpcInvocationHandler, Object paramObject, Class paramClass, Method paramMethod, Object[] paramArrayOfObject)
  {
    if (ThreadUtil.checkMainThread())
      throw new IllegalThreadStateException("can't in main thread call rpc .");
    OperationType localOperationType = (OperationType)paramMethod.getAnnotation(OperationType.class);
    Type localType = paramMethod.getGenericReturnType();
    Annotation[] arrayOfAnnotation = paramMethod.getAnnotations();
    a.set(null);
    b.set(null);
    if (localOperationType == null)
      throw new IllegalStateException("OperationType must be set.");
    String str1 = localOperationType.value();
    int i = this.d.incrementAndGet();
    a(arrayOfAnnotation, new RpcInvoker.3(this, paramObject, paramClass, paramMethod, paramArrayOfObject));
    PerformanceLog.getInstance().log("RPC start: operationTypeValue=" + str1);
    try
    {
      if (this.c == 0)
      {
        str1.contains("alipay.user.login");
        Serializer localSerializer = paramRpcInvocationHandler.getSerializer(i, str1, paramArrayOfObject);
        if (b.get() != null)
          localSerializer.setExtParam(b.get());
        String str2 = (String)paramRpcInvocationHandler.getTransport(paramMethod, localSerializer.packet()).call();
        b.set(null);
        Object localObject = paramRpcInvocationHandler.getDeserializer(localType, str2).parser();
        if (localType != Void.TYPE)
          a.set(localObject);
        DefaultMesssageHandler.getInstance().onChangeEvent(EventObject.OnResponse, new Object[] { str1, str2 });
      }
      a(arrayOfAnnotation, new RpcInvoker.1(this, paramObject, paramClass, paramMethod, paramArrayOfObject));
      PerformanceLog.getInstance().log("RPC finish: operationTypeValue=" + str1);
      return a.get();
    }
    catch (RpcException localRpcException)
    {
      do
        localRpcException.setOperationType(str1);
      while (!a(arrayOfAnnotation, new RpcInvoker.2(this, paramObject, paramClass, paramMethod, paramArrayOfObject, localRpcException)));
      throw localRpcException;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.RpcInvoker
 * JD-Core Version:    0.6.2
 */