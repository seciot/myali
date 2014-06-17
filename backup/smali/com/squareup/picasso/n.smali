.class final Lcom/squareup/picasso/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/squareup/picasso/m;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/m;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
