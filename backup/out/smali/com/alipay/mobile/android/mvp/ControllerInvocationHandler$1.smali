.class Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;
.super Ljava/lang/Object;
.source "ControllerInvocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$isUIThreadComeIn:Z

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->this$0:Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;

    iput-object p2, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$args:[Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$isUIThreadComeIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->this$0:Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;

    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$proxy:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$args:[Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->val$isUIThreadComeIn:Z

    #calls: Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->access$000(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 47
    return-void
.end method
