.class public Lcom/alipay/android/mini/window/MiniWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/lib/plusin/ui/IWindowManager;
.implements Lcom/alipay/android/mini/event/OnFormEventListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/android/app/data/BizUiData;

.field private e:Lcom/alipay/android/app/data/DataProcessor;

.field private f:Lcom/alipay/android/mini/window/IFormShower;

.field private g:Lcom/alipay/android/mini/window/IUIForm;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->dispose()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p1, :cond_2

    :cond_1
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "can not receive activity onload event"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->e:Lcom/alipay/android/app/data/DataProcessor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->e:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "can not use exit cmd"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 5

    const-class v0, Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    instance-of v0, v0, Lcom/alipay/android/mini/window/MiniPayActivity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->a()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->b()Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/android/app/IRemoteCallback;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-class v0, Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a(Ljava/lang/Class;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v3

    const-string/jumbo v4, "on start container"

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/MiniWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/mini/window/MiniWindowManager;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/window/MiniWindowManager;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/app/data/DataProcessor;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->e:Lcom/alipay/android/app/data/DataProcessor;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IUIForm;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IFormShower;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/mini/window/MiniWindowManager;)Lcom/alipay/android/mini/window/IUIForm;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {p1}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->e:Lcom/alipay/android/app/data/DataProcessor;

    return-void
.end method

.method public final a(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/lib/plusin/ui/WindowData;)V
    .locals 5

    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->c()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->b()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/mini/window/IFormShower;->a([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->l()V

    const-string/jumbo v2, "form_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    :cond_3
    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->k()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/IUIForm;->b(I)V

    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->m()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/window/IUIForm;->a(I)V

    :cond_4
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->a(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->b()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/mini/window/z;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/mini/window/z;-><init>(Lcom/alipay/android/mini/window/MiniWindowManager;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->l()Lcom/alipay/android/mini/event/OnElementEventListener;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->d:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/android/mini/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/alipay/android/mini/window/UIFormDialog;

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-direct {v0, v3}, Lcom/alipay/android/mini/window/UIFormDialog;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    if-nez v3, :cond_2

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/alipay/android/mini/window/UIFormWindow;

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-direct {v0, v3}, Lcom/alipay/android/mini/window/UIFormWindow;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    goto :goto_1

    :sswitch_3
    new-instance v0, Lcom/alipay/android/mini/window/UIFormToast;

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-direct {v0, v3}, Lcom/alipay/android/mini/window/UIFormToast;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/alipay/android/mini/window/UIFormError;

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-direct {v0, v3}, Lcom/alipay/android/mini/window/UIFormError;-><init>(Lcom/alipay/android/app/data/BizUiData;)V

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->a()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "onload"

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/window/IUIForm;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)Z

    invoke-static {v3}, Lcom/alipay/android/mini/window/IUIForm;->c(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->b()V

    iget-object v4, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/window/IUIForm;->a(Lcom/alipay/android/mini/window/IFormShower;)V

    invoke-static {v3}, Lcom/alipay/android/mini/window/IUIForm;->c(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v4, "subforms"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->b(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/window/IUIForm;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/mini/window/x;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/android/mini/window/x;-><init>(Lcom/alipay/android/mini/window/MiniWindowManager;Lcom/alipay/android/mini/window/IUIForm;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_7
    invoke-static {v3}, Lcom/alipay/android/mini/window/IUIForm;->c(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v4, "subforms"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/window/IUIForm;->b(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/window/IUIForm;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->b()V

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/window/IUIForm;->a(Lcom/alipay/android/mini/window/IFormShower;)V

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/mini/window/y;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/android/mini/window/y;-><init>(Lcom/alipay/android/mini/window/MiniWindowManager;Lcom/alipay/android/mini/window/IUIForm;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    const-string/jumbo v1, "msg"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/mini/window/IFormShower;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->g()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->e()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->d:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->l()Lcom/alipay/android/mini/event/OnElementEventListener;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/event/MiniEventArgs;

    sget-object v2, Lcom/alipay/android/mini/event/ActionType;->o:Lcom/alipay/android/mini/event/ActionType;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/event/MiniEventArgs;-><init>(Lcom/alipay/android/mini/event/ActionType;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/android/mini/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_4
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xa -> :sswitch_0
        0x4 -> :sswitch_6
        0x6 -> :sswitch_6
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/alipay/android/app/data/DataProcessor;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWindowManager;->b()V

    :cond_1
    instance-of v0, p2, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/ac;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/ac;-><init>(Lcom/alipay/android/mini/window/MiniWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    instance-of v0, p2, Lcom/alipay/android/app/exception/ValifyException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/ab;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/mini/window/ab;-><init>(Lcom/alipay/android/mini/window/MiniWindowManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/aa;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/mini/window/aa;-><init>(Lcom/alipay/android/mini/window/MiniWindowManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/alipay/android/mini/window/IFormShower;

    iput-object p1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    invoke-interface {v0, p0}, Lcom/alipay/android/mini/window/IFormShower;->a(Lcom/alipay/android/mini/event/OnFormEventListener;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    .locals 3

    const/4 v0, 0x0

    check-cast p1, Lcom/alipay/android/mini/window/IFormShower;

    check-cast p2, Lcom/alipay/android/mini/event/MiniEventArgs;

    if-eqz p2, :cond_0

    sget-object v1, Lcom/alipay/android/mini/window/ad;->a:[I

    invoke-virtual {p2}, Lcom/alipay/android/mini/event/MiniEventArgs;->getEventType()Lcom/alipay/android/mini/event/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/mini/event/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->l()Lcom/alipay/android/mini/event/OnElementEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/mini/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->f()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->e:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->g:Lcom/alipay/android/mini/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/IUIForm;->l()Lcom/alipay/android/mini/event/OnElementEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/mini/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->e:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataProcessor;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->f:Lcom/alipay/android/mini/window/IFormShower;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/alipay/android/mini/window/IFormShower;->a([Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->e:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/w;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/w;-><init>(Lcom/alipay/android/mini/window/MiniWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
