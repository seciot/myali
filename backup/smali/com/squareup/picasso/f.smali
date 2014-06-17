.class final Lcom/squareup/picasso/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/squareup/picasso/e;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/e;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/picasso/f;->b:Lcom/squareup/picasso/e;

    iput-object p2, p0, Lcom/squareup/picasso/f;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "An unexpected exception occurred"

    iget-object v2, p0, Lcom/squareup/picasso/f;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
