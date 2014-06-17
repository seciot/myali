.class public interface abstract Lcom/alipay/mobile/common/rpc/RpcInterceptor;
.super Ljava/lang/Object;


# virtual methods
.method public abstract exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z
.end method

.method public abstract postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z
.end method

.method public abstract preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z
.end method
