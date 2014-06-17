.class public abstract Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Landroid/app/Activity;

.field private e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/widget/FrameLayout;

.field private n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private o:Landroid/widget/ScrollView;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method private a(Landroid/app/Activity;I)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    iput p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    :cond_0
    return-void
.end method

.method private varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->excute([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    :cond_1
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->showNetworkErrorTip([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    :cond_3
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    :cond_5
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_1
    throw v0

    :cond_6
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    :cond_7
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_3

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->ext_flow_tip_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->hideTipView()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public varargs abstract excute([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TResult;"
        }
    .end annotation
.end method

.method public getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServiceByInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hideTipView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    return v0
.end method

.method public isShowNetworkErrorView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    return v0
.end method

.method public isShowProgressDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    return v0
.end method

.method public varargs onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public runOnUiThreadDelay(Ljava/lang/Runnable;J)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    return-void
.end method

.method public setShowNetworkErrorView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    return-void
.end method

.method public setShowProgressDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    return-void
.end method

.method public setTipMargin(IIII)V
    .locals 0

    iput p3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    iput p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    iput p4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    iput p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    return-void
.end method

.method public showEmptyTip(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs showNetworkErrorTip([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showWarningTip(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs start([Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
