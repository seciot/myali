.class public Lcom/alipay/pushsdk/push/j;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Landroid/app/PendingIntent;

.field private B:Landroid/app/PendingIntent;

.field private C:Landroid/os/PowerManager$WakeLock;

.field private D:I

.field private E:J

.field a:Ljava/util/Timer;

.field b:Ljava/util/Timer;

.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/pushsdk/push/c;

.field private f:Lcom/alipay/pushsdk/push/d;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/alipay/pushsdk/push/a/m;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/alipay/pushsdk/push/b/c;

.field private r:Lcom/alipay/pushsdk/push/d/e;

.field private s:Lcom/alipay/pushsdk/push/d/a;

.field private t:Lcom/alipay/pushsdk/push/d/b;

.field private u:Lcom/alipay/pushsdk/push/d/d;

.field private v:Landroid/os/Handler;

.field private w:Ljava/util/List;

.field private x:Z

.field private y:Ljava/util/concurrent/Future;

.field private z:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/pushsdk/push/j;->l:I

    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/push/j;->m:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->o:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/j;->x:Z

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->a:Ljava/util/Timer;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->b:Ljava/util/Timer;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->A:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->B:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/j;->D:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/j;->E:J

    iput-object p1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/NotificationService;->b()Lcom/alipay/pushsdk/push/c;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->e:Lcom/alipay/pushsdk/push/c;

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->f:Lcom/alipay/pushsdk/push/d;

    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/j;->p:Z

    new-instance v0, Lcom/alipay/pushsdk/push/b/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/b/d;-><init>(Lcom/alipay/pushsdk/push/j;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->q:Lcom/alipay/pushsdk/push/b/c;

    new-instance v0, Lcom/alipay/pushsdk/push/d/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/e;-><init>(Lcom/alipay/pushsdk/push/j;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->r:Lcom/alipay/pushsdk/push/d/e;

    new-instance v0, Lcom/alipay/pushsdk/push/d/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/a;-><init>(Lcom/alipay/pushsdk/push/j;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->s:Lcom/alipay/pushsdk/push/d/a;

    new-instance v0, Lcom/alipay/pushsdk/push/d/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/b;-><init>(Lcom/alipay/pushsdk/push/j;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->t:Lcom/alipay/pushsdk/push/d/b;

    new-instance v0, Lcom/alipay/pushsdk/push/d/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/d;-><init>(Lcom/alipay/pushsdk/push/j;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->u:Lcom/alipay/pushsdk/push/d/d;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->v:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/alipay/pushsdk/push/j;->D:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/j;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/j;->E:J

    sget-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PushManager() getLastConnectedTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/pushsdk/push/j;->E:J

    invoke-static {v2, v3}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/push/o;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/o;->d()Z

    move-result v0

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PushManager() flagTraceLog="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/pushsdk/push/a/o;->c(Z)V

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pushManager="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private A()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->B:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->B:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/j;)Lcom/alipay/pushsdk/push/a/m;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 8

    const/4 v7, 0x4

    sget-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)..."

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->f:Lcom/alipay/pushsdk/push/d;

    iget-object v1, v0, Lcom/alipay/pushsdk/push/d;->b:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/d;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/alipay/pushsdk/push/d;->b:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/d;

    move-result-object v2

    iget v3, v2, Lcom/alipay/pushsdk/push/d;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alipay/pushsdk/push/d;->a:I

    const/4 v2, 0x4

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Incremented task count to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/alipay/pushsdk/push/d;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_1
    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask taskList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/j;->x:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/j;->x:Z

    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask() runnable is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask(runnable)...taskSubmitter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/j;->e:Lcom/alipay/pushsdk/push/c;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->e:Lcom/alipay/pushsdk/push/c;

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->y:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->y:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->f:Lcom/alipay/pushsdk/push/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/d;->a()V

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)... done"

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v3, "runTask()..."

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/j;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->y:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/j;->w:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/pushsdk/push/j;->x:Z

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "runTask() runnable is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/j;->e:Lcom/alipay/pushsdk/push/c;

    invoke-virtual {v3, v0}, Lcom/alipay/pushsdk/push/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->y:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->y:Ljava/util/concurrent/Future;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->f:Lcom/alipay/pushsdk/push/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/d;->a()V

    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->f:Lcom/alipay/pushsdk/push/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/d;->a()V

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v3, "runTask()...done"

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x5

    :try_start_5
    sget-object v3, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v4, "runTask(),taskList is empty"

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method static synthetic b(Lcom/alipay/pushsdk/push/j;)V
    .locals 9

    new-instance v0, Lcom/alipay/pushsdk/c/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c/b;->a()Lcom/alipay/pushsdk/data/a;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->h:Ljava/lang/String;

    iget v1, v0, Lcom/alipay/pushsdk/data/a;->c:I

    iput v1, p0, Lcom/alipay/pushsdk/push/j;->i:I

    iget v1, v0, Lcom/alipay/pushsdk/data/a;->f:I

    iput v1, p0, Lcom/alipay/pushsdk/push/j;->m:I

    iget-object v1, v0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/j;->g:Ljava/lang/String;

    iget v0, v0, Lcom/alipay/pushsdk/data/a;->g:I

    iput v0, p0, Lcom/alipay/pushsdk/push/j;->l:I

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->v:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    add-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "NotificationService_loadPushConfig: pushHost:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/pushsdk/push/j;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", pushPort:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/alipay/pushsdk/push/j;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", protocolVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/alipay/pushsdk/push/j;->m:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPushConfig() pushHost:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/j;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pushPort:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/pushsdk/push/j;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", protocolVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/pushsdk/push/j;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/pushsdk/push/j;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ActiveNetworkInfo() typeName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->j:Ljava/lang/String;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/push/j;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkConnectType() proxyHost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", proxyPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/push/j;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/j;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/alipay/pushsdk/push/j;->j:Ljava/lang/String;

    iput v5, p0, Lcom/alipay/pushsdk/push/j;->k:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/j;->k:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/pushsdk/push/j;)I
    .locals 1

    iget v0, p0, Lcom/alipay/pushsdk/push/j;->k:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/pushsdk/push/j;)I
    .locals 1

    iget v0, p0, Lcom/alipay/pushsdk/push/j;->i:I

    return v0
.end method

.method static synthetic h(Lcom/alipay/pushsdk/push/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/pushsdk/push/j;)I
    .locals 1

    iget v0, p0, Lcom/alipay/pushsdk/push/j;->l:I

    return v0
.end method

.method static synthetic j(Lcom/alipay/pushsdk/push/j;)I
    .locals 1

    iget v0, p0, Lcom/alipay/pushsdk/push/j;->m:I

    return v0
.end method

.method static synthetic k(Lcom/alipay/pushsdk/push/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static q()V
    .locals 0

    invoke-static {}, Lcom/alipay/pushsdk/push/p;->c()V

    return-void
.end method

.method static synthetic z()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final a(J)V
    .locals 2

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/i;->a(J)V

    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/a/m;)V
    .locals 4

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setConnection()... called. connection:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/j;->o:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/pushsdk/push/j;->p:Z

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v1, "connect()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/j;->w()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/pushsdk/push/a/l;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/a/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v1, "connect() ConnectionPolicy is false."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/l;

    new-instance v1, Lcom/alipay/pushsdk/push/b/b;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/push/b/b;-><init>(Lcom/alipay/pushsdk/push/j;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/pushsdk/push/l;-><init>(Lcom/alipay/pushsdk/push/j;Lcom/alipay/pushsdk/push/b/b;B)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/j;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 2

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/i;->b(J)V

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v2, "disconnect()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/j;->p:Z

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/j;->A()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->A:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->A:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v2, "terminatePersistentConnection()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/push/k;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/k;-><init>(Lcom/alipay/pushsdk/push/j;)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/j;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/pushsdk/push/j;->c(J)V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/j;->y()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final c(J)V
    .locals 4

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/i;->c(J)V

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PushManager() setLastLostedTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Lcom/alipay/pushsdk/push/a/m;
    .locals 4

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnection()... called. connection:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    return-object v0
.end method

.method public final d(J)V
    .locals 2

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/i;->d(J)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .locals 2

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 2

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v2, "PushManager() getPushTrigger enter."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/alipay/pushsdk/push/j;->m:I

    return v0
.end method

.method public final k()Lcom/alipay/pushsdk/push/b/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->q:Lcom/alipay/pushsdk/push/b/c;

    return-object v0
.end method

.method public final l()Lcom/alipay/pushsdk/push/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->r:Lcom/alipay/pushsdk/push/d/e;

    return-object v0
.end method

.method public final m()Lcom/alipay/pushsdk/push/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->s:Lcom/alipay/pushsdk/push/d/a;

    return-object v0
.end method

.method public final n()Lcom/alipay/pushsdk/push/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->t:Lcom/alipay/pushsdk/push/d/b;

    return-object v0
.end method

.method public final o()Lcom/alipay/pushsdk/push/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->u:Lcom/alipay/pushsdk/push/d/d;

    return-object v0
.end method

.method public final p()V
    .locals 18

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v3, "startReconnectionThread()... ReconnectionTask"

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/a/m;->f()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/pushsdk/push/j;->p:Z

    invoke-direct/range {p0 .. p0}, Lcom/alipay/pushsdk/push/j;->A()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/push/j;->o:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/push/j;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".push.action.CONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/pushsdk/push/j;->A:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    const/4 v12, 0x0

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->d()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/pushsdk/push/j;->h()J

    move-result-wide v15

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getReconnTimer lastTryConnectTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", lastConnectedTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13, v14}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-lez v1, :cond_3

    cmp-long v1, v13, v15

    if-ltz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v3, v1, v13

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->c()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_1

    const-wide/16 v1, 0x0

    :cond_1
    const/4 v5, 0x3

    sget-object v6, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getReconnTimer lostedTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", curWaitTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-wide v9, v1

    :goto_0
    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->m:Ljava/lang/String;

    sget-object v2, Lcom/alipay/pushsdk/c/a/d;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "XmppManager_getReconnTimer:curWaitTime="

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v17, " lastConnectedTime="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v13, v14}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, " lastTryConnectTime="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v15 .. v16}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/push/j;->A:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    invoke-static {}, Lcom/alipay/pushsdk/push/p;->b()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getReconnTimer reconnectionTask.waiting="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-wide v9, v1

    goto :goto_0
.end method

.method public final r()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isConnected() connection="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->n:Lcom/alipay/pushsdk/push/a/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/a/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->d()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->e()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isConnected() del="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/j;->p:Z

    return v0
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v2, "submitRegisterTask()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/push/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/pushsdk/push/n;-><init>(Lcom/alipay/pushsdk/push/j;B)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    const-string/jumbo v2, "submitHeartBeatTask()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/push/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/pushsdk/push/m;-><init>(Lcom/alipay/pushsdk/push/j;B)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.KEEPLIVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-static {v1, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->B:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->z:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->l()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/j;->w()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->k()I

    move-result v0

    int-to-long v0, v0

    :cond_0
    const/4 v3, 0x3

    sget-object v4, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getPushKeepAliveInterval() keepAliveTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v0, v3

    iget-object v3, p0, Lcom/alipay/pushsdk/push/j;->B:Landroid/app/PendingIntent;

    invoke-virtual {v2, v7, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public final w()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/pushsdk/push/i;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/i;->a()J

    move-result-wide v1

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->f()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/pushsdk/c/j;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isFrontPolicy ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->d:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/pushsdk/push/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/j;->C:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
