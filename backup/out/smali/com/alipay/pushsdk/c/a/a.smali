.class public abstract Lcom/alipay/pushsdk/c/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Ljava/io/PrintWriter;

.field protected b:Ljava/lang/String;

.field private d:Lcom/alipay/pushsdk/c/e;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/c/a/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/c/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/alipay/pushsdk/c/e;

    const-string/jumbo v1, "BaseLogger"

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/c/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->d:Lcom/alipay/pushsdk/c/e;

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/pushsdk/c/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/c/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->a:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->a:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/alipay/pushsdk/c/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->a:Ljava/io/PrintWriter;

    const-string/jumbo v1, "##"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/a;->d:Lcom/alipay/pushsdk/c/e;

    new-instance v1, Lcom/alipay/pushsdk/c/a/b;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/c/a/b;-><init>(Lcom/alipay/pushsdk/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/e;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
