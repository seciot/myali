.class public Lcom/alipay/mobile/longlink/service/a;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/List;

.field private B:Z

.field private C:Ljava/util/concurrent/Future;

.field a:Ljava/util/Timer;

.field b:Ljava/util/Timer;

.field c:Lcom/alipay/mobile/longlink/service/e;

.field d:Lcom/alipay/mobile/longlink/service/f;

.field private f:Landroid/content/Context;

.field private g:Lcom/alipay/mobile/longlink/service/o;

.field private h:Lcom/alipay/mobile/longlink/service/p;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Lcom/alipay/mobile/longlink/b/a/k;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/Object;

.field private t:Lcom/alipay/mobile/longlink/service/k;

.field private u:Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

.field private v:Lcom/alipay/mobile/longlink/b/b/c;

.field private w:Lcom/alipay/mobile/longlink/b/d/e;

.field private x:Lcom/alipay/mobile/longlink/b/d/a;

.field private y:Lcom/alipay/mobile/longlink/b/d/b;

.field private z:Lcom/alipay/mobile/longlink/b/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/alipay/mobile/longlink/b/c/b;->a:I

    iput v0, p0, Lcom/alipay/mobile/longlink/service/a;->n:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->p:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/longlink/service/a;->B:Z

    iput-object v2, p0, Lcom/alipay/mobile/longlink/service/a;->a:Ljava/util/Timer;

    iput-object v2, p0, Lcom/alipay/mobile/longlink/service/a;->b:Ljava/util/Timer;

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/service/LongLinkService;->b()Lcom/alipay/mobile/longlink/service/o;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->g:Lcom/alipay/mobile/longlink/service/o;

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/service/LongLinkService;->c()Lcom/alipay/mobile/longlink/service/p;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->h:Lcom/alipay/mobile/longlink/service/p;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->p:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/longlink/service/a;->q:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/longlink/service/a;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->s:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/mobile/longlink/b/b/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/b/d;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->v:Lcom/alipay/mobile/longlink/b/b/c;

    new-instance v0, Lcom/alipay/mobile/longlink/b/d/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/d/e;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->w:Lcom/alipay/mobile/longlink/b/d/e;

    new-instance v0, Lcom/alipay/mobile/longlink/b/d/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/d/a;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->x:Lcom/alipay/mobile/longlink/b/d/a;

    new-instance v0, Lcom/alipay/mobile/longlink/b/d/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/d/b;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->y:Lcom/alipay/mobile/longlink/b/d/b;

    new-instance v0, Lcom/alipay/mobile/longlink/b/d/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/b/d/d;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->z:Lcom/alipay/mobile/longlink/b/d/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnManager="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/longlink/service/a;)Lcom/alipay/mobile/longlink/b/a/k;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 8

    const/4 v7, 0x4

    sget-object v0, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)..."

    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->h:Lcom/alipay/mobile/longlink/service/p;

    iget-object v1, v0, Lcom/alipay/mobile/longlink/service/p;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/LongLinkService;->c()Lcom/alipay/mobile/longlink/service/p;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/alipay/mobile/longlink/service/p;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/LongLinkService;->c()Lcom/alipay/mobile/longlink/service/p;

    move-result-object v2

    iget v3, v2, Lcom/alipay/mobile/longlink/service/p;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alipay/mobile/longlink/service/p;->a:I

    const/4 v2, 0x4

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Incremented task count to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/alipay/mobile/longlink/service/p;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_1
    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask taskList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/longlink/service/a;->B:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/service/a;->B:Z

    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

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

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask(runnable)...taskSubmitter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/longlink/service/a;->g:Lcom/alipay/mobile/longlink/service/o;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->g:Lcom/alipay/mobile/longlink/service/o;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/longlink/service/o;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->C:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->C:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->h:Lcom/alipay/mobile/longlink/service/p;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/p;->a()V

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)... done"

    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v3, "runTask()..."

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/service/a;->B:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->C:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/a;->A:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/longlink/service/a;->B:Z

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

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

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/a;->g:Lcom/alipay/mobile/longlink/service/o;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/longlink/service/o;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->C:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->C:Ljava/util/concurrent/Future;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->h:Lcom/alipay/mobile/longlink/service/p;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/p;->a()V

    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->h:Lcom/alipay/mobile/longlink/service/p;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/p;->a()V

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v3, "runTask()...done"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
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
    sget-object v3, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v4, "runTask(),taskList is empty"

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V
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

.method static synthetic b(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 4

    sget-boolean v0, Lcom/alipay/mobile/longlink/c/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->t:Lcom/alipay/mobile/longlink/service/k;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->t:Lcom/alipay/mobile/longlink/service/k;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/k;->b()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/longlink/service/a;->k:I

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->t:Lcom/alipay/mobile/longlink/service/k;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/k;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->i:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/longlink/service/a;->n:I

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadLinkConfig() Host:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/longlink/service/a;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sslUsed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", protocolVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/longlink/service/a;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "mobilepmgw.alipay.com"

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->j:Ljava/lang/String;

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/alipay/mobile/longlink/service/a;->k:I

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->f:Landroid/content/Context;

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

    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ActiveNetworkInfo() typeName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->l:Ljava/lang/String;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/longlink/service/a;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkConnectType() proxyHost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", proxyPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/longlink/service/a;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/longlink/service/a;->m:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/alipay/mobile/longlink/service/a;->l:Ljava/lang/String;

    iput v5, p0, Lcom/alipay/mobile/longlink/service/a;->m:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/longlink/service/a;->m:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/longlink/service/a;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/service/a;->m:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/longlink/service/a;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/service/a;->k:I

    return v0
.end method

.method static synthetic h(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/longlink/service/a;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/service/a;->n:I

    return v0
.end method

.method static synthetic j(Lcom/alipay/mobile/longlink/service/a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/longlink/service/a;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()V
    .locals 0

    invoke-static {}, Lcom/alipay/mobile/longlink/service/q;->b()V

    return-void
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private y()Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, "unknown"

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->f:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "wifi"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "wifi"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/a;->u:Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

    return-void
.end method

.method public final a(Lcom/alipay/mobile/longlink/b/a/k;)V
    .locals 4

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setConnection()... called. connection:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    return-void
.end method

.method public final a(Lcom/alipay/mobile/longlink/service/k;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/a;->t:Lcom/alipay/mobile/longlink/service/k;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/a;->p:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/longlink/service/a;->q:Z

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "connect()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/service/c;

    new-instance v1, Lcom/alipay/mobile/longlink/b/b/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/longlink/b/b/b;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/longlink/service/c;-><init>(Lcom/alipay/mobile/longlink/service/a;Lcom/alipay/mobile/longlink/b/b/b;B)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "submitUplinkDataTask()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/service/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alipay/mobile/longlink/service/i;-><init>(Lcom/alipay/mobile/longlink/service/a;Ljava/lang/String;B)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/mobile/longlink/service/a;->r:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "disconnect()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/service/a;->w()V

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/service/a;->u()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/service/a;->q:Z

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "terminatePersistentConnection()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/service/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/service/b;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Lcom/alipay/mobile/longlink/b/a/k;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnection()... called. connection:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->u:Lcom/alipay/mobile/longlink/ILongLinkPacketNotifer;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/service/a;->n:I

    return v0
.end method

.method public final h()Lcom/alipay/mobile/longlink/b/b/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->v:Lcom/alipay/mobile/longlink/b/b/c;

    return-object v0
.end method

.method public final i()Lcom/alipay/mobile/longlink/b/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->w:Lcom/alipay/mobile/longlink/b/d/e;

    return-object v0
.end method

.method public final j()Lcom/alipay/mobile/longlink/b/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->x:Lcom/alipay/mobile/longlink/b/d/a;

    return-object v0
.end method

.method public final k()Lcom/alipay/mobile/longlink/b/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->y:Lcom/alipay/mobile/longlink/b/d/b;

    return-object v0
.end method

.method public final l()Lcom/alipay/mobile/longlink/b/d/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->z:Lcom/alipay/mobile/longlink/b/d/d;

    return-object v0
.end method

.method public final m()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "startReconnectionThread() in ..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/service/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/longlink/service/g;-><init>(Lcom/alipay/mobile/longlink/service/a;B)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected() connection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->o:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/b/a/k;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected() ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final p()Z
    .locals 4

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isRegistered="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/longlink/service/a;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/longlink/service/a;->q:Z

    return v0
.end method

.method public final q()Z
    .locals 5

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/longlink/service/a;->r:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isForceStopped="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final r()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "submitRegisterTask()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/service/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/longlink/service/h;-><init>(Lcom/alipay/mobile/longlink/service/a;B)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s()V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "submitHeartBeatTask()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/service/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/longlink/service/d;-><init>(Lcom/alipay/mobile/longlink/service/a;B)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/longlink/service/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t()V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/service/a;->u()V

    new-instance v0, Lcom/alipay/mobile/longlink/service/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/service/e;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->c:Lcom/alipay/mobile/longlink/service/e;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->c:Lcom/alipay/mobile/longlink/service/e;

    invoke-static {}, Lcom/alipay/mobile/longlink/b/a/m;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected final u()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->c:Lcom/alipay/mobile/longlink/service/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->c:Lcom/alipay/mobile/longlink/service/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/e;->cancel()Z

    iput-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->c:Lcom/alipay/mobile/longlink/service/e;

    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->a:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/service/a;->w()V

    invoke-static {}, Lcom/alipay/mobile/longlink/service/q;->a()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Lcom/alipay/mobile/longlink/service/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/longlink/service/f;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    iput-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->d:Lcom/alipay/mobile/longlink/service/f;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->b:Ljava/util/Timer;

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/a;->d:Lcom/alipay/mobile/longlink/service/f;

    mul-int/lit16 v3, v0, 0x1f4

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mReconnectionTask is scheduled after time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v0, v0, 0x1f4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/service/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "Warning! waitTime has reached to the max limit."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final w()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->d:Lcom/alipay/mobile/longlink/service/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/a;->d:Lcom/alipay/mobile/longlink/service/f;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/f;->cancel()Z

    iput-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->d:Lcom/alipay/mobile/longlink/service/f;

    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/longlink/service/a;->b:Ljava/util/Timer;

    :cond_1
    return-void
.end method
