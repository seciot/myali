.class final Lcom/alipay/pushsdk/c/a/j;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/c/a/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/i;->b(Landroid/content/Context;)V

    return-void
.end method
