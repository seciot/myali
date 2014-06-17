.class public Lcom/alipay/android/app/data/MspBizUnit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/data/BizDataUnit;


# instance fields
.field private a:Lcom/alipay/android/app/data/h;

.field private b:Lcom/alipay/android/app/script/IDataScriptable;

.field private c:Lcom/alipay/android/app/script/ITidScriptable;

.field private d:Lcom/alipay/android/app/data/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/data/BizData;)V
    .locals 6

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/monitor/TaskManager;->a()Lcom/alipay/android/app/monitor/TaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/monitor/TaskManager;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init window time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->i()V

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v3

    const-string/jumbo v4, "init window template time"

    invoke-virtual {v3, v1, v2, v4}, Lcom/alipay/android/app/monitor/MonitorThread;->c(JLjava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/data/h;

    invoke-direct {v1}, Lcom/alipay/android/app/data/h;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/h;

    new-instance v1, Lcom/alipay/android/app/data/e;

    invoke-direct {v1}, Lcom/alipay/android/app/data/e;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    new-instance v1, Lcom/alipay/android/app/data/EventTidScriptable;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/data/EventTidScriptable;-><init>(Lcom/alipay/android/app/data/DataSource;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    new-instance v1, Lcom/alipay/android/app/data/f;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/android/app/data/f;-><init>(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/app/data/InteractionData;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/f;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/h;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/f;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/f;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/f;->a(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/h;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/h;->a(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    return-void
.end method

.method public final b(Lcom/alipay/android/app/data/BizData;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/monitor/TaskManager;->a()Lcom/alipay/android/app/monitor/TaskManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/monitor/TaskManager;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a()V

    invoke-static {}, Lcom/alipay/android/app/monitor/TaskManager;->a()Lcom/alipay/android/app/monitor/TaskManager;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/monitor/TaskManager;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/monitor/TaskManager;->a()Lcom/alipay/android/app/monitor/TaskManager;

    move-result-object v0

    const-string/jumbo v1, "push"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/monitor/TaskManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/h;

    iput-object v2, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    iput-object v2, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    iput-object v2, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/f;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
